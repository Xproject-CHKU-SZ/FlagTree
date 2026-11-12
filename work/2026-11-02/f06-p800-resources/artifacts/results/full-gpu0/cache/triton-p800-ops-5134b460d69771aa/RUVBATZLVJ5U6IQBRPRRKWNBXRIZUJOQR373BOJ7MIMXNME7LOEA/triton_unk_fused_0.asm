	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ip" "cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py"
	.loc	1 22 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -576
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 512
	load_param_i r10, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r8,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r6,  40(r30)
	add.s r7, r3, r2
	mul.s r4, r8, r4
	addli r5, r7, 8208
	mul.s r4, r4, r6
	storeli.w r5, -380(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r5)
	lui r5, 15
	mfence { lm, sm, gm }
	ori r9, r5, 4095
	lui r5, 1046527
	ori r5, r5, 4095
	csr_set csr3, r9
	sync_group
	storeli.w r7, -376(r30)                 # 4-byte Folded Spill
	stores.w r5, 0(r7)
	mfence { lm, sm, gm }
	storeli.w r9, -384(r30)                 # 4-byte Folded Spill
	csr_set csr3, r9
	sync_group
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	ble.s r4, r10, .LBB0_391
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r7, 1
	addli r9, zero, 1
	load.d r[5:6], 8(r30)
	lui r18, 522240
	vxor.u.mz vr0{mr1}, vr0, vr0
	div.s r4, r1, r4
	storeli.w r7, -400(r30)                 # 4-byte Folded Spill
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	sub.s r4, r1, r4
	andi r1, r1, 7
	slli r4, r4, 4
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
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
	sll.d r[7:8], r[7:8], r9
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[7:8]
	addli r6, r30, -192
	addli r7, zero, 32
	add.s r2, r3, r2
	store.d r[4:5], -472(r30)               # 8-byte Folded Spill
	addli r1, r2, 8208
	storeli.w r2, -476(r30)                 # 4-byte Folded Spill
	lui r2, 522239
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r1, r1, 4095
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r17, r1, 4095
	ori r1, r2, 4095
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	storeli.w r17, -196(r30)                # 4-byte Folded Spill
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 58 48 prologue_end            # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	addli r5, zero, 2
	addli r6, r30, -192
	lui r18, 522240
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
	load.d r[7:8], -328(r30)                # 8-byte Folded Reload
	or r1, r5, r1
	s_lm2gm r1, r6, 0(r[7:8])
	load.d r[7:8], -336(r30)                # 8-byte Folded Reload
	addli r1, r6, 4
	s_lm2gm r2, r3, 0(r[7:8])
	lui r2, 983040
	load.d r[7:8], -312(r30)                # 8-byte Folded Reload
	lui r3, 983040
	or r2, r5, r2
	or r3, r5, r3
	s_lm2gm r2, r1, 0(r[7:8])
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[7:8], -304(r30)                # 8-byte Folded Reload
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	addli r1, r6, 8
	lui r4, 983040
	addli r2, r6, 10
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[9:10])
	lui r3, 983040
	addli r1, r6, 12
	s_lm2gm r4, r2, 0(r[11:12])
	lui r4, 983040
	addli r2, r6, 14
	loadli.w r10,  -272(r30)                # 4-byte Folded Reload
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[7:8])
	lui r3, 983040
	addli r1, r6, 16
	s_lm2gm r4, r2, 0(r[19:20])
	lui r4, 983040
	addli r2, r6, 18
	load.d r[7:8], -280(r30)                # 8-byte Folded Reload
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[21:22])
	lui r3, 983040
	addli r1, r6, 20
	s_lm2gm r4, r2, 0(r[25:26])
	lui r4, 983040
	addli r2, r6, 22
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[13:14])
	lui r3, 983040
	addli r1, r6, 24
	s_lm2gm r4, r2, 0(r[23:24])
	lui r4, 983040
	addli r2, r6, 26
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[27:28])
	lui r3, 983040
	addli r1, r6, 28
	s_lm2gm r4, r2, 0(r[15:16])
	lui r4, 983040
	addli r2, r6, 30
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[7:8])
	load.d r[7:8], -288(r30)                # 8-byte Folded Reload
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	s_lm2gm r4, r2, 0(r[7:8])
	add.s r10, r10, r1
	addli r7, zero, 32
	mfence { lm }
	loadli.w r1,  -388(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -196(r30)                # 4-byte Folded Reload
	blt.s r10, r1, .LBB0_3
	j .LBB0_391
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 48 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	add.s r2, r6, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 46 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:46
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 38 30                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:30
	addli r5, zero, 1
	storeli.w r10, -272(r30)                # 4-byte Folded Spill
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r20, zero, 1
	.loc	1 39 37 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r20
	div.s r1, r10, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:29:23
	loadli.w r2,  -392(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:29:23
	add.s r19, r1, r2
	.loc	1 38 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:37
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	.loc	1 38 41 is_stmt 0               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:41
	slli r2, r19, 7
	.loc	1 38 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:37
	add.s r1, r2, r1
	storeli.w r2, -288(r30)                 # 4-byte Folded Spill
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	lui r2, 983040
	.loc	1 38 30                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	or r2, r7, r2
	.loc	1 39 37 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:30
	sll.d r[8:9], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	or r1, r7, r1
	store.d r[8:9], -280(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:30
	add.ul r[3:4], r[3:4], r[8:9]
	.loc	1 38 46 is_stmt 0               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	addli r4, r30, -128
	l_gm2lm r1, r4, 0(r[2:3])
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
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
	.loc	1 39 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
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
	.loc	1 44 18                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:44:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r13,  -64(r30)
	loadli.w r12,  -60(r30)
	loadli.w r8,  -56(r30)
	loadli.w r4,  -52(r30)
	loadli.w r26,  -48(r30)
	loadli.w r2,  -44(r30)
	loadli.w r11,  -40(r30)
	loadli.w r24,  -36(r30)
	loadli.w r27,  -32(r30)
	loadli.w r21,  -28(r30)
	loadli.w r1,  -24(r30)
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
	and r20, r13, r17
	loadli.w r3,  -20(r30)
	setlt.u r1, r18, r20
	storeli.w r3, -236(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -16(r30)
	storeli.w r3, -232(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -12(r30)
	loadli.w r25,  -8(r30)
	loadli.w r9,  -4(r30)
	bneq r1, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r13, -212(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r1, 1024
	or r1, r13, r1
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r1, r12, r17
	setlt.u r6, r18, r1
	bneq r6, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	addli r14, r12, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r14, r12, r5
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r23, r8, r17
	setlt.u r6, r18, r23
	bneq r6, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r8, -244(r30)                 # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r8, r5
	storeli.w r5, -244(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r3, r4, r17
	setlt.u r6, r18, r3
	bneq r6, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	addli r5, r4, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r4, r5
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r10, r26, r17
	storeli.w r5, -220(r30)                 # 4-byte Folded Spill
	setlt.u r6, r18, r10
	bneq r6, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	addli r16, r26, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r16, r26, r5
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r6, r2, r17
	setlt.u r15, r18, r6
	bneq r15, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r2, -228(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r2, r5
	storeli.w r5, -228(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r28, r11, r17
	setlt.u r15, r18, r28
	bneq r15, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r11, -248(r30)                # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r11, r5
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r24, r17
	storeli.w r24, -344(r30)                # 4-byte Folded Spill
	setlt.u r15, r18, r22
	bneq r15, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r24, -252(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r24, r5
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r24, r27, r17
	storeli.w r27, -336(r30)                # 4-byte Folded Spill
	setlt.u r15, r18, r24
	bneq r15, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r27, -256(r30)                # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r27, r5
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r27, r21, r17
	storeli.w r19, -208(r30)                # 4-byte Folded Spill
	storeli.w r21, -328(r30)                # 4-byte Folded Spill
	setlt.u r15, r18, r27
	bneq r15, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r21, -260(r30)                # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r21, r5
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r19,  -240(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	and r21, r19, r17
	setlt.u r15, r18, r21
	bneq r15, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r19, -264(r30)                # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 1024
	or r5, r19, r5
	storeli.w r5, -264(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r5,  -236(r30)                 # 4-byte Folded Reload
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	storeli.w r14, -216(r30)                # 4-byte Folded Spill
	and r19, r5, r17
	addli r17, r5, 0
	lui r5, 522240
	setlt.u r15, r18, r19
	bneq r15, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r17, -292(r30)                # 4-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r14, 1024
	or r14, r17, r14
	storeli.w r14, -292(r30)                # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r17,  -232(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	loadli.w r14,  -196(r30)                # 4-byte Folded Reload
	storeli.w r16, -224(r30)                # 4-byte Folded Spill
	and r18, r17, r14
	setlt.u r15, r5, r18
	bneq r15, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	storeli.w r17, -296(r30)                # 4-byte Folded Spill
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r14, 1024
	or r14, r17, r14
	storeli.w r14, -296(r30)                # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -196(r30)                # 4-byte Folded Reload
	storeli.w r7, -320(r30)                 # 4-byte Folded Spill
	and r16, r7, r14
	setlt.u r15, r5, r16
	beq r15, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=1
	lui r14, 1024
	or r7, r7, r14
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -196(r30)                # 4-byte Folded Reload
	storeli.w r25, -312(r30)                # 4-byte Folded Spill
	and r15, r25, r14
	setlt.u r17, r5, r15
	beq r17, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=1
	lui r14, 1024
	or r25, r25, r14
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -196(r30)                # 4-byte Folded Reload
	storeli.w r9, -304(r30)                 # 4-byte Folded Spill
	and r17, r9, r14
	setlt.u r14, r5, r17
	beq r14, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	lui r5, 1024
	or r9, r9, r5
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -200(r30)                # 4-byte Folded Reload
	setlt.u r14, r14, r20
	bneq r14, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r14, r13, 16
	andi r14, r14, 1
	add.s r13, r13, r14
	loadli.w r14,  -204(r30)                # 4-byte Folded Reload
	add.s r13, r13, r14
	lui r14, 1048560
	and r5, r13, r14
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	loadli.w r13,  -200(r30)                # 4-byte Folded Reload
	loadli.w r20,  -384(r30)                # 4-byte Folded Reload
	setlt.u r1, r13, r1
	bneq r1, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	add.s r1, r1, r12
	lui r12, 1048560
	and r1, r1, r12
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -200(r30)                # 4-byte Folded Reload
	loadli.w r13,  -204(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r23
	loadli.w r23,  -244(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	lui r8, 1048560
	add.s r1, r1, r13
	and r23, r1, r8
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r3
	loadli.w r12,  -476(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	lui r4, 1048560
	add.s r1, r1, r13
	and r1, r1, r4
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r10
	lui r4, 1048560
	addli r8, r25, 0
	bneq r1, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r13
	and r1, r1, r4
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r6
	bneq r1, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r1, r1, r4
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r28
	loadli.w r28,  -248(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r28, r1, r4
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r22
	loadli.w r22,  -252(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r22, r1, r4
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r24
	loadli.w r24,  -256(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r24, r1, r4
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r27
	loadli.w r25,  -260(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r25, r1, r4
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r21
	loadli.w r26,  -264(r30)                # 4-byte Folded Reload
	loadli.w r27,  -292(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r26, r1, r4
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r19
	loadli.w r10,  -208(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r27, r1, r4
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r18
	loadli.w r19,  -196(r30)                # 4-byte Folded Reload
	loadli.w r18,  -296(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r18, r1, r4
.LBB0_76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r16
	bneq r1, zero, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r7, r1, r4
.LBB0_78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r15
	loadli.w r16,  -224(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r8, r1, r4
.LBB0_80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r14, r17
	loadli.w r15,  -220(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r9, r1, r4
.LBB0_82:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r13,  -212(r30)                # 4-byte Folded Reload
	loadli.w r14,  -216(r30)                # 4-byte Folded Reload
	loadli.w r17,  -228(r30)                # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r1, r14, r13
	addli r2, r13, 0
	bneq r1, zero, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r14, 0
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	slli r1, r13, 9
	slli r3, r14, 9
	srli r4, r13, 23
	srli r5, r14, 23
	seteq r1, r1, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r3, r5, r3
	and r1, r1, r3
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_264
# %bb.85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r13, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_265
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r23, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r23, 0
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	slli r2, r23, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r23, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_266
# %bb.93:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_267
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r23, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r23, zero, .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r15, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r15, 0
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r15, 23
	srli r6, r2, 23
	seteq r1, r1, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r1, r5, r1
	or r4, r6, r4
	and r1, r4, r1
	beq r1, zero, .LBB0_268
# %bb.101:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_269
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r16, 0
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r16, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_270
# %bb.109:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_271
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r16, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r17, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r17, 23
	srli r6, r2, 23
	seteq r1, r1, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r1, r5, r1
	or r4, r6, r4
	and r1, r4, r1
	beq r1, zero, .LBB0_272
# %bb.117:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_273
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r28, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r28, 0
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r28, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_274
# %bb.125:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_275
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r22, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r22, 0
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r22, 23
	srli r6, r2, 23
	seteq r1, r1, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r1, r5, r1
	or r4, r6, r4
	and r1, r4, r1
	beq r1, zero, .LBB0_276
# %bb.133:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_277
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r24, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r24, 0
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r24, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_278
# %bb.141:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_279
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r24, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r25, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r25, 23
	srli r6, r2, 23
	seteq r1, r1, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r1, r5, r1
	or r4, r6, r4
	and r1, r4, r1
	beq r1, zero, .LBB0_280
# %bb.149:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_281
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r26, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r26, 0
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r26, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_282
# %bb.157:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_283
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r26, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r27, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r27, 0
.LBB0_164:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r27, 23
	srli r6, r2, 23
	seteq r1, r1, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r1, r5, r1
	or r4, r6, r4
	and r1, r4, r1
	beq r1, zero, .LBB0_284
# %bb.165:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_285
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r18, 0
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r18, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_286
# %bb.173:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_287
.LBB0_174:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r18, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_176:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_178:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r7, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_180
# %bb.179:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r7, 0
.LBB0_180:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r7, 23
	srli r6, r2, 23
	seteq r1, r1, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r1, r5, r1
	or r4, r6, r4
	and r1, r4, r1
	beq r1, zero, .LBB0_288
# %bb.181:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_289
.LBB0_182:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_184:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_186:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r8, 0
.LBB0_188:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r8, 23
	srli r6, r1, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_290
# %bb.189:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_291
.LBB0_190:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_192:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_194:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r9, r2
	addli r1, r2, 0
	bneq r3, zero, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_196:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r9, 23
	srli r6, r2, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_292
# %bb.197:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_293
.LBB0_198:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r2, 0
.LBB0_200:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_202
.Ltmp2:
# %bb.201:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 49 35 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:49:35
	addli r1, zero, 16
	blt.s r10, r1, .LBB0_204
# %bb.203:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:35
	lui r3, 1046528
.LBB0_204:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	addli r2, r20, 0
	storeli.w r9, -232(r30)                 # 4-byte Folded Spill
	addli r21, r8, 0
	stores.w r3, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r2
	sync_group
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_262
# %bb.205:                              #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r12)
	loads.w r1, 4(r12)
	storeli.w r7, -236(r30)                 # 4-byte Folded Spill
.Ltmp3:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_207
# %bb.206:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_207:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r3, 9
	slli r5, r1, 9
	srli r6, r3, 23
	srli r7, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r4, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_377
# %bb.208:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_378
.LBB0_209:                              #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_211:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_213:                              #   in Loop: Header=BB0_3 Depth=1
	loads.w r5, 8(r12)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r1
	bneq r3, zero, .LBB0_215
# %bb.214:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r5, 0
.LBB0_215:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r6, r5, 23
	srli r7, r1, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r4, r7, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_379
# %bb.216:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_380
.LBB0_217:                              #   in Loop: Header=BB0_3 Depth=1
	beq r5, zero, .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_219:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	and r1, r3, r1
	bneq r1, zero, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_221:                              #   in Loop: Header=BB0_3 Depth=1
	loads.w r6, 12(r12)
	loads.w r4, 16(r12)
	loads.w r3, 20(r12)
	loads.w r2, 24(r12)
	loads.w r1, 28(r12)
	addli r7, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r8, r6, r5
	bneq r8, zero, .LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r6, 0
.LBB0_223:                              #   in Loop: Header=BB0_3 Depth=1
	slli r8, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r9, r5, 9
	srli r10, r6, 23
	srli r11, r5, 23
	seteq r8, r8, zero
	seteq r9, r9, zero
	andi r10, r10, 255
	andi r11, r11, 255
	setlti r10, r10, 255
	setlti r11, r11, 255
	or r8, r10, r8
	or r9, r11, r9
	and r8, r9, r8
	beq r8, zero, .LBB0_381
# %bb.224:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r5, zero, .LBB0_382
.LBB0_225:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r5, 0
.LBB0_227:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r7
	setle.f r8, r7, zero
	and r5, r8, r5
	bneq r5, zero, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_229:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r7, r4, r6
	addli r5, r6, 0
	bneq r7, zero, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r4, 0
.LBB0_231:                              #   in Loop: Header=BB0_3 Depth=1
	slli r7, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r6, 9
	srli r9, r4, 23
	srli r10, r6, 23
	seteq r7, r7, zero
	seteq r8, r8, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r7, r9, r7
	or r8, r10, r8
	and r7, r8, r7
	beq r7, zero, .LBB0_383
# %bb.232:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r6, zero, .LBB0_384
.LBB0_233:                              #   in Loop: Header=BB0_3 Depth=1
	beq r4, zero, .LBB0_235
.LBB0_234:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r6, 0
.LBB0_235:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r6, zero, r5
	setle.f r7, r5, zero
	and r6, r7, r6
	bneq r6, zero, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
.LBB0_237:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r6, r3, r4
	addli r5, r4, 0
	bneq r6, zero, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r3, 0
.LBB0_239:                              #   in Loop: Header=BB0_3 Depth=1
	slli r6, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r4, 9
	srli r8, r3, 23
	srli r9, r4, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r6, r8, r6
	or r7, r9, r7
	and r6, r7, r6
	beq r6, zero, .LBB0_385
# %bb.240:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r4, zero, .LBB0_386
.LBB0_241:                              #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
.LBB0_243:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r6, r5, zero
	and r4, r6, r4
	bneq r4, zero, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_245:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r2, r3
	addli r4, r3, 0
	bneq r5, zero, .LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_247:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r3, 9
	srli r7, r2, 23
	srli r8, r3, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_387
# %bb.248:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_388
.LBB0_249:                              #   in Loop: Header=BB0_3 Depth=1
	beq r2, zero, .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_251:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r4
	setle.f r5, r4, zero
	and r3, r5, r3
	bneq r3, zero, .LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_253:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r2
	addli r3, r2, 0
	bneq r4, zero, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_255:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r2, 9
	srli r6, r1, 23
	srli r7, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_389
# %bb.256:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_390
.LBB0_257:                              #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_259:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_261
.Ltmp4:
# %bb.260:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_261:                              #   in Loop: Header=BB0_3 Depth=1
	addli r2, r20, 0
	stores.w r1, 0(r12)
.LBB0_262:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r2
	sync_group
	loads.w r1, 0(r12)
	.loc	1 51 19 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:51:19
	sub.f.rn r6, r16, r1
	sub.f.rn r16, r7, r1
	loadli.w r7,  -232(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r13, r1
	sub.f.rn r3, r14, r1
	sub.f.rn r5, r15, r1
	sub.f.rn r9, r28, r1
	sub.f.rn r4, r23, r1
	sub.f.rn r8, r17, r1
	sub.f.rn r10, r22, r1
	sub.f.rn r11, r24, r1
	sub.f.rn r12, r25, r1
	sub.f.rn r15, r18, r1
	sub.f.rn r13, r26, r1
	sub.f.rn r14, r27, r1
	sub.f.rn r18, r21, r1
	sub.f.rn r1, r7, r1
	.loc	1 52 26                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:52:26
	exp.f.rn r7, r6
	exp.f.rn r17, r12
	exp.f.rn r12, r13
	exp.f.rn r13, r14
	exp.f.rn r6, r15
	exp.f.rn r28, r16
	exp.f.rn r16, r18
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
.Ltmp5:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15                        # standard.py:263:15
	loadli.w r14,  -208(r30)                # 4-byte Folded Reload
.Ltmp6:
	.loc	1 52 26                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:52:26
	exp.f.rn r15, r1
.Ltmp7:
	.loc	3 263 15                        # standard.py:263:15
	addli r1, zero, 16
	storeli.w r16, -264(r30)                # 4-byte Folded Spill
	storeli.w r15, -292(r30)                # 4-byte Folded Spill
	blt.s r14, r1, .LBB0_294
.Ltmp8:
# %bb.263:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_295
.LBB0_264:                              #   in Loop: Header=BB0_3 Depth=1
	lui r2, 523264
	addli r3, r13, 0
.Ltmp9:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r13, zero, .LBB0_86
.LBB0_265:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	addli r1, r14, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_87
	j .LBB0_88
.LBB0_266:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_94
.LBB0_267:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r23, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_95
	j .LBB0_96
.LBB0_268:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_102
.LBB0_269:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r15, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_103
	j .LBB0_104
.LBB0_270:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_110
.LBB0_271:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r16, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_111
	j .LBB0_112
.LBB0_272:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_118
.LBB0_273:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r17, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_119
	j .LBB0_120
.LBB0_274:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_126
.LBB0_275:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_127
	j .LBB0_128
.LBB0_276:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_134
.LBB0_277:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_135
	j .LBB0_136
.LBB0_278:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_142
.LBB0_279:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r24, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_143
	j .LBB0_144
.LBB0_280:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_150
.LBB0_281:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_151
	j .LBB0_152
.LBB0_282:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_158
.LBB0_283:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r26, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_159
	j .LBB0_160
.LBB0_284:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_166
.LBB0_285:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_167
	j .LBB0_168
.LBB0_286:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_174
.LBB0_287:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r18, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_175
	j .LBB0_176
.LBB0_288:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_182
.LBB0_289:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_183
	j .LBB0_184
.LBB0_290:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_190
.LBB0_291:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_191
	j .LBB0_192
.LBB0_292:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_198
.LBB0_293:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
	addli r3, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_199
	j .LBB0_200
.Ltmp10:
.LBB0_294:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r2, r3
	add.f.rn r1, r4, r1
	add.f.rn r1, r5, r1
	add.f.rn r1, r7, r1
	add.f.rn r1, r8, r1
	add.f.rn r1, r9, r1
	add.f.rn r1, r10, r1
	add.f.rn r1, r11, r1
	add.f.rn r1, r17, r1
	add.f.rn r1, r12, r1
	add.f.rn r1, r13, r1
	add.f.rn r1, r6, r1
	add.f.rn r1, r28, r1
	add.f.rn r1, r16, r1
	add.f.rn r1, r15, r1
.LBB0_295:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	lui r18, 522240
	stores.w r1, 0(r14)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_297
# %bb.296:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r16,  -372(r30)                # 4-byte Folded Reload
	loads.w r1, 0(r16)
	loads.w r14, 4(r16)
	loads.w r15, 8(r16)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r14
	loads.w r14, 12(r16)
	add.f.rn r1, r1, r15
	loads.w r15, 16(r16)
	add.f.rn r1, r1, r14
	loads.w r14, 20(r16)
	add.f.rn r1, r1, r15
	loads.w r15, 24(r16)
	add.f.rn r1, r1, r14
	loads.w r14, 28(r16)
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r14
	stores.w r1, 0(r16)
.Ltmp11:
.LBB0_297:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	loadli.w r1,  -372(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r1)
	.loc	1 56 21 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:56:21
	div.f.rn r2, r2, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r16, r2, r19
	setlt.u r14, r18, r16
	bneq r14, zero, .LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r2, -208(r30)                 # 4-byte Folded Spill
	j .LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r2, r14
	storeli.w r14, -208(r30)                # 4-byte Folded Spill
.LBB0_300:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r3, r3, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r21, r3, r19
	setlt.u r14, r18, r21
	bneq r14, zero, .LBB0_302
# %bb.301:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r3, -212(r30)                 # 4-byte Folded Spill
	j .LBB0_303
.LBB0_302:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r3, r14
	storeli.w r14, -212(r30)                # 4-byte Folded Spill
.LBB0_303:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r4, r4, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r23, r4, r19
	setlt.u r14, r18, r23
	bneq r14, zero, .LBB0_305
# %bb.304:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r4, r14
	storeli.w r14, -216(r30)                # 4-byte Folded Spill
.LBB0_306:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r5, r5, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r25, r5, r19
	setlt.u r14, r18, r25
	bneq r14, zero, .LBB0_308
# %bb.307:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r5, -220(r30)                 # 4-byte Folded Spill
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r5, r14
	storeli.w r14, -220(r30)                # 4-byte Folded Spill
.LBB0_309:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r7, r7, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r14, r7, r19
	storeli.w r14, -320(r30)                # 4-byte Folded Spill
	setlt.u r14, r18, r14
	bneq r14, zero, .LBB0_311
# %bb.310:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r7, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r7, r14
	storeli.w r14, -224(r30)                # 4-byte Folded Spill
.LBB0_312:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r8, r8, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r20, r8, r19
	setlt.u r14, r18, r20
	bneq r14, zero, .LBB0_314
# %bb.313:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r8, -228(r30)                 # 4-byte Folded Spill
	j .LBB0_315
.LBB0_314:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r8, r14
	storeli.w r14, -228(r30)                # 4-byte Folded Spill
.LBB0_315:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r9, r9, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r24, r9, r19
	setlt.u r14, r18, r24
	bneq r14, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r9, -232(r30)                 # 4-byte Folded Spill
	j .LBB0_318
.LBB0_317:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r14, 1024
	or r14, r9, r14
	storeli.w r14, -232(r30)                # 4-byte Folded Spill
.LBB0_318:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r10, r10, r1
	lui r14, 522240
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r15, r10, r19
	setlt.u r18, r18, r15
	storeli.w r15, -328(r30)                # 4-byte Folded Spill
	bneq r18, zero, .LBB0_320
# %bb.319:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r10, -236(r30)                # 4-byte Folded Spill
	j .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r18, 1024
	or r18, r10, r18
	storeli.w r18, -236(r30)                # 4-byte Folded Spill
.LBB0_321:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r11, r11, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r26, r11, r19
	setlt.u r18, r14, r26
	bneq r18, zero, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r11, -240(r30)                # 4-byte Folded Spill
	j .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r18, 1024
	or r18, r11, r18
	storeli.w r18, -240(r30)                # 4-byte Folded Spill
.LBB0_324:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r17, r17, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r27, r17, r19
	setlt.u r18, r14, r27
	bneq r18, zero, .LBB0_326
# %bb.325:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r17, -244(r30)                # 4-byte Folded Spill
	j .LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r18, 1024
	or r18, r17, r18
	storeli.w r18, -244(r30)                # 4-byte Folded Spill
.LBB0_327:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r12, r12, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r19, r12, r19
	setlt.u r18, r14, r19
	bneq r18, zero, .LBB0_329
# %bb.328:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r12, -248(r30)                # 4-byte Folded Spill
	j .LBB0_330
.LBB0_329:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r18, 1024
	or r18, r12, r18
	storeli.w r18, -248(r30)                # 4-byte Folded Spill
.LBB0_330:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r13, r13, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r18,  -196(r30)                # 4-byte Folded Reload
	and r15, r13, r18
	setlt.u r18, r14, r15
	storeli.w r15, -336(r30)                # 4-byte Folded Spill
	bneq r18, zero, .LBB0_332
# %bb.331:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r13, -252(r30)                # 4-byte Folded Spill
	j .LBB0_333
.LBB0_332:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r18, 1024
	or r18, r13, r18
	storeli.w r18, -252(r30)                # 4-byte Folded Spill
.LBB0_333:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r6, r6, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r18,  -196(r30)                # 4-byte Folded Reload
	and r22, r6, r18
	setlt.u r18, r14, r22
	bneq r18, zero, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r6, -256(r30)                 # 4-byte Folded Spill
	j .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r18, 1024
	or r18, r6, r18
	storeli.w r18, -256(r30)                # 4-byte Folded Spill
.LBB0_336:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r18, r28, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r28,  -196(r30)                # 4-byte Folded Reload
	and r15, r18, r28
	setlt.u r28, r14, r15
	storeli.w r15, -312(r30)                # 4-byte Folded Spill
	bneq r28, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r18, -260(r30)                # 4-byte Folded Spill
	j .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r28, 1024
	or r28, r18, r28
	storeli.w r28, -260(r30)                # 4-byte Folded Spill
.LBB0_339:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	loadli.w r15,  -264(r30)                # 4-byte Folded Reload
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r28,  -196(r30)                # 4-byte Folded Reload
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r15, r15, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	and r28, r15, r28
	storeli.w r15, -368(r30)                # 4-byte Folded Spill
	storeli.w r28, -304(r30)                # 4-byte Folded Spill
	setlt.u r28, r14, r28
	bneq r28, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r15, -264(r30)                # 4-byte Folded Spill
	j .LBB0_342
.LBB0_341:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r28, 1024
	or r28, r15, r28
	storeli.w r28, -264(r30)                # 4-byte Folded Spill
.LBB0_342:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	loadli.w r15,  -292(r30)                # 4-byte Folded Reload
	div.f.rn r28, r15, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	and r1, r28, r1
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	storeli.w r28, -292(r30)                # 4-byte Folded Spill
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r1, 1024
	or r1, r28, r1
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
.LBB0_345:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r16
	bneq r1, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r1, r1, r2
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
.LBB0_347:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r21
	bneq r1, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r3, 16
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r2
	lui r2, 1048560
	and r1, r1, r2
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_349:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r21,  -204(r30)                # 4-byte Folded Reload
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r2, r23
	addli r23, r2, 0
	bneq r1, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r4, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
.LBB0_351:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r25
	lui r2, 1048560
	bneq r1, zero, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
.LBB0_353:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	setlt.u r1, r23, r1
	beq r1, zero, .LBB0_372
# %bb.354:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r23, r20
	beq r1, zero, .LBB0_373
.LBB0_355:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r23, r24
	bneq r1, zero, .LBB0_357
.LBB0_356:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
.LBB0_357:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	setlt.u r1, r23, r1
	beq r1, zero, .LBB0_374
# %bb.358:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r23, r26
	beq r1, zero, .LBB0_375
.LBB0_359:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r23, r27
	beq r1, zero, .LBB0_376
.LBB0_360:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r23, r19
	bneq r1, zero, .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
.LBB0_362:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	setlt.u r1, r23, r1
	bneq r1, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
.LBB0_364:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r22
	storeli.w r28, -364(r30)                # 4-byte Folded Spill
	bneq r1, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -256(r30)                 # 4-byte Folded Spill
.LBB0_366:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -288(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -440(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -404(r30)                 # 4-byte Folded Reload
	add.s r6, r3, r7
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	add.s r28, r4, r7
	loadli.w r4,  -444(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r7
	loadli.w r1,  -408(r30)                 # 4-byte Folded Reload
	add.s r11, r3, r7
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	add.s r27, r4, r7
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r7
	add.s r10, r3, r7
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	add.s r22, r4, r7
	loadli.w r4,  -452(r30)                 # 4-byte Folded Reload
	add.s r17, r3, r7
	loadli.w r3,  -428(r30)                 # 4-byte Folded Reload
	add.s r5, r4, r7
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	add.s r16, r3, r7
	loadli.w r3,  -432(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r7
	add.s r15, r3, r7
	loadli.w r3,  -436(r30)                 # 4-byte Folded Reload
	add.s r14, r3, r7
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	storeli.w r4, -312(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -460(r30)                 # 4-byte Folded Reload
	setlt.u r3, r23, r3
	add.s r4, r4, r7
	storeli.w r4, -288(r30)                 # 4-byte Folded Spill
	bneq r3, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r3, r18, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r21
	and r3, r3, r4
	storeli.w r3, -260(r30)                 # 4-byte Folded Spill
.LBB0_368:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	sext_int2long r[2:3], r2
	addli r9, zero, 1
	sext_int2long r[7:8], r1
	sll.d r[1:2], r[2:3], r9
	sll.d r[3:4], r[7:8], r9
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r6
	store.d r[3:4], -344(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r10
	sll.d r[1:2], r[1:2], r9
	sll.d r[12:13], r[3:4], r9
	sext_int2long r[3:4], r16
	store.d r[1:2], -352(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r11
	sll.d r[20:21], r[3:4], r9
	sext_int2long r[3:4], r14
	sll.d r[1:2], r[1:2], r9
	sll.d r[25:26], r[3:4], r9
	sext_int2long r[3:4], r27
	store.d r[1:2], -360(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r17
	sll.d r[16:17], r[3:4], r9
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r3,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -304(r30)                 # 4-byte Folded Reload
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	sll.d r[18:19], r[1:2], r9
	sext_int2long r[1:2], r15
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r7, r3, r4
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	sext_int2long r[3:4], r5
	loadli.w r5,  -288(r30)                 # 4-byte Folded Reload
	sll.d r[23:24], r[1:2], r9
	sext_int2long r[1:2], r28
	sll.d r[14:15], r[1:2], r9
	sext_int2long r[1:2], r22
	sext_int2long r[5:6], r5
	sll.d r[27:28], r[1:2], r9
	sll.d r[1:2], r[3:4], r9
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	sll.d r[5:6], r[5:6], r9
	sext_int2long r[3:4], r3
	sll.d r[3:4], r[3:4], r9
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	bneq r7, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	loadli.w r8,  -368(r30)                 # 4-byte Folded Reload
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	loadli.w r8,  -204(r30)                 # 4-byte Folded Reload
	add.s r7, r7, r8
	lui r8, 1048560
	and r7, r7, r8
	storeli.w r7, -264(r30)                 # 4-byte Folded Spill
.LBB0_370:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[7:8], 16(r30)
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	load.d r[9:10], -280(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	add.ul r[18:19], r[7:8], r[18:19]
	add.ul r[11:12], r[7:8], r[12:13]
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r13,  -200(r30)                # 4-byte Folded Reload
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	add.ul r[25:26], r[7:8], r[25:26]
	add.ul r[27:28], r[7:8], r[27:28]
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	load.d r[9:10], -320(r30)               # 8-byte Folded Reload
	store.d r[18:19], -304(r30)             # 8-byte Folded Spill
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	loadli.w r18,  -296(r30)                # 4-byte Folded Reload
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	add.ul r[19:20], r[7:8], r[20:21]
	add.ul r[21:22], r[7:8], r[23:24]
	add.ul r[23:24], r[7:8], r[16:17]
	add.ul r[9:10], r[7:8], r[9:10]
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r18, r13, r18
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	add.ul r[13:14], r[7:8], r[14:15]
	add.ul r[15:16], r[7:8], r[1:2]
	add.ul r[1:2], r[7:8], r[3:4]
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -336(r30)              # 8-byte Folded Spill
	load.d r[9:10], -344(r30)               # 8-byte Folded Reload
	store.d r[1:2], -280(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[7:8], r[5:6]
	store.d r[1:2], -288(r30)               # 8-byte Folded Spill
	add.ul r[9:10], r[7:8], r[9:10]
	store.d r[9:10], -312(r30)              # 8-byte Folded Spill
	load.d r[9:10], -352(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	store.d r[9:10], -320(r30)              # 8-byte Folded Spill
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	bneq r18, zero, .LBB0_2
# %bb.371:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r3, r1, r2
	j .LBB0_2
.LBB0_372:                              #   in Loop: Header=BB0_3 Depth=1
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r20
	bneq r1, zero, .LBB0_355
.LBB0_373:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r24
	beq r1, zero, .LBB0_356
	j .LBB0_357
.LBB0_374:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r26
	bneq r1, zero, .LBB0_359
.LBB0_375:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r27
	bneq r1, zero, .LBB0_360
.LBB0_376:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r21
	and r1, r1, r2
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r1, r23, r19
	beq r1, zero, .LBB0_361
	j .LBB0_362
.LBB0_377:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	lui r2, 523264
.Ltmp12:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_209
.LBB0_378:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_210
	j .LBB0_211
.LBB0_379:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_217
.LBB0_380:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_218
	j .LBB0_219
.LBB0_381:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_225
.LBB0_382:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_226
	j .LBB0_227
.LBB0_383:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_233
.LBB0_384:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_234
	j .LBB0_235
.LBB0_385:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_241
.LBB0_386:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_242
	j .LBB0_243
.LBB0_387:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_249
.LBB0_388:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_250
	j .LBB0_251
.LBB0_389:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r7,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_257
.LBB0_390:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_258
	j .LBB0_259
.Ltmp13:
.LBB0_391:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:4
	addli sp, r30, -512
	addli sp, sp, 512
	mfence { lm, sm, gm }
	exit
.Ltmp14:
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
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x63 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x19 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	39                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xc DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	123                             # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x52:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	55                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	6                               # Abbrev [6] 0x5e:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
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
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ip" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
