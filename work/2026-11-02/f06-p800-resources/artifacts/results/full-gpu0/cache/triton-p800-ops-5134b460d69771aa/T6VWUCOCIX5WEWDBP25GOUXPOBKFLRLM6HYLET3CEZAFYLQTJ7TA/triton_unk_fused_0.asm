	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/qz" "cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py"
	.loc	1 22 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:22:0
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
	ori r5, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r5
	sync_group
	storeli.w r8, -372(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	storeli.w r5, -376(r30)                 # 4-byte Folded Spill
	csr_set csr3, r5
	sync_group
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_175
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r7,  -372(r30)                 # 4-byte Folded Reload
	addli r10, zero, 1
	load.d r[5:6], 8(r30)
	addli r11, r30, -128
	lui r28, 522240
	vxor.u.mz vr0{mr1}, vr0, vr0
	div.s r4, r1, r4
	addli r7, r7, 1040
	storeli.w r7, -388(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	storeli.w r7, -396(r30)                 # 4-byte Folded Spill
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -264(r30)                 # 4-byte Folded Spill
	ori r7, r4, 1
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	storeli.w r7, -400(r30)                 # 4-byte Folded Spill
	ori r7, r4, 2
	storeli.w r7, -404(r30)                 # 4-byte Folded Spill
	ori r7, r4, 3
	storeli.w r7, -408(r30)                 # 4-byte Folded Spill
	ori r7, r4, 4
	storeli.w r7, -412(r30)                 # 4-byte Folded Spill
	ori r7, r4, 5
	storeli.w r7, -416(r30)                 # 4-byte Folded Spill
	ori r7, r4, 6
	storeli.w r7, -420(r30)                 # 4-byte Folded Spill
	ori r7, r4, 7
	storeli.w r7, -424(r30)                 # 4-byte Folded Spill
	ori r7, r4, 8
	storeli.w r7, -428(r30)                 # 4-byte Folded Spill
	ori r7, r4, 9
	storeli.w r7, -432(r30)                 # 4-byte Folded Spill
	ori r7, r4, 10
	storeli.w r7, -436(r30)                 # 4-byte Folded Spill
	ori r7, r4, 11
	storeli.w r7, -440(r30)                 # 4-byte Folded Spill
	ori r7, r4, 12
	storeli.w r7, -444(r30)                 # 4-byte Folded Spill
	ori r7, r4, 13
	storeli.w r7, -448(r30)                 # 4-byte Folded Spill
	ori r7, r4, 14
	storeli.w r7, -452(r30)                 # 4-byte Folded Spill
	ori r7, r4, 15
	storeli.w r7, -456(r30)                 # 4-byte Folded Spill
	sext_int2long r[7:8], r4
	lui r4, 1048575
	ori r4, r4, 3840
	sll.d r[7:8], r[7:8], r10
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[7:8]
	addli r6, r30, -192
	addli r7, zero, 32
	add.s r2, r3, r2
	store.d r[4:5], -464(r30)               # 8-byte Folded Spill
	addli r1, r2, 1040
	storeli.w r2, -360(r30)                 # 4-byte Folded Spill
	lui r2, 524287
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r1, r1, 4095
	storeli.w r1, -196(r30)                 # 4-byte Folded Spill
	ori r1, r2, 4095
	lui r2, 239665
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	ori r8, r1, 4095
	ori r1, r2, 623
	storeli.w r1, -468(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	storeli.w r8, -200(r30)                 # 4-byte Folded Spill
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 69 49 prologue_end            # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	addli r7, zero, 2
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
	or r2, r7, r2
	store.h r1, -100(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[19:20], -328(r30)              # 8-byte Folded Reload
	or r1, r7, r1
	s_lm2gm r1, r11, 0(r[19:20])
	load.d r[19:20], -336(r30)              # 8-byte Folded Reload
	addli r1, r11, 4
	s_lm2gm r2, r3, 0(r[19:20])
	lui r2, 983040
	load.d r[19:20], -312(r30)              # 8-byte Folded Reload
	lui r3, 983040
	or r2, r7, r2
	or r3, r7, r3
	s_lm2gm r2, r1, 0(r[19:20])
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[19:20], -304(r30)              # 8-byte Folded Reload
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	lui r4, 983040
	addli r1, r11, 8
	addli r2, r11, 10
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[19:20])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[21:22])
	lui r4, 983040
	addli r1, r11, 12
	addli r2, r11, 14
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[23:24])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[25:26])
	lui r4, 983040
	addli r1, r11, 16
	addli r2, r11, 18
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[5:6])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[15:16])
	lui r4, 983040
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	addli r1, r11, 20
	addli r2, r11, 22
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[5:6])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[9:10])
	lui r4, 983040
	addli r1, r11, 24
	load.d r[5:6], -280(r30)                # 8-byte Folded Reload
	addli r2, r11, 26
	loadli.w r9,  -268(r30)                 # 4-byte Folded Reload
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[27:28])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[5:6])
	lui r4, 983040
	addli r1, r11, 28
	addli r2, r11, 30
	addli r6, r30, -192
	lui r28, 522240
	or r3, r7, r3
	or r4, r7, r4
	addli r7, zero, 32
	s_lm2gm r3, r1, 0(r[12:13])
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	s_lm2gm r4, r2, 0(r[17:18])
	mfence { lm }
	add.s r9, r9, r1
	loadli.w r1,  -380(r30)                 # 4-byte Folded Reload
	blt.s r9, r1, .LBB0_3
	j .LBB0_175
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 49 is_stmt 0                # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:47
	add.s r2, r6, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 47 is_stmt 0                # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:47
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 38 30                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:30
	addli r5, zero, 1
	storeli.w r9, -268(r30)                 # 4-byte Folded Spill
	.loc	1 38 47                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:47
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r17, zero, 1
	.loc	1 39 37 is_stmt 1               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r17
	div.s r1, r9, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:29:23
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	.loc	1 38 42                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:42
	slli r2, r1, 10
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	.loc	1 38 37 is_stmt 0               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:37
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	storeli.w r2, -288(r30)                 # 4-byte Folded Spill
	add.s r1, r2, r1
	.loc	1 38 47                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:47
	lui r2, 983040
	.loc	1 38 30                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 38 47                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:47
	or r2, r7, r2
	.loc	1 39 37 is_stmt 1               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:30
	sll.d r[8:9], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:39:37
	or r1, r7, r1
	store.d r[8:9], -280(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:30
	add.ul r[3:4], r[3:4], r[8:9]
	.loc	1 38 47 is_stmt 0               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:47
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:39:37
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r11, 0(r[2:3])
	.loc	1 38 47                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:38:47
	mfence { lm }
	load.hu r3, -192(r30)
	load.hu r4, -190(r30)
	load.hu r2, -166(r30)
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
	load.hu r16, -162(r30)
	bfloat2float.rn r3, r3
	bfloat2float.rn r2, r2
	bfloat2float.rn r1, r1
	vor.u.mh vr1{mr2}, r3, vr1
	bfloat2float.rn r3, r4
	addli r4, zero, 4
	vmmov mr0, r4
	addli r4, zero, 8
	vor.u.mh vr1{mr3}, r3, vr1
	bfloat2float.rn r3, r5
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r6
	vmmov mr0, r4
	addli r4, zero, 16
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r7
	vmmov mr0, r4
	addli r4, zero, 32
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r8
	vmmov mr0, r4
	addli r4, zero, 64
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r9
	vmmov mr0, r4
	addli r4, zero, 128
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r10
	vmmov mr0, r4
	addli r4, zero, 256
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r11
	vmmov mr0, r4
	addli r4, zero, 512
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r12
	vmmov mr0, r4
	addli r4, zero, 1024
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r13
	vmmov mr0, r4
	addli r4, zero, 2048
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r14
	vmmov mr0, r4
	addli r4, zero, 4096
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r15
	vmmov mr0, r4
	vor.u.mh vr1{mr0}, r3, vr1
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
	.loc	1 39 37                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:39:37
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
	.loc	1 44 18                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:44:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r7,  -64(r30)
	loadli.w r25,  -60(r30)
	loadli.w r11,  -56(r30)
	loadli.w r1,  -52(r30)
	loadli.w r6,  -48(r30)
	loadli.w r3,  -44(r30)
	loadli.w r12,  -40(r30)
	loadli.w r17,  -36(r30)
	loadli.w r21,  -32(r30)
	loadli.w r27,  -28(r30)
	loadli.w r15,  -368(r30)                # 4-byte Folded Reload
	loadli.w r22,  -24(r30)
	loadli.w r19,  -20(r30)
	loadli.w r18,  -16(r30)
	loadli.w r16,  -12(r30)
	loadli.w r14,  -8(r30)
	loadli.w r13,  -4(r30)
	and r24, r7, r15
	setlt.u r2, r28, r24
	bneq r2, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r7, -220(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r2, 1024
	or r2, r7, r2
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r2, r25, r15
	setlt.u r4, r28, r2
	bneq r4, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	addli r8, r25, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r4, 1024
	or r8, r25, r4
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r4, r11, r15
	setlt.u r5, r28, r4
	bneq r5, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r11, -228(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r5, 1024
	or r5, r11, r5
	storeli.w r5, -228(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r10, r1, r15
	setlt.u r5, r28, r10
	bneq r5, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r5, 1024
	or r5, r1, r5
	storeli.w r5, -232(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r9, r6, r15
	storeli.w r8, -224(r30)                 # 4-byte Folded Spill
	setlt.u r5, r28, r9
	bneq r5, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r6, -208(r30)                 # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r5, 1024
	or r5, r6, r5
	storeli.w r5, -208(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r5, r3, r15
	setlt.u r8, r28, r5
	bneq r8, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r3, -212(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r3, r8
	storeli.w r8, -212(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r12, r15
	setlt.u r8, r28, r26
	bneq r8, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r12, -236(r30)                # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r12, r8
	storeli.w r8, -236(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r20, r17, r15
	setlt.u r8, r28, r20
	bneq r8, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r17, -240(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r17, r8
	storeli.w r8, -240(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r23, r21, r15
	storeli.w r21, -352(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r23
	bneq r8, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r21, -244(r30)                # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r21, r8
	storeli.w r8, -244(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r21, r27, r15
	storeli.w r27, -348(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r21
	bneq r8, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r27, -248(r30)                # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r27, r8
	storeli.w r8, -248(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	and r27, r22, r15
	storeli.w r22, -344(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r27
	bneq r8, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r22, -252(r30)                # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r22, r8
	storeli.w r8, -252(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r19, r15
	storeli.w r19, -336(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r22
	bneq r8, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r19, -256(r30)                # 4-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r19, r8
	storeli.w r8, -256(r30)                 # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	and r19, r18, r15
	storeli.w r18, -328(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r19
	bneq r8, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r18, -260(r30)                # 4-byte Folded Spill
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r18, r8
	storeli.w r8, -260(r30)                 # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	and r18, r16, r15
	storeli.w r16, -320(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r18
	bneq r8, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r16, -292(r30)                # 4-byte Folded Spill
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r16, r8
	storeli.w r8, -292(r30)                 # 4-byte Folded Spill
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	and r16, r14, r15
	storeli.w r13, -304(r30)                # 4-byte Folded Spill
	storeli.w r14, -312(r30)                # 4-byte Folded Spill
	setlt.u r8, r28, r16
	bneq r8, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	lui r8, 522240
	storeli.w r14, -296(r30)                # 4-byte Folded Spill
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r13, 1024
	lui r8, 522240
	or r13, r14, r13
	storeli.w r13, -296(r30)                # 4-byte Folded Spill
	loadli.w r13,  -304(r30)                # 4-byte Folded Reload
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	and r28, r13, r15
	loadli.w r14,  -196(r30)                # 4-byte Folded Reload
	setlt.u r8, r8, r28
	bneq r8, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	storeli.w r13, -204(r30)                # 4-byte Folded Spill
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	lui r8, 1024
	or r8, r13, r8
	storeli.w r8, -204(r30)                 # 4-byte Folded Spill
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -200(r30)                 # 4-byte Folded Reload
	lui r13, 1048560
	setlt.u r8, r8, r24
	loadli.w r24,  -220(r30)                # 4-byte Folded Reload
	bneq r8, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r14
	and r24, r7, r13
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -224(r30)                 # 4-byte Folded Reload
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r2, r7, r2
	bneq r2, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r14
	and r8, r2, r13
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r2, r7, r4
	loadli.w r25,  -228(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r14
	and r25, r2, r13
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r2, r7, r10
	loadli.w r11,  -232(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r14
	and r11, r1, r13
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r9
	loadli.w r10,  -376(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r14
	and r1, r1, r13
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r5
	bneq r1, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r14
	and r1, r1, r13
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r26
	loadli.w r26,  -236(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r14
	and r26, r1, r13
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r20
	loadli.w r20,  -240(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r14
	and r20, r1, r13
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r23
	loadli.w r6,  -208(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -212(r30)                # 4-byte Folded Reload
	loadli.w r23,  -244(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r14
	and r23, r1, r13
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r21
	loadli.w r21,  -248(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r14
	and r21, r1, r13
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r27
	loadli.w r27,  -252(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r14
	and r27, r1, r13
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r22
	loadli.w r22,  -256(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r14
	and r22, r1, r13
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r19
	loadli.w r19,  -260(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r14
	and r19, r1, r13
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r18
	loadli.w r18,  -292(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r14
	and r18, r1, r13
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r16
	loadli.w r14,  -296(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r14, r1, r13
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:45:19
	setlt.u r1, r7, r28
	bneq r1, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:19
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r13
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -216(r30)                 # 4-byte Folded Reload
	lui r28, 522240
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	addli r1, zero, 128
	blt.s r7, r1, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r24, r8
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r6
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r26
	add.f.rn r1, r1, r20
	add.f.rn r1, r1, r23
	add.f.rn r1, r1, r21
	add.f.rn r1, r1, r27
	add.f.rn r1, r1, r22
	add.f.rn r1, r1, r19
	add.f.rn r1, r1, r18
	add.f.rn r1, r1, r14
	add.f.rn r1, r1, r2
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -372(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r10
	sync_group
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -360(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r4)
	loads.w r3, 4(r4)
	loads.w r2, 8(r4)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r3
	loads.w r3, 12(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 16(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 20(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 24(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 32(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 36(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 40(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 44(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 48(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 52(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 56(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 60(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 64(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 68(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 72(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 76(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 80(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 84(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 88(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 92(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 96(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 100(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 104(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 108(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 112(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 116(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 120(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 124(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 128(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 132(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 136(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 140(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 144(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 148(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 152(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 156(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 160(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 164(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 168(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 172(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 176(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 180(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 184(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 188(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 192(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 196(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 200(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 204(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 208(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 212(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 216(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 220(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 224(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 228(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 232(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 236(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 240(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 244(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 248(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 252(r4)
	add.f.rn r1, r1, r2
	add.f.rn r1, r1, r3
	stores.w r1, 0(r4)
.Ltmp2:
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r10
	sync_group
	loadli.w r1,  -360(r30)                 # 4-byte Folded Reload
	.loc	1 55 21 is_stmt 1               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:55:21
	lui r2, 239616
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 56 20                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:56:20
	sub.f.rn r2, r8, r1
	loadli.w r8,  -204(r30)                 # 4-byte Folded Reload
	sub.f.rn r9, r24, r1
	sub.f.rn r5, r11, r1
	sub.f.rn r24, r6, r1
	sub.f.rn r3, r12, r1
	sub.f.rn r17, r20, r1
	sub.f.rn r11, r21, r1
	sub.f.rn r14, r14, r1
	sub.f.rn r4, r25, r1
	sub.f.rn r12, r26, r1
	sub.f.rn r20, r23, r1
	sub.f.rn r6, r27, r1
	sub.f.rn r21, r22, r1
	sub.f.rn r13, r19, r1
	sub.f.rn r18, r18, r1
	sub.f.rn r8, r8, r1
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	addli r1, zero, 128
	storeli.w r14, -260(r30)                # 4-byte Folded Spill
	storeli.w r8, -292(r30)                 # 4-byte Folded Spill
	blt.s r7, r1, .LBB0_92
.Ltmp4:
# %bb.91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r1, r9, r9
	mul.f.rn r7, r2, r2
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r7
.Ltmp6:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r4, r4
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp8:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r5, r5
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp10:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r24, r24
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp12:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r3, r3
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp14:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r12, r12
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp16:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r17, r17
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp18:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r20, r20
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp20:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r11, r11
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp22:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r6, r6
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp24:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r21, r21
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp26:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r13, r13
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp28:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r18, r18
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp30:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r14, r14
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.Ltmp32:
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r7, r8, r8
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r7,  -388(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r7)
	mfence { lm, sm, gm }
	csr_set csr3, r10
	sync_group
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r15,  -364(r30)                # 4-byte Folded Reload
	loads.w r1, 0(r15)
	loads.w r14, 4(r15)
	loads.w r7, 8(r15)
	loads.w r8, 12(r15)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r14
	add.f.rn r1, r1, r7
	loads.w r7, 16(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 20(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 24(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 28(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 32(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 36(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 40(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 44(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 48(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 52(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 56(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 60(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 64(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 68(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 72(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 76(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 80(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 84(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 88(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 92(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 96(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 100(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 104(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 108(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 112(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 116(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 120(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 124(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 128(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 132(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 136(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 140(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 144(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 148(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 152(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 156(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 160(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 164(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 168(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 172(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 176(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 180(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 184(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 188(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 192(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 196(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 200(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 204(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 208(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 212(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 216(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 220(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 224(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 228(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 232(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 236(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 240(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 244(r15)
	add.f.rn r1, r1, r7
	loads.w r7, 248(r15)
	add.f.rn r1, r1, r8
	loads.w r8, 252(r15)
	add.f.rn r1, r1, r7
	add.f.rn r1, r1, r8
	stores.w r1, 0(r15)
	loadli.w r15,  -368(r30)                # 4-byte Folded Reload
.Ltmp34:
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r10
	sync_group
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 63 21 is_stmt 1               # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:63:21
	lui r7, 239616
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r7
	.loc	1 65 20                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:65:20
	loadli.w r7,  -468(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r7
	.loc	1 66 28                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:66:28
	lui r7, 260096
	sqrt.f.rn r1, r1
	div.f.rn r1, r7, r1
	.loc	1 67 20                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:67:20
	mul.f.rn r7, r9, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r14, r7, r15
	setlt.u r8, r28, r14
	bneq r8, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49 is_stmt 0                # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r7, -204(r30)                 # 4-byte Folded Spill
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r8, 1024
	or r8, r7, r8
	storeli.w r8, -204(r30)                 # 4-byte Folded Spill
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r9, r2, r1
	addli r8, r13, 0
	addli r13, r21, 0
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	storeli.w r18, -256(r30)                # 4-byte Folded Spill
	and r22, r9, r15
	setlt.u r2, r28, r22
	bneq r2, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r9, -208(r30)                 # 4-byte Folded Spill
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r2, 1024
	or r2, r9, r2
	storeli.w r2, -208(r30)                 # 4-byte Folded Spill
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r21, r4, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r18, r21, r15
	setlt.u r2, r28, r18
	bneq r2, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r21, -212(r30)                # 4-byte Folded Spill
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r2, 1024
	or r2, r21, r2
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r5, r5, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r19, r5, r15
	setlt.u r2, r28, r19
	bneq r2, zero, .LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	j .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r2, 1024
	or r2, r5, r2
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r23, r24, r1
	lui r27, 1048560
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r25, r23, r15
	setlt.u r2, r28, r25
	bneq r2, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r23, -220(r30)                # 4-byte Folded Spill
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r2, 1024
	or r2, r23, r2
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r24, r3, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r2, r24, r15
	setlt.u r3, r28, r2
	bneq r3, zero, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r24, -224(r30)                # 4-byte Folded Spill
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r24, r3
	storeli.w r3, -224(r30)                 # 4-byte Folded Spill
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r12, r12, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r10, r12, r15
	setlt.u r3, r28, r10
	bneq r3, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r12, -228(r30)                # 4-byte Folded Spill
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r12, r3
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r17, r17, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r4, r17, r15
	setlt.u r3, r28, r4
	bneq r3, zero, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r17, -232(r30)                # 4-byte Folded Spill
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r17, r3
	storeli.w r3, -232(r30)                 # 4-byte Folded Spill
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r20, r20, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r3, r20, r15
	storeli.w r3, -320(r30)                 # 4-byte Folded Spill
	setlt.u r3, r28, r3
	bneq r3, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r20, -236(r30)                # 4-byte Folded Spill
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r20, r3
	storeli.w r3, -236(r30)                 # 4-byte Folded Spill
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r11, r11, r1
	lui r26, 522240
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r3, r11, r15
	storeli.w r3, -328(r30)                 # 4-byte Folded Spill
	setlt.u r3, r28, r3
	bneq r3, zero, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r11, -240(r30)                # 4-byte Folded Spill
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r11, r3
	storeli.w r3, -240(r30)                 # 4-byte Folded Spill
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r28, r6, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r3, r28, r15
	storeli.w r3, -336(r30)                 # 4-byte Folded Spill
	setlt.u r3, r26, r3
	bneq r3, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r28, -244(r30)                # 4-byte Folded Spill
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r28, r3
	storeli.w r3, -244(r30)                 # 4-byte Folded Spill
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r6, r13, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r3, r6, r15
	storeli.w r3, -344(r30)                 # 4-byte Folded Spill
	setlt.u r3, r26, r3
	bneq r3, zero, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r6, -248(r30)                 # 4-byte Folded Spill
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r3, 1024
	or r3, r6, r3
	storeli.w r3, -248(r30)                 # 4-byte Folded Spill
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	mul.f.rn r3, r8, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r8, r3, r15
	storeli.w r8, -348(r30)                 # 4-byte Folded Spill
	setlt.u r8, r26, r8
	bneq r8, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r3, -252(r30)                 # 4-byte Folded Spill
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r8, 1024
	or r8, r3, r8
	storeli.w r8, -252(r30)                 # 4-byte Folded Spill
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	loadli.w r8,  -256(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r8, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r8, r13, r15
	storeli.w r8, -312(r30)                 # 4-byte Folded Spill
	setlt.u r8, r26, r8
	bneq r8, zero, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r13, -256(r30)                # 4-byte Folded Spill
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r8, 1024
	or r8, r13, r8
	storeli.w r8, -256(r30)                 # 4-byte Folded Spill
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:0
	loadli.w r8,  -260(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r8, r1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r8, r16, r15
	storeli.w r16, -356(r30)                # 4-byte Folded Spill
	storeli.w r8, -304(r30)                 # 4-byte Folded Spill
	setlt.u r8, r26, r8
	bneq r8, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r16, -260(r30)                # 4-byte Folded Spill
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r8, 1024
	or r8, r16, r8
	storeli.w r8, -260(r30)                 # 4-byte Folded Spill
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	loadli.w r8,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r8, r1
	loadli.w r8,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	and r1, r16, r15
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	setlt.u r1, r26, r1
	bneq r1, zero, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	storeli.w r16, -292(r30)                # 4-byte Folded Spill
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	lui r1, 1024
	or r1, r16, r1
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r8, r14
	loadli.w r14,  -196(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_170
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r8, r22
	beq r1, zero, .LBB0_171
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r8, r18
	beq r1, zero, .LBB0_172
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r8, r19
	beq r1, zero, .LBB0_173
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r8, r25
	beq r1, zero, .LBB0_174
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r8, r2
	bneq r1, zero, .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r14
	and r1, r1, r27
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r10
	lui r18, 1048560
	bneq r1, zero, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r4
	bneq r1, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	setlt.u r1, r8, r1
	bneq r1, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	setlt.u r1, r8, r1
	bneq r1, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	setlt.u r1, r8, r1
	bneq r1, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	setlt.u r1, r8, r1
	bneq r1, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	storeli.w r16, -352(r30)                # 4-byte Folded Spill
	setlt.u r1, r8, r1
	bneq r1, zero, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r14
	and r1, r1, r18
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
.LBB0_164:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r19,  -288(r30)                # 4-byte Folded Reload
	loadli.w r3,  -408(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -436(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	add.s r17, r3, r19
	loadli.w r3,  -412(r30)                 # 4-byte Folded Reload
	add.s r14, r4, r19
	loadli.w r4,  -440(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r19
	loadli.w r1,  -404(r30)                 # 4-byte Folded Reload
	add.s r16, r3, r19
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	add.s r12, r4, r19
	loadli.w r4,  -444(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r19
	add.s r15, r3, r19
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	add.s r11, r4, r19
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	add.s r10, r3, r19
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	add.s r5, r4, r19
	loadli.w r4,  -452(r30)                 # 4-byte Folded Reload
	add.s r9, r3, r19
	loadli.w r3,  -428(r30)                 # 4-byte Folded Reload
	add.s r21, r4, r19
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	add.s r7, r3, r19
	loadli.w r3,  -432(r30)                 # 4-byte Folded Reload
	add.s r22, r4, r19
	add.s r6, r3, r19
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	setlt.u r3, r8, r3
	bneq r3, zero, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r3, r13, 16
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r4
	and r3, r3, r18
	storeli.w r3, -256(r30)                 # 4-byte Folded Spill
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:0
	sext_int2long r[2:3], r2
	addli r20, zero, 1
	sext_int2long r[18:19], r1
	sll.d r[1:2], r[2:3], r20
	sll.d r[3:4], r[18:19], r20
	store.d r[1:2], -288(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r17
	store.d r[3:4], -312(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r15
	sext_int2long r[17:18], r22
	sll.d r[1:2], r[1:2], r20
	sll.d r[23:24], r[3:4], r20
	sext_int2long r[3:4], r9
	sll.d r[17:18], r[17:18], r20
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r16
	sll.d r[27:28], r[3:4], r20
	sext_int2long r[3:4], r6
	sll.d r[1:2], r[1:2], r20
	sll.d r[15:16], r[3:4], r20
	sext_int2long r[3:4], r12
	store.d r[1:2], -344(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r10
	sll.d r[9:10], r[3:4], r20
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	.loc	1 69 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:0
	sll.d r[25:26], r[1:2], r20
	sext_int2long r[1:2], r7
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r8, r8, r3
	.loc	1 69 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:0
	sext_int2long r[3:4], r5
	sll.d r[6:7], r[1:2], r20
	sext_int2long r[1:2], r14
	sll.d r[13:14], r[1:2], r20
	sext_int2long r[1:2], r11
	sll.d r[11:12], r[1:2], r20
	sll.d r[1:2], r[3:4], r20
	sext_int2long r[3:4], r21
	sll.d r[3:4], r[3:4], r20
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	bneq r8, zero, .LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	loadli.w r8,  -356(r30)                 # 4-byte Folded Reload
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r8
	lui r8, 1048560
	and r5, r5, r8
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[19:20], 16(r30)
	.loc	1 69 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:0
	load.d r[21:22], -280(r30)              # 8-byte Folded Reload
	loadli.w r8,  -200(r30)                 # 4-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	add.ul r[5:6], r[19:20], r[6:7]
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	loadli.w r7,  -296(r30)                 # 4-byte Folded Reload
	.loc	1 69 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:0
	add.ul r[13:14], r[19:20], r[13:14]
	add.ul r[1:2], r[19:20], r[1:2]
	add.ul r[15:16], r[19:20], r[15:16]
	add.ul r[9:10], r[19:20], r[9:10]
	add.ul r[17:18], r[19:20], r[17:18]
	store.d r[21:22], -328(r30)             # 8-byte Folded Spill
	load.d r[21:22], -288(r30)              # 8-byte Folded Reload
	store.d r[13:14], -288(r30)             # 8-byte Folded Spill
	store.d r[1:2], -280(r30)               # 8-byte Folded Spill
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r7, r8, r7
	.loc	1 69 0                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:0
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -336(r30)             # 8-byte Folded Spill
	load.d r[21:22], -312(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -312(r30)             # 8-byte Folded Spill
	load.d r[21:22], -320(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -320(r30)             # 8-byte Folded Spill
	load.d r[21:22], -344(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -304(r30)             # 8-byte Folded Spill
	add.ul r[21:22], r[19:20], r[23:24]
	add.ul r[23:24], r[19:20], r[25:26]
	add.ul r[25:26], r[19:20], r[27:28]
	add.ul r[27:28], r[19:20], r[11:12]
	add.ul r[12:13], r[19:20], r[3:4]
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	bneq r7, zero, .LBB0_2
# %bb.169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r3, r1, r2
	j .LBB0_2
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r14
	and r1, r1, r27
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r22
	bneq r1, zero, .LBB0_145
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r14
	and r1, r1, r27
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r18
	bneq r1, zero, .LBB0_146
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r14
	and r1, r1, r27
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r19
	bneq r1, zero, .LBB0_147
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r14
	and r1, r1, r27
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r25
	bneq r1, zero, .LBB0_148
.LBB0_174:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:0:49
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r14
	and r1, r1, r27
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:49
	setlt.u r1, r8, r2
	beq r1, zero, .LBB0_149
	j .LBB0_150
.LBB0_175:                              # %._crit_edge
	.loc	1 69 4 epilogue_begin           # cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py:69:4
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
.asciz	"cqz32b6fqzqgx2d23jrb2tbkgqp2n5cmi33ieii4j4cwps4q4qt6.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/qz" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
