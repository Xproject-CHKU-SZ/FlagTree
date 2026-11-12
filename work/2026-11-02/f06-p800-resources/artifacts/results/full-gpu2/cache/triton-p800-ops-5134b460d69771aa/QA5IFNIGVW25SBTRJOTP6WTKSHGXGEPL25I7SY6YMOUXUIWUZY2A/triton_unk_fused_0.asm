	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/q2" "cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py"
	.loc	1 22 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -704
	addli r30, sp, 640
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r10, 0
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	ori r9, r5, 4095
	lui r5, 1046527
	loadli.w r6,  40(r30)
	add.s r8, r3, r2
	ori r5, r5, 4095
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r9
	sync_group
	storeli.w r8, -416(r30)                 # 4-byte Folded Spill
	stores.w r5, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	storeli.w r9, -380(r30)                 # 4-byte Folded Spill
	csr_set csr3, r9
	sync_group
	storeli.w r4, -420(r30)                 # 4-byte Folded Spill
	ble.s r4, r10, .LBB0_952
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r7,  -416(r30)                 # 4-byte Folded Reload
	addli r9, zero, 1
	load.d r[5:6], 8(r30)
	lui r21, 522240
	vxor.u.mz vr0{mr1}, vr0, vr0
	div.s r4, r1, r4
	addli r7, r7, 1040
	storeli.w r7, -428(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	storeli.w r7, -436(r30)                 # 4-byte Folded Spill
	storeli.w r4, -424(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	ori r7, r4, 1
	storeli.w r4, -432(r30)                 # 4-byte Folded Spill
	storeli.w r7, -440(r30)                 # 4-byte Folded Spill
	ori r7, r4, 2
	storeli.w r7, -444(r30)                 # 4-byte Folded Spill
	ori r7, r4, 3
	storeli.w r7, -448(r30)                 # 4-byte Folded Spill
	ori r7, r4, 4
	storeli.w r7, -452(r30)                 # 4-byte Folded Spill
	ori r7, r4, 5
	storeli.w r7, -456(r30)                 # 4-byte Folded Spill
	ori r7, r4, 6
	storeli.w r7, -460(r30)                 # 4-byte Folded Spill
	ori r7, r4, 7
	storeli.w r7, -464(r30)                 # 4-byte Folded Spill
	ori r7, r4, 8
	storeli.w r7, -468(r30)                 # 4-byte Folded Spill
	ori r7, r4, 9
	storeli.w r7, -472(r30)                 # 4-byte Folded Spill
	ori r7, r4, 10
	storeli.w r7, -476(r30)                 # 4-byte Folded Spill
	ori r7, r4, 11
	storeli.w r7, -480(r30)                 # 4-byte Folded Spill
	ori r7, r4, 12
	storeli.w r7, -484(r30)                 # 4-byte Folded Spill
	ori r7, r4, 13
	storeli.w r7, -488(r30)                 # 4-byte Folded Spill
	ori r7, r4, 14
	storeli.w r7, -492(r30)                 # 4-byte Folded Spill
	ori r7, r4, 15
	storeli.w r7, -496(r30)                 # 4-byte Folded Spill
	sext_int2long r[7:8], r4
	lui r4, 1048575
	ori r4, r4, 3840
	sll.d r[7:8], r[7:8], r9
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[7:8]
	addli r6, r30, -192
	addli r7, zero, 32
	addli r8, r30, -128
	add.s r2, r3, r2
	store.d r[4:5], -504(r30)               # 8-byte Folded Spill
	addli r1, r2, 1040
	storeli.w r2, -268(r30)                 # 4-byte Folded Spill
	lui r2, 522239
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
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
	.loc	1 58 49 prologue_end            # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	addli r5, zero, 2
	addli r8, r30, -128
	addli r3, r8, 2
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -128(r30)
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	store.h r2, -126(r30)
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -124(r30)
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	store.h r2, -122(r30)
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -120(r30)
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	store.h r2, -118(r30)
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -116(r30)
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	store.h r2, -114(r30)
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -112(r30)
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	store.h r2, -110(r30)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -108(r30)
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	store.h r2, -106(r30)
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -104(r30)
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	store.h r2, -102(r30)
	float2bfloat.rn r2, r4
	addli r4, r8, 6
	store.h r2, -98(r30)
	lui r2, 983040
	float2bfloat.rn r1, r1
	or r2, r5, r2
	store.h r1, -100(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[6:7], -336(r30)                # 8-byte Folded Reload
	or r1, r5, r1
	s_lm2gm r1, r8, 0(r[6:7])
	load.d r[6:7], -344(r30)                # 8-byte Folded Reload
	addli r1, r8, 4
	s_lm2gm r2, r3, 0(r[6:7])
	lui r2, 983040
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	lui r3, 983040
	or r2, r5, r2
	or r3, r5, r3
	s_lm2gm r2, r1, 0(r[6:7])
	load.d r[1:2], -328(r30)                # 8-byte Folded Reload
	load.d r[6:7], -312(r30)                # 8-byte Folded Reload
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 8
	addli r2, r8, 10
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[9:10])
	s_lm2gm r4, r2, 0(r[11:12])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 12
	addli r2, r8, 14
	loadli.w r10,  -280(r30)                # 4-byte Folded Reload
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[6:7])
	s_lm2gm r4, r2, 0(r[19:20])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 16
	addli r2, r8, 18
	addli r7, zero, 32
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[21:22])
	s_lm2gm r4, r2, 0(r[25:26])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 20
	addli r2, r8, 22
	lui r21, 522240
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[13:14])
	s_lm2gm r4, r2, 0(r[23:24])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 24
	addli r2, r8, 26
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[27:28])
	s_lm2gm r4, r2, 0(r[15:16])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 28
	addli r2, r8, 30
	or r3, r5, r3
	or r4, r5, r4
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	s_lm2gm r3, r1, 0(r[5:6])
	load.d r[5:6], -296(r30)                # 8-byte Folded Reload
	loadli.w r1,  -436(r30)                 # 4-byte Folded Reload
	s_lm2gm r4, r2, 0(r[5:6])
	add.s r10, r10, r1
	addli r6, r30, -192
	mfence { lm }
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -196(r30)                # 4-byte Folded Reload
	blt.s r10, r1, .LBB0_3
	j .LBB0_952
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 49 is_stmt 0                # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:47
	add.s r2, r6, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 47 is_stmt 0                # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:47
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 38 30                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:30
	addli r5, zero, 1
	storeli.w r10, -280(r30)                # 4-byte Folded Spill
	.loc	1 38 47                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:47
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r18, zero, 1
	.loc	1 39 37 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r18
	div.s r1, r10, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:29:23
	loadli.w r2,  -424(r30)                 # 4-byte Folded Reload
	add.s r22, r1, r2
	.loc	1 38 37                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:37
	loadli.w r1,  -432(r30)                 # 4-byte Folded Reload
	.loc	1 38 42 is_stmt 0               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:42
	slli r2, r22, 10
	.loc	1 38 37                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:37
	add.s r1, r2, r1
	storeli.w r2, -296(r30)                 # 4-byte Folded Spill
	.loc	1 38 47                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:47
	lui r2, 983040
	.loc	1 38 30                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 38 47                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:47
	or r2, r7, r2
	.loc	1 39 37 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:30
	sll.d r[9:10], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:39:37
	or r1, r7, r1
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	.loc	1 38 30                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:30
	add.ul r[3:4], r[3:4], r[9:10]
	.loc	1 38 47 is_stmt 0               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:47
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:39:37
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r8, 0(r[2:3])
	.loc	1 38 47                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:38:47
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
	.loc	1 39 37                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:39:37
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
	.loc	1 44 18                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:44:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r20,  -64(r30)
	loadli.w r19,  -60(r30)
	loadli.w r18,  -56(r30)
	loadli.w r15,  -52(r30)
	loadli.w r14,  -48(r30)
	loadli.w r13,  -44(r30)
	loadli.w r24,  -40(r30)
	loadli.w r23,  -36(r30)
	loadli.w r12,  -32(r30)
	loadli.w r9,  -28(r30)
	loadli.w r16,  -24(r30)
	loadli.w r8,  -20(r30)
	loadli.w r11,  -16(r30)
	loadli.w r10,  -12(r30)
	loadli.w r6,  -8(r30)
	loadli.w r2,  -4(r30)
	and r26, r20, r17
	setlt.u r1, r21, r26
	bneq r1, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r20, -212(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r1, 1024
	or r1, r20, r1
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r4, r19, r17
	storeli.w r2, -272(r30)                 # 4-byte Folded Spill
	setlt.u r1, r21, r4
	bneq r1, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r19, -228(r30)                # 4-byte Folded Spill
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r1, 1024
	or r1, r19, r1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r3, r18, r17
	setlt.u r1, r21, r3
	bneq r1, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r18, -216(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r1, 1024
	or r1, r18, r1
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r15, r17
	setlt.u r1, r21, r2
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r15, -220(r30)                # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r1, 1024
	or r1, r15, r1
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r1, r14, r17
	setlt.u r7, r21, r1
	bneq r7, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r14, -232(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r14, r5
	storeli.w r5, -232(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r28, r13, r17
	setlt.u r7, r21, r28
	bneq r7, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r13, -236(r30)                # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r13, r5
	storeli.w r5, -236(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r27, r24, r17
	setlt.u r7, r21, r27
	bneq r7, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r24, -240(r30)                # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r24, r5
	storeli.w r5, -240(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r25, r23, r17
	storeli.w r22, -208(r30)                # 4-byte Folded Spill
	storeli.w r24, -352(r30)                # 4-byte Folded Spill
	setlt.u r7, r21, r25
	bneq r7, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r23, -244(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r23, r5
	storeli.w r5, -244(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r24, r12, r17
	storeli.w r23, -344(r30)                # 4-byte Folded Spill
	setlt.u r7, r21, r24
	bneq r7, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r12, -248(r30)                # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r12, r5
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r23, r9, r17
	storeli.w r12, -336(r30)                # 4-byte Folded Spill
	setlt.u r7, r21, r23
	bneq r7, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r9, -252(r30)                 # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r9, r5
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	addli r12, r9, 0
	lui r9, 522240
	and r22, r16, r5
	setlt.u r7, r21, r22
	bneq r7, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r16, -256(r30)                # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r16, r5
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	storeli.w r8, -320(r30)                 # 4-byte Folded Spill
	and r21, r8, r5
	setlt.u r7, r9, r21
	beq r7, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	lui r5, 1024
	or r8, r8, r5
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	storeli.w r16, -328(r30)                # 4-byte Folded Spill
	and r17, r11, r5
	setlt.u r7, r9, r17
	bneq r7, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r11, -260(r30)                # 4-byte Folded Spill
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r11, r5
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	storeli.w r11, -312(r30)                # 4-byte Folded Spill
	and r16, r10, r5
	setlt.u r7, r9, r16
	bneq r7, zero, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	storeli.w r10, -264(r30)                # 4-byte Folded Spill
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	or r5, r10, r5
	storeli.w r5, -264(r30)                 # 4-byte Folded Spill
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	storeli.w r10, -300(r30)                # 4-byte Folded Spill
	and r11, r6, r5
	setlt.u r7, r9, r11
	bneq r7, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	addli r10, r6, 0
	storeli.w r6, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	lui r5, 1024
	addli r10, r6, 0
	or r5, r6, r5
	storeli.w r5, -224(r30)                 # 4-byte Folded Spill
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -272(r30)                 # 4-byte Folded Reload
	and r7, r6, r5
	setlt.u r5, r9, r7
	beq r5, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	lui r5, 1024
	or r6, r6, r5
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	addli r9, r12, 0
	setlt.u r5, r5, r26
	bneq r5, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	loadli.w r20,  -204(r30)                # 4-byte Folded Reload
	add.s r5, r5, r20
	lui r20, 1048560
	and r5, r5, r20
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r26,  -380(r30)                # 4-byte Folded Reload
	loadli.w r20,  -228(r30)                # 4-byte Folded Reload
	setlt.u r4, r5, r4
	bneq r4, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r4, r19, 16
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r5
	lui r5, 1048560
	and r20, r4, r5
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	lui r5, 1048560
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r3, r4, r3
	bneq r3, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r3, r18, 16
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	and r3, r3, r5
	storeli.w r3, -216(r30)                 # 4-byte Folded Spill
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r2, r4, r2
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r3
	and r2, r2, r5
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r1
	loadli.w r15,  -212(r30)                # 4-byte Folded Reload
	loadli.w r19,  -232(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r3
	and r19, r1, r5
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r28
	loadli.w r14,  -236(r30)                # 4-byte Folded Reload
	addli r2, r8, 0
	bneq r1, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r3
	and r14, r1, r5
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r27
	loadli.w r13,  -216(r30)                # 4-byte Folded Reload
	loadli.w r18,  -240(r30)                # 4-byte Folded Reload
	loadli.w r28,  -252(r30)                # 4-byte Folded Reload
	addli r8, r6, 0
	bneq r1, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r6,  -352(r30)                 # 4-byte Folded Reload
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r18, r1, r5
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r25
	loadli.w r12,  -220(r30)                # 4-byte Folded Reload
	loadli.w r25,  -244(r30)                # 4-byte Folded Reload
	loadli.w r27,  -248(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_719
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r24
	beq r1, zero, .LBB0_720
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r23
	bneq r1, zero, .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r3
	and r28, r1, r5
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r22
	loadli.w r23,  -196(r30)                # 4-byte Folded Reload
	loadli.w r22,  -256(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r6,  -328(r30)                 # 4-byte Folded Reload
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r22, r1, r5
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r21
	bneq r1, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r3
	and r2, r1, r5
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r17
	loadli.w r17,  -260(r30)                # 4-byte Folded Reload
	loadli.w r21,  -264(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r17, r1, r5
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r16
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r6,  -300(r30)                 # 4-byte Folded Reload
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r21, r1, r5
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r11
	addli r16, r2, 0
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r3
	and r1, r1, r5
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r7
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r2,  -272(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r3
	and r8, r1, r5
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r1, r20, r15
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	addli r2, r15, 0
	bneq r1, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r20, 0
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	slli r1, r15, 9
	slli r3, r20, 9
	srli r4, r15, 23
	srli r5, r20, 23
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
	beq r1, zero, .LBB0_721
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r15, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_722
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r13, 0
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	slli r2, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r13, 23
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
	beq r2, zero, .LBB0_723
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_724
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r13, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r12, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r12, 0
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	slli r1, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r12, 23
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
	beq r1, zero, .LBB0_725
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_726
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r19, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r19, 0
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r19, 23
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
	beq r2, zero, .LBB0_727
# %bb.108:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_728
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r19, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r14, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r14, 0
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r14, 23
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
	beq r1, zero, .LBB0_729
# %bb.116:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_730
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r18, 0
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_731
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_732
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r18, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r25, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r1, zero, .LBB0_733
# %bb.132:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_734
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r27, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r27, 0
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r27, 23
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
	beq r2, zero, .LBB0_735
# %bb.140:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_736
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r28, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r28, 0
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r28, 23
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
	beq r1, zero, .LBB0_737
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_738
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r22, 0
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r22, 23
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
	beq r2, zero, .LBB0_739
# %bb.156:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_740
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r16, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r16, 0
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r16, 23
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
	beq r1, zero, .LBB0_741
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_742
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r17, 23
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
	beq r2, zero, .LBB0_743
# %bb.172:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_744
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r17, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_175:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_177:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r21, r2
	addli r3, r2, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r21, 0
.LBB0_179:                              #   in Loop: Header=BB0_3 Depth=1
	slli r1, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r21, 23
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
	beq r1, zero, .LBB0_745
# %bb.180:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_746
.LBB0_181:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_183:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_185:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r1
	addli r3, r1, 0
	bneq r2, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r7, 0
.LBB0_187:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r7, 23
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
	beq r2, zero, .LBB0_747
# %bb.188:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_748
.LBB0_189:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_191:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_193:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r8, r2
	addli r1, r2, 0
	bneq r3, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_195:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r8, 23
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
	beq r3, zero, .LBB0_749
# %bb.196:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_750
.LBB0_197:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r2, 0
.LBB0_199:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_201
.Ltmp2:
# %bb.200:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_201:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 49 35 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:49:35
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	addli r1, zero, 64
	blt.s r2, r1, .LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:35
	lui r3, 1046528
.LBB0_203:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	storeli.w r8, -272(r30)                 # 4-byte Folded Spill
	stores.w r3, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_717
# %bb.204:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	loads.w r3, 0(r1)
	loads.w r1, 4(r1)
.Ltmp3:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_206
# %bb.205:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_206:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r4, zero, .LBB0_834
# %bb.207:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_835
.LBB0_208:                              #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_210:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_212
# %bb.211:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_212:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -268(r30)                 # 4-byte Folded Reload
	loads.w r7, 8(r2)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r7, r1
	bneq r3, zero, .LBB0_214
# %bb.213:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r7, 0
.LBB0_214:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r7, 23
	srli r6, r1, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_836
# %bb.215:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_837
.LBB0_216:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	storeli.w r16, -508(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_218:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	storeli.w r21, -264(r30)                # 4-byte Folded Spill
	storeli.w r17, -260(r30)                # 4-byte Folded Spill
	storeli.w r22, -256(r30)                # 4-byte Folded Spill
	storeli.w r28, -252(r30)                # 4-byte Folded Spill
	storeli.w r25, -244(r30)                # 4-byte Folded Spill
	storeli.w r18, -240(r30)                # 4-byte Folded Spill
	storeli.w r14, -236(r30)                # 4-byte Folded Spill
	storeli.w r19, -232(r30)                # 4-byte Folded Spill
	storeli.w r20, -228(r30)                # 4-byte Folded Spill
	and r1, r3, r1
	bneq r1, zero, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r2, 0
.LBB0_220:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r16,  -268(r30)                # 4-byte Folded Reload
	addli r5, r27, 0
	loads.w r17, 144(r16)
	loads.w r13, 104(r16)
	loads.w r1, 68(r16)
	loads.w r11, 12(r16)
	loads.w r23, 16(r16)
	loads.w r24, 20(r16)
	loads.w r20, 24(r16)
	loads.w r14, 28(r16)
	loads.w r8, 32(r16)
	loads.w r6, 36(r16)
	loads.w r3, 40(r16)
	loads.w r12, 44(r16)
	loads.w r2, 48(r16)
	loads.w r25, 52(r16)
	loads.w r26, 56(r16)
	loads.w r4, 60(r16)
	loads.w r28, 64(r16)
	loads.w r9, 72(r16)
	loads.w r10, 76(r16)
	loads.w r15, 108(r16)
	loads.w r22, 148(r16)
	loads.w r21, 156(r16)
	storeli.w r17, -388(r30)                # 4-byte Folded Spill
	loads.w r17, 152(r16)
	storeli.w r13, -408(r30)                # 4-byte Folded Spill
	loads.w r13, 112(r16)
	storeli.w r1, -600(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r16)
	storeli.w r17, -376(r30)                # 4-byte Folded Spill
	loads.w r17, 160(r16)
	storeli.w r13, -404(r30)                # 4-byte Folded Spill
	loads.w r13, 116(r16)
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r16)
	storeli.w r17, -372(r30)                # 4-byte Folded Spill
	loads.w r17, 164(r16)
	storeli.w r13, -576(r30)                # 4-byte Folded Spill
	loads.w r13, 120(r16)
	storeli.w r1, -592(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r16)
	storeli.w r17, -564(r30)                # 4-byte Folded Spill
	loads.w r17, 168(r16)
	storeli.w r13, -400(r30)                # 4-byte Folded Spill
	loads.w r13, 124(r16)
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r16)
	storeli.w r17, -368(r30)                # 4-byte Folded Spill
	loads.w r17, 172(r16)
	storeli.w r13, -572(r30)                # 4-byte Folded Spill
	loads.w r13, 128(r16)
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
	loads.w r1, 96(r16)
	storeli.w r17, -560(r30)                # 4-byte Folded Spill
	loads.w r17, 176(r16)
	storeli.w r13, -396(r30)                # 4-byte Folded Spill
	loads.w r13, 132(r16)
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	loads.w r1, 100(r16)
	storeli.w r17, -360(r30)                # 4-byte Folded Spill
	loads.w r17, 180(r16)
	storeli.w r13, -568(r30)                # 4-byte Folded Spill
	loads.w r13, 136(r16)
	storeli.w r17, -556(r30)                # 4-byte Folded Spill
	loads.w r17, 184(r16)
	storeli.w r13, -392(r30)                # 4-byte Folded Spill
	loads.w r13, 140(r16)
	storeli.w r17, -352(r30)                # 4-byte Folded Spill
	loads.w r17, 188(r16)
	storeli.w r17, -552(r30)                # 4-byte Folded Spill
	loads.w r17, 192(r16)
	storeli.w r17, -344(r30)                # 4-byte Folded Spill
	loads.w r17, 196(r16)
	storeli.w r17, -548(r30)                # 4-byte Folded Spill
	loads.w r17, 200(r16)
	storeli.w r17, -336(r30)                # 4-byte Folded Spill
	loads.w r17, 204(r16)
	storeli.w r17, -544(r30)                # 4-byte Folded Spill
	loads.w r17, 208(r16)
	storeli.w r17, -328(r30)                # 4-byte Folded Spill
	loads.w r17, 212(r16)
	storeli.w r17, -540(r30)                # 4-byte Folded Spill
	loads.w r17, 216(r16)
	storeli.w r17, -320(r30)                # 4-byte Folded Spill
	loads.w r17, 220(r16)
	storeli.w r17, -536(r30)                # 4-byte Folded Spill
	loads.w r17, 224(r16)
	storeli.w r17, -312(r30)                # 4-byte Folded Spill
	loads.w r17, 228(r16)
	storeli.w r17, -532(r30)                # 4-byte Folded Spill
	loads.w r17, 232(r16)
	storeli.w r17, -300(r30)                # 4-byte Folded Spill
	loads.w r17, 236(r16)
	storeli.w r17, -528(r30)                # 4-byte Folded Spill
	loads.w r17, 240(r16)
	storeli.w r17, -524(r30)                # 4-byte Folded Spill
	loads.w r17, 244(r16)
	storeli.w r17, -520(r30)                # 4-byte Folded Spill
	loads.w r17, 248(r16)
	loads.w r16, 252(r16)
	storeli.w r17, -516(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r17, r11, r7
	storeli.w r16, -512(r30)                # 4-byte Folded Spill
	addli r16, r7, 0
	bneq r17, zero, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r11, 0
.LBB0_222:                              #   in Loop: Header=BB0_3 Depth=1
	slli r17, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r27, r7, 9
	srli r19, r11, 23
	srli r18, r7, 23
	seteq r17, r17, zero
	seteq r27, r27, zero
	andi r19, r19, 255
	andi r18, r18, 255
	setlti r18, r18, 255
	setlti r19, r19, 255
	or r17, r19, r17
	or r18, r18, r27
	and r17, r18, r17
	bneq r17, zero, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r16, 523264
.LBB0_224:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r16, 0
.LBB0_226:                              #   in Loop: Header=BB0_3 Depth=1
	addli r27, r1, 0
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
	storeli.w r21, -580(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r7, 0
.LBB0_228:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r7, zero, r16
	setle.f r17, r16, zero
	addli r1, r10, 0
	and r7, r17, r7
	bneq r7, zero, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r16, 0
.LBB0_230:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r16, r23, r11
	addli r7, r11, 0
	addli r10, r9, 0
	bneq r16, zero, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r23, 0
.LBB0_232:                              #   in Loop: Header=BB0_3 Depth=1
	slli r16, r23, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r17, r11, 9
	srli r18, r23, 23
	srli r19, r11, 23
	loadli.w r5,  -596(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -600(r30)                 # 4-byte Folded Reload
	seteq r16, r16, zero
	seteq r17, r17, zero
	andi r18, r18, 255
	andi r19, r19, 255
	setlti r18, r18, 255
	setlti r19, r19, 255
	or r16, r18, r16
	or r17, r19, r17
	and r16, r17, r16
	beq r16, zero, .LBB0_838
# %bb.233:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_839
.LBB0_234:                              #   in Loop: Header=BB0_3 Depth=1
	beq r23, zero, .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r11, 0
.LBB0_236:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r11, zero, r7
	setle.f r16, r7, zero
	and r11, r16, r11
	bneq r11, zero, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r7, 0
.LBB0_238:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r11, r24, r23
	addli r7, r23, 0
	bneq r11, zero, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r24, 0
.LBB0_240:                              #   in Loop: Header=BB0_3 Depth=1
	slli r11, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r16, r23, 9
	srli r17, r24, 23
	srli r18, r23, 23
	seteq r11, r11, zero
	seteq r16, r16, zero
	andi r17, r17, 255
	andi r18, r18, 255
	setlti r17, r17, 255
	setlti r18, r18, 255
	or r11, r17, r11
	or r16, r18, r16
	and r11, r16, r11
	beq r11, zero, .LBB0_840
# %bb.241:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r23, zero, .LBB0_841
.LBB0_242:                              #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r23, 0
.LBB0_244:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r11, zero, r7
	setle.f r16, r7, zero
	and r11, r16, r11
	bneq r11, zero, .LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r7, 0
.LBB0_246:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r11, r20, r24
	loadli.w r23,  -196(r30)                # 4-byte Folded Reload
	addli r7, r24, 0
	bneq r11, zero, .LBB0_248
# %bb.247:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r20, 0
.LBB0_248:                              #   in Loop: Header=BB0_3 Depth=1
	slli r11, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r16, r24, 9
	srli r17, r20, 23
	srli r18, r24, 23
	seteq r11, r11, zero
	seteq r16, r16, zero
	andi r17, r17, 255
	andi r18, r18, 255
	setlti r17, r17, 255
	setlti r18, r18, 255
	or r11, r17, r11
	or r16, r18, r16
	and r11, r16, r11
	beq r11, zero, .LBB0_842
# %bb.249:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_843
.LBB0_250:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r24, 0
.LBB0_252:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r11, zero, r7
	setle.f r16, r7, zero
	and r11, r16, r11
	bneq r11, zero, .LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r7, 0
.LBB0_254:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r11, r14, r20
	loadli.w r24,  -568(r30)                # 4-byte Folded Reload
	addli r7, r20, 0
	bneq r11, zero, .LBB0_256
# %bb.255:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r14, 0
.LBB0_256:                              #   in Loop: Header=BB0_3 Depth=1
	slli r11, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r16, r20, 9
	srli r17, r14, 23
	srli r18, r20, 23
	seteq r11, r11, zero
	seteq r16, r16, zero
	andi r17, r17, 255
	andi r18, r18, 255
	setlti r17, r17, 255
	setlti r18, r18, 255
	or r11, r17, r11
	or r16, r18, r16
	and r11, r16, r11
	beq r11, zero, .LBB0_844
# %bb.257:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_845
.LBB0_258:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r20, 0
.LBB0_260:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r11, zero, r7
	setle.f r16, r7, zero
	and r11, r16, r11
	bneq r11, zero, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r7, 0
.LBB0_262:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r11, r8, r14
	loadli.w r20,  -576(r30)                # 4-byte Folded Reload
	addli r7, r14, 0
	bneq r11, zero, .LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r8, 0
.LBB0_264:                              #   in Loop: Header=BB0_3 Depth=1
	slli r11, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r16, r14, 9
	srli r17, r8, 23
	srli r18, r14, 23
	seteq r11, r11, zero
	seteq r16, r16, zero
	andi r17, r17, 255
	andi r18, r18, 255
	setlti r17, r17, 255
	setlti r18, r18, 255
	or r11, r17, r11
	or r16, r18, r16
	and r11, r16, r11
	beq r11, zero, .LBB0_846
# %bb.265:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r18,  -592(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_847
.LBB0_266:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r14, 0
.LBB0_268:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r11, zero, r7
	setle.f r14, r7, zero
	and r11, r14, r11
	bneq r11, zero, .LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r7, 0
.LBB0_270:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r11, r6, r8
	addli r7, r8, 0
	bneq r11, zero, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r6, 0
.LBB0_272:                              #   in Loop: Header=BB0_3 Depth=1
	slli r11, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r14, r8, 9
	srli r16, r6, 23
	srli r17, r8, 23
	seteq r11, r11, zero
	seteq r14, r14, zero
	andi r16, r16, 255
	andi r17, r17, 255
	setlti r16, r16, 255
	setlti r17, r17, 255
	or r11, r16, r11
	or r14, r17, r14
	and r11, r14, r11
	beq r11, zero, .LBB0_848
# %bb.273:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r17,  -588(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_849
.LBB0_274:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r8, 0
.LBB0_276:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r8, zero, r7
	setle.f r11, r7, zero
	and r8, r11, r8
	bneq r8, zero, .LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_278:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r8, r3, r6
	addli r7, r6, 0
	bneq r8, zero, .LBB0_280
# %bb.279:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_280:                              #   in Loop: Header=BB0_3 Depth=1
	slli r8, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r11, r6, 9
	srli r14, r3, 23
	srli r16, r6, 23
	seteq r8, r8, zero
	seteq r11, r11, zero
	andi r14, r14, 255
	andi r16, r16, 255
	setlti r14, r14, 255
	setlti r16, r16, 255
	or r8, r14, r8
	or r11, r16, r11
	and r8, r11, r8
	beq r8, zero, .LBB0_850
# %bb.281:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r16,  -508(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_851
.LBB0_282:                              #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_284
.LBB0_283:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_284:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r6, zero, r7
	setle.f r8, r7, zero
	and r6, r8, r6
	bneq r6, zero, .LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r7, 0
.LBB0_286:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r7, r12, r3
	addli r6, r3, 0
	bneq r7, zero, .LBB0_288
# %bb.287:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r12, 0
.LBB0_288:                              #   in Loop: Header=BB0_3 Depth=1
	slli r7, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r3, 9
	srli r11, r12, 23
	srli r14, r3, 23
	seteq r7, r7, zero
	seteq r8, r8, zero
	andi r11, r11, 255
	andi r14, r14, 255
	setlti r11, r11, 255
	setlti r14, r14, 255
	or r7, r11, r7
	or r8, r14, r8
	and r7, r8, r7
	beq r7, zero, .LBB0_852
# %bb.289:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r14,  -236(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_853
.LBB0_290:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_292
.LBB0_291:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
.LBB0_292:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r6
	setle.f r7, r6, zero
	and r3, r7, r3
	bneq r3, zero, .LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r6, 0
.LBB0_294:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r6, r2, r12
	addli r3, r12, 0
	bneq r6, zero, .LBB0_296
# %bb.295:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r2, 0
.LBB0_296:                              #   in Loop: Header=BB0_3 Depth=1
	slli r6, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r12, 9
	srli r8, r2, 23
	srli r11, r12, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r6, r8, r6
	or r7, r11, r7
	and r6, r7, r6
	beq r6, zero, .LBB0_854
# %bb.297:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_855
.LBB0_298:                              #   in Loop: Header=BB0_3 Depth=1
	beq r2, zero, .LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r12, 0
.LBB0_300:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r6, zero, r3
	setle.f r7, r3, zero
	and r6, r7, r6
	bneq r6, zero, .LBB0_302
# %bb.301:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_302:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r6, r25, r2
	loadli.w r12,  -584(r30)                # 4-byte Folded Reload
	addli r3, r2, 0
	bneq r6, zero, .LBB0_304
# %bb.303:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_304:                              #   in Loop: Header=BB0_3 Depth=1
	slli r6, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r2, 9
	srli r8, r25, 23
	srli r11, r2, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r6, r8, r6
	or r7, r11, r7
	and r6, r7, r6
	beq r6, zero, .LBB0_856
# %bb.305:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r11,  -572(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_857
.LBB0_306:                              #   in Loop: Header=BB0_3 Depth=1
	beq r25, zero, .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r2, 0
.LBB0_308:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r6, r3, zero
	and r2, r6, r2
	bneq r2, zero, .LBB0_310
# %bb.309:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r3, 0
.LBB0_310:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r26, r25
	addli r2, r25, 0
	bneq r3, zero, .LBB0_312
# %bb.311:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r26, 0
.LBB0_312:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r25, 9
	srli r7, r26, 23
	srli r8, r25, 23
	seteq r3, r3, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r3, r7, r3
	or r6, r8, r6
	and r3, r6, r3
	beq r3, zero, .LBB0_858
# %bb.313:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r25, zero, .LBB0_859
.LBB0_314:                              #   in Loop: Header=BB0_3 Depth=1
	beq r26, zero, .LBB0_316
.LBB0_315:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r25, 0
.LBB0_316:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r6, r2, zero
	and r3, r6, r3
	bneq r3, zero, .LBB0_318
# %bb.317:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r2, 0
.LBB0_318:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r4, r26
	loadli.w r25,  -244(r30)                # 4-byte Folded Reload
	addli r2, r26, 0
	bneq r3, zero, .LBB0_320
# %bb.319:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_320:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r26, 9
	srli r7, r4, 23
	srli r8, r26, 23
	seteq r3, r3, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r3, r7, r3
	or r6, r8, r6
	and r3, r6, r3
	beq r3, zero, .LBB0_860
# %bb.321:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_861
.LBB0_322:                              #   in Loop: Header=BB0_3 Depth=1
	beq r4, zero, .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r26, 0
.LBB0_324:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r6, r2, zero
	and r3, r6, r3
	bneq r3, zero, .LBB0_326
# %bb.325:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_326:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r28, r4
	loadli.w r26,  -556(r30)                # 4-byte Folded Reload
	addli r2, r4, 0
	bneq r3, zero, .LBB0_328
# %bb.327:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r28, 0
.LBB0_328:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r4, 9
	srli r7, r28, 23
	srli r8, r4, 23
	seteq r3, r3, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r3, r7, r3
	or r6, r8, r6
	and r3, r6, r3
	beq r3, zero, .LBB0_862
# %bb.329:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -548(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_863
.LBB0_330:                              #   in Loop: Header=BB0_3 Depth=1
	beq r28, zero, .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r4, 0
.LBB0_332:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r2, 0
.LBB0_334:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r9, r28
	addli r2, r28, 0
	bneq r3, zero, .LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r9, 0
.LBB0_336:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r28, 9
	srli r6, r9, 23
	srli r7, r28, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r4, r7, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_864
# %bb.337:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_865
.LBB0_338:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_340
.LBB0_339:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r28, 0
.LBB0_340:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r2, 0
.LBB0_342:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r10, r9
	loadli.w r28,  -252(r30)                # 4-byte Folded Reload
	addli r2, r9, 0
	bneq r3, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r10, 0
.LBB0_344:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r9, 9
	srli r6, r10, 23
	srli r7, r9, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r4, r7, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_866
# %bb.345:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_867
.LBB0_346:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_348
.LBB0_347:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r9, 0
.LBB0_348:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r2, 0
.LBB0_350:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r1, r10
	loadli.w r9,  -560(r30)                 # 4-byte Folded Reload
	addli r2, r10, 0
	bneq r3, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_352:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r10, 9
	srli r6, r1, 23
	srli r7, r10, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r4, r7, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_868
# %bb.353:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_869
.LBB0_354:                              #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_356:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_358:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r1
	loadli.w r10,  -564(r30)                # 4-byte Folded Reload
	addli r2, r1, 0
	bneq r3, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r5, 0
.LBB0_360:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r3, zero, .LBB0_870
# %bb.361:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_871
.LBB0_362:                              #   in Loop: Header=BB0_3 Depth=1
	beq r5, zero, .LBB0_364
.LBB0_363:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_364:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	and r1, r3, r1
	bneq r1, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_366:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_368:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r18, 23
	srli r6, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r6, r6, 255
	setlti r4, r4, 255
	setlti r6, r6, 255
	or r2, r4, r2
	or r3, r6, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_872
# %bb.369:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -536(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_873
.LBB0_370:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_372
.LBB0_371:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r5, 0
.LBB0_372:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_374:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r18
	addli r1, r18, 0
	bneq r2, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_376:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r18, 9
	srli r4, r17, 23
	srli r5, r18, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_874
# %bb.377:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_875
.LBB0_378:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r18, 0
.LBB0_380:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_382:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r17
	loadli.w r21,  -264(r30)                # 4-byte Folded Reload
	addli r1, r17, 0
	bneq r2, zero, .LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_384:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r17, 9
	srli r4, r12, 23
	srli r5, r17, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_876
# %bb.385:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -412(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_877
.LBB0_386:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_388
.LBB0_387:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r17, 0
.LBB0_388:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_390:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	loadli.w r18,  -240(r30)                # 4-byte Folded Reload
	addli r1, r12, 0
	bneq r2, zero, .LBB0_392
# %bb.391:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_392:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r4, 23
	srli r5, r12, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_878
# %bb.393:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_879
.LBB0_394:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -412(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_396
.LBB0_395:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_396:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_398
# %bb.397:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_398:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r27, r5
	loadli.w r12,  -220(r30)                # 4-byte Folded Reload
	loadli.w r19,  -232(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_400:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r27, 23
	addli r17, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_880
# %bb.401:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -408(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_881
.LBB0_402:                              #   in Loop: Header=BB0_3 Depth=1
	beq r27, zero, .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r17, 0
.LBB0_404:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_406:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r27
	addli r1, r27, 0
	bneq r2, zero, .LBB0_408
# %bb.407:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_408:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r27, 9
	srli r4, r4, 23
	srli r5, r27, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_410:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_412:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -408(r30)                 # 4-byte Folded Reload
	addli r2, r27, 0
	addli r27, r14, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_414
# %bb.413:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_414:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r14,  -260(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_416
# %bb.415:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_416:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r5
	addli r17, r16, 0
	addli r1, r5, 0
	bneq r2, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_418:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r15, 23
	addli r16, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_882
# %bb.419:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -404(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_883
.LBB0_420:                              #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_422
.LBB0_421:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r16, 0
.LBB0_422:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_424:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r15
	addli r1, r15, 0
	addli r16, r17, 0
	bneq r2, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_426:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r15, 9
	srli r4, r4, 23
	srli r5, r15, 23
	addli r17, r14, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_884
# %bb.427:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_885
.LBB0_428:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -404(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_430
.LBB0_429:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_430:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_432:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_434:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r15, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_886
# %bb.435:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -400(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_887
.LBB0_436:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_438
.LBB0_437:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r15, 0
.LBB0_438:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_440:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_442:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r4, 23
	srli r5, r20, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_888
# %bb.443:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_889
.LBB0_444:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -400(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_446
.LBB0_445:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_446:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_448:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_450:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r20, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_890
# %bb.451:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -396(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_891
.LBB0_452:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_454
.LBB0_453:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r20, 0
.LBB0_454:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_456:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_458:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r4, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_892
# %bb.459:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_893
.LBB0_460:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -396(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_462
.LBB0_461:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_462:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r11,  -212(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_464
# %bb.463:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_464:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r24, r5
	loadli.w r15,  -228(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_466
# %bb.465:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r24, 0
.LBB0_466:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r24, 23
	addli r20, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_894
# %bb.467:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -392(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_895
.LBB0_468:                              #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_470
.LBB0_469:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r20, 0
.LBB0_470:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
.LBB0_472:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r24
	addli r1, r24, 0
	addli r20, r15, 0
	bneq r2, zero, .LBB0_474
# %bb.473:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_474:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r24, 9
	srli r4, r4, 23
	srli r5, r24, 23
	addli r15, r11, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_896
# %bb.475:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r11,  -580(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_897
.LBB0_476:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -392(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_478
.LBB0_477:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r24, 0
.LBB0_478:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_480
# %bb.479:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_480:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_482
# %bb.481:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_482:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r13, 23
	addli r24, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_898
# %bb.483:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_899
.LBB0_484:                              #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_486
.LBB0_485:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r24, 0
.LBB0_486:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_488:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r13
	addli r1, r13, 0
	bneq r2, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_490:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r13, 9
	srli r4, r4, 23
	srli r5, r13, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_900
# %bb.491:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_901
.LBB0_492:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_494
.LBB0_493:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r13, 0
.LBB0_494:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_496:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_498:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
	addli r13, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_902
# %bb.499:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_903
.LBB0_500:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_502
.LBB0_501:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r13, 0
.LBB0_502:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_504
# %bb.503:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_504:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_506
# %bb.505:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_506:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r4, 23
	srli r5, r22, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_904
# %bb.507:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_905
.LBB0_508:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -376(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_510
.LBB0_509:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_510:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_512
# %bb.511:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_512:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_514
# %bb.513:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_514:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r22, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_906
# %bb.515:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -372(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_907
.LBB0_516:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_518
.LBB0_517:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r22, 0
.LBB0_518:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_520
# %bb.519:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_520:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_522
# %bb.521:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_522:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r4, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_908
# %bb.523:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_909
.LBB0_524:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -372(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_526:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_528
# %bb.527:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_528:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_530
# %bb.529:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_530:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r27, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_910
# %bb.531:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -368(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_911
.LBB0_532:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_534
.LBB0_533:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r27, 0
.LBB0_534:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_536
# %bb.535:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_536:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_538
# %bb.537:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_538:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_540
# %bb.539:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_540:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_542
# %bb.541:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_542:                              #   in Loop: Header=BB0_3 Depth=1
	addli r2, r10, 0
	loadli.w r10,  -256(r30)                # 4-byte Folded Reload
	loadli.w r5,  -368(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_544
# %bb.543:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_544:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r22,  -248(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_546
# %bb.545:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_546:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r5
	loadli.w r27,  -216(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_548
# %bb.547:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_548:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r9, 23
	addli r13, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_912
# %bb.549:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -360(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_913
.LBB0_550:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_552
.LBB0_551:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r13, 0
.LBB0_552:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_554
# %bb.553:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_554:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	addli r1, r9, 0
	addli r13, r27, 0
	bneq r2, zero, .LBB0_556
# %bb.555:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_556:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r4, 23
	srli r5, r9, 23
	addli r27, r22, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_558
# %bb.557:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_558:                              #   in Loop: Header=BB0_3 Depth=1
	addli r22, r10, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_560
# %bb.559:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_560:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -360(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -552(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_562
# %bb.561:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_562:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_564
# %bb.563:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_564:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r26, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_566
# %bb.565:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_566:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r26, 23
	addli r9, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_914
# %bb.567:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -352(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_915
.LBB0_568:                              #   in Loop: Header=BB0_3 Depth=1
	beq r26, zero, .LBB0_570
.LBB0_569:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r9, 0
.LBB0_570:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_572
# %bb.571:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_572:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r26
	loadli.w r9,  -524(r30)                 # 4-byte Folded Reload
	addli r1, r26, 0
	bneq r2, zero, .LBB0_574
# %bb.573:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_574:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r26, 9
	srli r4, r4, 23
	srli r5, r26, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_916
# %bb.575:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_917
.LBB0_576:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -352(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r26, 0
.LBB0_578:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_580
# %bb.579:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_580:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_582
# %bb.581:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_582:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r26, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_918
# %bb.583:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -344(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_919
.LBB0_584:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_586
.LBB0_585:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r26, 0
.LBB0_586:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_588
# %bb.587:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_588:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_590
# %bb.589:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_590:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_920
# %bb.591:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_921
.LBB0_592:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -344(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_594
.LBB0_593:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_594:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_596
# %bb.595:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_596:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r5
	loadli.w r10,  -540(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_598
# %bb.597:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_598:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
	addli r24, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_922
# %bb.599:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -336(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_923
.LBB0_600:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r24, 0
.LBB0_602:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_604
# %bb.603:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_604:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r8
	loadli.w r24,  -544(r30)                # 4-byte Folded Reload
	addli r1, r8, 0
	bneq r2, zero, .LBB0_606
# %bb.605:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_606:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r4, 23
	srli r5, r8, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_924
# %bb.607:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_925
.LBB0_608:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -336(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_610
.LBB0_609:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
.LBB0_610:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_612
# %bb.611:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_612:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r24, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_614
# %bb.613:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r24, 0
.LBB0_614:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r24, 23
	addli r8, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_926
# %bb.615:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_927
.LBB0_616:                              #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_618
.LBB0_617:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r8, 0
.LBB0_618:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_620
# %bb.619:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
.LBB0_620:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r24
	loadli.w r8,  -528(r30)                 # 4-byte Folded Reload
	addli r1, r24, 0
	bneq r2, zero, .LBB0_622
# %bb.621:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_622:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r24, 9
	srli r4, r4, 23
	srli r5, r24, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_928
# %bb.623:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_929
.LBB0_624:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -328(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_626
.LBB0_625:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r24, 0
.LBB0_626:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_628
# %bb.627:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_628:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_630
# %bb.629:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_630:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r24, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_930
# %bb.631:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -320(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_931
.LBB0_632:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_634
.LBB0_633:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r24, 0
.LBB0_634:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_636
# %bb.635:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_636:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_638
# %bb.637:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_638:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_932
# %bb.639:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_933
.LBB0_640:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -320(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_642:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_644
# %bb.643:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_644:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_646
# %bb.645:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_646:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r6, 23
	addli r11, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_934
# %bb.647:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -312(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_935
.LBB0_648:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_650
.LBB0_649:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r11, 0
.LBB0_650:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_652
# %bb.651:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_652:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r6
	loadli.w r11,  -532(r30)                # 4-byte Folded Reload
	addli r1, r6, 0
	bneq r2, zero, .LBB0_654
# %bb.653:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_654:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r6, 9
	srli r4, r4, 23
	srli r5, r6, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_936
# %bb.655:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r6, zero, .LBB0_937
.LBB0_656:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -312(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_658
.LBB0_657:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_658:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_660
# %bb.659:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_660:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_662
# %bb.661:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_662:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r6, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_938
# %bb.663:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -300(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_939
.LBB0_664:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_666
.LBB0_665:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r6, 0
.LBB0_666:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_668
# %bb.667:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_668:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	loadli.w r6,  -516(r30)                 # 4-byte Folded Reload
	addli r1, r11, 0
	bneq r2, zero, .LBB0_670
# %bb.669:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_670:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r4, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_940
# %bb.671:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_941
.LBB0_672:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -300(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_674
.LBB0_673:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_674:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_676
# %bb.675:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_676:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_678
# %bb.677:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_678:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
	addli r24, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_942
# %bb.679:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_943
.LBB0_680:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_682
.LBB0_681:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r24, 0
.LBB0_682:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_684
# %bb.683:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_684:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_686
# %bb.685:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_686:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r9, 23
	srli r5, r8, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_944
# %bb.687:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_945
.LBB0_688:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_690
.LBB0_689:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r8, 0
.LBB0_690:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_692
# %bb.691:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_692:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -520(r30)                 # 4-byte Folded Reload
	loadli.w r26,  -380(r30)                # 4-byte Folded Reload
	addli r1, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r9
	bneq r2, zero, .LBB0_694
# %bb.693:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_694:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r8, 23
	srli r5, r9, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_946
# %bb.695:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_947
.LBB0_696:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_698
.LBB0_697:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_698:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_700
# %bb.699:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_700:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_702
# %bb.701:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_702:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r6, 23
	srli r5, r8, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_948
# %bb.703:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_949
.LBB0_704:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_706
.LBB0_705:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r8, 0
.LBB0_706:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_708
# %bb.707:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_708:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -512(r30)                 # 4-byte Folded Reload
	addli r1, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r6
	bneq r2, zero, .LBB0_710
# %bb.709:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_710:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r6, 9
	srli r4, r8, 23
	srli r5, r6, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_950
# %bb.711:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r6, zero, .LBB0_951
.LBB0_712:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r6, 0
.LBB0_714:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_716
.Ltmp4:
# %bb.715:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_716:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	stores.w r8, 0(r1)
.LBB0_717:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	addli r24, r26, 0
	loads.w r1, 0(r1)
	.loc	1 51 19 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:51:19
	sub.f.rn r8, r14, r1
	sub.f.rn r14, r22, r1
	sub.f.rn r22, r7, r1
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	sub.f.rn r9, r18, r1
	sub.f.rn r10, r25, r1
	sub.f.rn r5, r12, r1
	sub.f.rn r6, r19, r1
	sub.f.rn r17, r17, r1
	sub.f.rn r21, r21, r1
	sub.f.rn r2, r15, r1
	sub.f.rn r12, r28, r1
	sub.f.rn r3, r20, r1
	sub.f.rn r16, r16, r1
	sub.f.rn r4, r13, r1
	sub.f.rn r11, r27, r1
	sub.f.rn r1, r7, r1
	.loc	1 52 26                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:52:26
	exp.f.rn r7, r2
	exp.f.rn r2, r3
	exp.f.rn r3, r4
	exp.f.rn r4, r5
	exp.f.rn r5, r6
	exp.f.rn r6, r8
	exp.f.rn r13, r11
	exp.f.rn r15, r12
	exp.f.rn r12, r22
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r19, r14
	exp.f.rn r20, r16
	exp.f.rn r18, r17
	exp.f.rn r25, r21
.Ltmp5:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15                        # standard.py:263:15
	loadli.w r8,  -208(r30)                 # 4-byte Folded Reload
.Ltmp6:
	.loc	1 52 26                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:52:26
	exp.f.rn r11, r1
.Ltmp7:
	.loc	3 263 15                        # standard.py:263:15
	addli r1, zero, 64
	storeli.w r12, -264(r30)                # 4-byte Folded Spill
	storeli.w r11, -272(r30)                # 4-byte Folded Spill
	blt.s r8, r1, .LBB0_751
.Ltmp8:
# %bb.718:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_752
.LBB0_719:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -344(r30)                 # 4-byte Folded Reload
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r25, r1, r5
	.loc	1 45 19 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r24
	bneq r1, zero, .LBB0_67
.LBB0_720:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	loadli.w r6,  -336(r30)                 # 4-byte Folded Reload
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r27, r1, r5
	.loc	1 45 19                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:45:19
	setlt.u r1, r4, r23
	beq r1, zero, .LBB0_68
	j .LBB0_69
.LBB0_721:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:19
	lui r2, 523264
	addli r3, r15, 0
.Ltmp9:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r15, zero, .LBB0_85
.LBB0_722:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	addli r1, r20, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_86
	j .LBB0_87
.LBB0_723:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_93
.LBB0_724:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r13, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_94
	j .LBB0_95
.LBB0_725:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_101
.LBB0_726:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_102
	j .LBB0_103
.LBB0_727:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_109
.LBB0_728:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r19, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_110
	j .LBB0_111
.LBB0_729:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_117
.LBB0_730:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r14, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_118
	j .LBB0_119
.LBB0_731:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_125
.LBB0_732:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r18, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_126
	j .LBB0_127
.LBB0_733:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_133
.LBB0_734:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_134
	j .LBB0_135
.LBB0_735:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_141
.LBB0_736:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_142
	j .LBB0_143
.LBB0_737:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_149
.LBB0_738:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_150
	j .LBB0_151
.LBB0_739:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_157
.LBB0_740:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_158
	j .LBB0_159
.LBB0_741:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_165
.LBB0_742:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r16, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_166
	j .LBB0_167
.LBB0_743:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_173
.LBB0_744:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r17, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_174
	j .LBB0_175
.LBB0_745:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_181
.LBB0_746:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	addli r1, r21, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_182
	j .LBB0_183
.LBB0_747:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_189
.LBB0_748:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	addli r2, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_190
	j .LBB0_191
.LBB0_749:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_197
.LBB0_750:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
	addli r3, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_198
	j .LBB0_199
.Ltmp10:
.LBB0_751:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r7, r2
	add.f.rn r1, r3, r1
	add.f.rn r1, r4, r1
	add.f.rn r1, r5, r1
	add.f.rn r1, r6, r1
	add.f.rn r1, r9, r1
	add.f.rn r1, r10, r1
	add.f.rn r1, r13, r1
	add.f.rn r1, r15, r1
	add.f.rn r1, r19, r1
	add.f.rn r1, r20, r1
	add.f.rn r1, r18, r1
	add.f.rn r1, r25, r1
	add.f.rn r1, r12, r1
	add.f.rn r1, r11, r1
.LBB0_752:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r8,  -428(r30)                 # 4-byte Folded Reload
	lui r21, 522240
	stores.w r1, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r24
	sync_group
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_754
# %bb.753:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r12,  -384(r30)                # 4-byte Folded Reload
	loads.w r1, 0(r12)
	loads.w r11, 4(r12)
	loads.w r8, 8(r12)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r11
	loads.w r11, 12(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 16(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 20(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 24(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 28(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 32(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 36(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 40(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 44(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 48(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 52(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 56(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 60(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 64(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 68(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 72(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 76(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 80(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 84(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 88(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 92(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 96(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 100(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 104(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 108(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 112(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 116(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 120(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 124(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 128(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 132(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 136(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 140(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 144(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 148(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 152(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 156(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 160(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 164(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 168(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 172(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 176(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 180(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 184(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 188(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 192(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 196(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 200(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 204(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 208(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 212(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 216(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 220(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 224(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 228(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 232(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 236(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 240(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 244(r12)
	add.f.rn r1, r1, r8
	loads.w r8, 248(r12)
	add.f.rn r1, r1, r11
	loads.w r11, 252(r12)
	add.f.rn r1, r1, r8
	add.f.rn r1, r1, r11
	stores.w r1, 0(r12)
.Ltmp11:
.LBB0_754:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r24
	sync_group
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r1)
	.loc	1 56 21 is_stmt 1               # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:56:21
	div.f.rn r27, r7, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r11, r27, r23
	setlt.u r7, r21, r11
	bneq r7, zero, .LBB0_756
# %bb.755:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49 is_stmt 0                # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r27, -208(r30)                # 4-byte Folded Spill
	j .LBB0_757
.LBB0_756:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r7, 1024
	or r7, r27, r7
	storeli.w r7, -208(r30)                 # 4-byte Folded Spill
.LBB0_757:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r28, r2, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r2, r28, r23
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	setlt.u r2, r21, r2
	bneq r2, zero, .LBB0_759
# %bb.758:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r28, -212(r30)                # 4-byte Folded Spill
	j .LBB0_760
.LBB0_759:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r28, r2
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
.LBB0_760:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r3, r3, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r16, r3, r23
	setlt.u r2, r21, r16
	bneq r2, zero, .LBB0_762
# %bb.761:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r3, -216(r30)                 # 4-byte Folded Spill
	j .LBB0_763
.LBB0_762:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r3, r2
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
.LBB0_763:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r4, r4, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r17, r4, r23
	setlt.u r2, r21, r17
	bneq r2, zero, .LBB0_765
# %bb.764:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r4, -220(r30)                 # 4-byte Folded Spill
	j .LBB0_766
.LBB0_765:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r4, r2
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
.LBB0_766:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r5, r5, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r2, r5, r23
	setlt.u r7, r21, r2
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	bneq r7, zero, .LBB0_768
# %bb.767:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r5, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_769
.LBB0_768:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r5, r2
	storeli.w r2, -224(r30)                 # 4-byte Folded Spill
.LBB0_769:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r6, r6, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r2, r6, r23
	setlt.u r8, r21, r2
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	bneq r8, zero, .LBB0_771
# %bb.770:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r6, -228(r30)                 # 4-byte Folded Spill
	j .LBB0_772
.LBB0_771:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r6, r2
	storeli.w r2, -228(r30)                 # 4-byte Folded Spill
.LBB0_772:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r9, r9, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r14, r9, r23
	setlt.u r8, r21, r14
	bneq r8, zero, .LBB0_774
# %bb.773:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r9, -232(r30)                 # 4-byte Folded Spill
	j .LBB0_775
.LBB0_774:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r9, r2
	storeli.w r2, -232(r30)                 # 4-byte Folded Spill
.LBB0_775:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r10, r10, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r12, r10, r23
	setlt.u r8, r21, r12
	bneq r8, zero, .LBB0_777
# %bb.776:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r10, -236(r30)                # 4-byte Folded Spill
	j .LBB0_778
.LBB0_777:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r2, 1024
	or r2, r10, r2
	storeli.w r2, -236(r30)                 # 4-byte Folded Spill
.LBB0_778:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r13, r13, r1
	lui r2, 522240
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r8, r13, r23
	setlt.u r21, r21, r8
	bneq r21, zero, .LBB0_780
# %bb.779:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r13, -240(r30)                # 4-byte Folded Spill
	j .LBB0_781
.LBB0_780:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r21, 1024
	or r21, r13, r21
	storeli.w r21, -240(r30)                # 4-byte Folded Spill
.LBB0_781:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r15, r15, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r22, r15, r23
	setlt.u r21, r2, r22
	bneq r21, zero, .LBB0_783
# %bb.782:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r15, -244(r30)                # 4-byte Folded Spill
	j .LBB0_784
.LBB0_783:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r21, 1024
	or r21, r15, r21
	storeli.w r21, -244(r30)                # 4-byte Folded Spill
.LBB0_784:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r19, r19, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r24, r19, r23
	setlt.u r21, r2, r24
	bneq r21, zero, .LBB0_786
# %bb.785:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r19, -248(r30)                # 4-byte Folded Spill
	j .LBB0_787
.LBB0_786:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r21, 1024
	or r21, r19, r21
	storeli.w r21, -248(r30)                # 4-byte Folded Spill
.LBB0_787:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r20, r20, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	and r23, r20, r23
	setlt.u r21, r2, r23
	bneq r21, zero, .LBB0_789
# %bb.788:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r20, -252(r30)                # 4-byte Folded Spill
	j .LBB0_790
.LBB0_789:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r21, 1024
	or r21, r20, r21
	storeli.w r21, -252(r30)                # 4-byte Folded Spill
.LBB0_790:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r18, r18, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r21,  -196(r30)                # 4-byte Folded Reload
	and r21, r18, r21
	setlt.u r26, r2, r21
	bneq r26, zero, .LBB0_792
# %bb.791:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r18, -256(r30)                # 4-byte Folded Spill
	j .LBB0_793
.LBB0_792:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r26, 1024
	or r26, r18, r26
	storeli.w r26, -256(r30)                # 4-byte Folded Spill
.LBB0_793:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	div.f.rn r25, r25, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r26,  -196(r30)                # 4-byte Folded Reload
	and r7, r25, r26
	setlt.u r26, r2, r7
	storeli.w r7, -320(r30)                 # 4-byte Folded Spill
	bneq r26, zero, .LBB0_795
# %bb.794:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r25, -260(r30)                # 4-byte Folded Spill
	j .LBB0_796
.LBB0_795:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r26, 1024
	or r26, r25, r26
	storeli.w r26, -260(r30)                # 4-byte Folded Spill
.LBB0_796:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	loadli.w r26,  -264(r30)                # 4-byte Folded Reload
	div.f.rn r7, r26, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r26,  -196(r30)                # 4-byte Folded Reload
	and r26, r7, r26
	storeli.w r7, -376(r30)                 # 4-byte Folded Spill
	storeli.w r26, -312(r30)                # 4-byte Folded Spill
	setlt.u r26, r2, r26
	bneq r26, zero, .LBB0_798
# %bb.797:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r7, -264(r30)                 # 4-byte Folded Spill
	j .LBB0_799
.LBB0_798:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r26, 1024
	or r26, r7, r26
	storeli.w r26, -264(r30)                # 4-byte Folded Spill
.LBB0_799:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:0
	loadli.w r26,  -272(r30)                # 4-byte Folded Reload
	div.f.rn r26, r26, r1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	and r1, r26, r1
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	setlt.u r1, r2, r1
	bneq r1, zero, .LBB0_801
# %bb.800:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	storeli.w r26, -272(r30)                # 4-byte Folded Spill
	j .LBB0_802
.LBB0_801:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	lui r1, 1024
	or r1, r26, r1
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
.LBB0_802:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r11
	bneq r1, zero, .LBB0_804
# %bb.803:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r27, 16
	loadli.w r11,  -204(r30)                # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r11
	lui r11, 1048560
	and r1, r1, r11
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
.LBB0_804:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r2
	bneq r1, zero, .LBB0_806
# %bb.805:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r28, 16
	loadli.w r11,  -204(r30)                # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r11
	lui r11, 1048560
	and r1, r1, r11
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_806:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r16
	bneq r1, zero, .LBB0_808
# %bb.807:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r3
	lui r3, 1048560
	and r1, r1, r3
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
.LBB0_808:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r17
	bneq r1, zero, .LBB0_810
# %bb.809:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	lui r4, 1048560
	add.s r1, r1, r3
	and r1, r1, r4
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
.LBB0_810:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	setlt.u r1, r4, r1
	bneq r1, zero, .LBB0_812
# %bb.811:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r5, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
.LBB0_812:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	lui r2, 1048560
	setlt.u r1, r4, r1
	beq r1, zero, .LBB0_827
# %bb.813:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r14
	beq r1, zero, .LBB0_828
.LBB0_814:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r12
	beq r1, zero, .LBB0_829
.LBB0_815:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r8
	beq r1, zero, .LBB0_830
.LBB0_816:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r22
	beq r1, zero, .LBB0_831
.LBB0_817:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r24
	beq r1, zero, .LBB0_832
.LBB0_818:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r23
	beq r1, zero, .LBB0_833
.LBB0_819:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r4, r21
	bneq r1, zero, .LBB0_821
.LBB0_820:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -256(r30)                 # 4-byte Folded Spill
.LBB0_821:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -296(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -440(r30)                 # 4-byte Folded Reload
	storeli.w r26, -372(r30)                # 4-byte Folded Spill
	add.s r6, r3, r7
	loadli.w r3,  -452(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r7
	loadli.w r1,  -444(r30)                 # 4-byte Folded Reload
	add.s r11, r3, r7
	loadli.w r3,  -456(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r7
	add.s r10, r3, r7
	loadli.w r3,  -460(r30)                 # 4-byte Folded Reload
	add.s r17, r3, r7
	loadli.w r3,  -464(r30)                 # 4-byte Folded Reload
	add.s r16, r3, r7
	loadli.w r3,  -468(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	add.s r14, r3, r7
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	setlt.u r3, r4, r3
	loadli.w r4,  -476(r30)                 # 4-byte Folded Reload
	add.s r28, r4, r7
	loadli.w r4,  -480(r30)                 # 4-byte Folded Reload
	add.s r27, r4, r7
	loadli.w r4,  -484(r30)                 # 4-byte Folded Reload
	add.s r22, r4, r7
	loadli.w r4,  -488(r30)                 # 4-byte Folded Reload
	add.s r5, r4, r7
	loadli.w r4,  -492(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r7
	storeli.w r4, -320(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -496(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r7
	storeli.w r4, -296(r30)                 # 4-byte Folded Spill
	bneq r3, zero, .LBB0_823
# %bb.822:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r3, r25, 16
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r4
	lui r4, 1048560
	and r3, r3, r4
	storeli.w r3, -260(r30)                 # 4-byte Folded Spill
.LBB0_823:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	sext_int2long r[2:3], r2
	addli r9, zero, 1
	sext_int2long r[7:8], r1
	sll.d r[1:2], r[2:3], r9
	sll.d r[3:4], r[7:8], r9
	store.d r[1:2], -328(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r6
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r10
	sll.d r[1:2], r[1:2], r9
	sll.d r[12:13], r[3:4], r9
	sext_int2long r[3:4], r16
	store.d r[1:2], -360(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r11
	sll.d r[20:21], r[3:4], r9
	sext_int2long r[3:4], r14
	sll.d r[1:2], r[1:2], r9
	sll.d r[25:26], r[3:4], r9
	sext_int2long r[3:4], r27
	store.d r[1:2], -368(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r17
	sll.d r[16:17], r[3:4], r9
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r3,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -312(r30)                 # 4-byte Folded Reload
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	sll.d r[18:19], r[1:2], r9
	sext_int2long r[1:2], r15
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r7, r3, r4
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	sext_int2long r[3:4], r5
	loadli.w r5,  -296(r30)                 # 4-byte Folded Reload
	sll.d r[23:24], r[1:2], r9
	sext_int2long r[1:2], r28
	sll.d r[14:15], r[1:2], r9
	sext_int2long r[1:2], r22
	sext_int2long r[5:6], r5
	sll.d r[27:28], r[1:2], r9
	sll.d r[1:2], r[3:4], r9
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	sll.d r[5:6], r[5:6], r9
	sext_int2long r[3:4], r3
	sll.d r[3:4], r[3:4], r9
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	bneq r7, zero, .LBB0_825
# %bb.824:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	loadli.w r8,  -376(r30)                 # 4-byte Folded Reload
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	loadli.w r8,  -204(r30)                 # 4-byte Folded Reload
	add.s r7, r7, r8
	lui r8, 1048560
	and r7, r7, r8
	storeli.w r7, -264(r30)                 # 4-byte Folded Spill
.LBB0_825:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[7:8], 16(r30)
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	add.ul r[18:19], r[7:8], r[18:19]
	add.ul r[11:12], r[7:8], r[12:13]
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r13,  -200(r30)                # 4-byte Folded Reload
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	add.ul r[25:26], r[7:8], r[25:26]
	add.ul r[27:28], r[7:8], r[27:28]
	store.d r[9:10], -336(r30)              # 8-byte Folded Spill
	load.d r[9:10], -328(r30)               # 8-byte Folded Reload
	store.d r[18:19], -312(r30)             # 8-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	loadli.w r18,  -300(r30)                # 4-byte Folded Reload
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	add.ul r[19:20], r[7:8], r[20:21]
	add.ul r[21:22], r[7:8], r[23:24]
	add.ul r[23:24], r[7:8], r[16:17]
	add.ul r[9:10], r[7:8], r[9:10]
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r18, r13, r18
	.loc	1 58 0                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:0
	add.ul r[13:14], r[7:8], r[14:15]
	add.ul r[15:16], r[7:8], r[1:2]
	add.ul r[1:2], r[7:8], r[3:4]
	loadli.w r4,  -272(r30)                 # 4-byte Folded Reload
	lui r3, 1048560
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	load.d r[9:10], -352(r30)               # 8-byte Folded Reload
	store.d r[1:2], -288(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[7:8], r[5:6]
	store.d r[1:2], -296(r30)               # 8-byte Folded Spill
	add.ul r[9:10], r[7:8], r[9:10]
	store.d r[9:10], -320(r30)              # 8-byte Folded Spill
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	load.d r[9:10], -368(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	bneq r18, zero, .LBB0_2
# %bb.826:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	loadli.w r2,  -372(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r4, r1, r3
	j .LBB0_2
.LBB0_827:                              #   in Loop: Header=BB0_3 Depth=1
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r14
	bneq r1, zero, .LBB0_814
.LBB0_828:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r12
	bneq r1, zero, .LBB0_815
.LBB0_829:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r8
	bneq r1, zero, .LBB0_816
.LBB0_830:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r22
	bneq r1, zero, .LBB0_817
.LBB0_831:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r24
	bneq r1, zero, .LBB0_818
.LBB0_832:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r23
	bneq r1, zero, .LBB0_819
.LBB0_833:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r3
	and r1, r1, r2
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
	.loc	1 58 49                         # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:49
	setlt.u r1, r4, r21
	beq r1, zero, .LBB0_820
	j .LBB0_821
.LBB0_834:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:0:49
	lui r2, 523264
.Ltmp12:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_208
.LBB0_835:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_209
	j .LBB0_210
.LBB0_836:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_216
.LBB0_837:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	storeli.w r16, -508(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_217
	j .LBB0_218
.LBB0_838:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_234
.LBB0_839:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_235
	j .LBB0_236
.LBB0_840:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r23, zero, .LBB0_242
.LBB0_841:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_243
	j .LBB0_244
.LBB0_842:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_250
.LBB0_843:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_251
	j .LBB0_252
.LBB0_844:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_258
.LBB0_845:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_259
	j .LBB0_260
.LBB0_846:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	loadli.w r18,  -592(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_266
.LBB0_847:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_267
	j .LBB0_268
.LBB0_848:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	loadli.w r17,  -588(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_274
.LBB0_849:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_275
	j .LBB0_276
.LBB0_850:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	loadli.w r16,  -508(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_282
.LBB0_851:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_283
	j .LBB0_284
.LBB0_852:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r6, 523264
	loadli.w r14,  -236(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_290
.LBB0_853:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_291
	j .LBB0_292
.LBB0_854:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_298
.LBB0_855:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_299
	j .LBB0_300
.LBB0_856:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r11,  -572(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_306
.LBB0_857:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_307
	j .LBB0_308
.LBB0_858:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_314
.LBB0_859:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_315
	j .LBB0_316
.LBB0_860:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_322
.LBB0_861:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_323
	j .LBB0_324
.LBB0_862:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	loadli.w r8,  -548(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_330
.LBB0_863:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_331
	j .LBB0_332
.LBB0_864:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_338
.LBB0_865:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_339
	j .LBB0_340
.LBB0_866:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_346
.LBB0_867:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_347
	j .LBB0_348
.LBB0_868:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_354
.LBB0_869:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_355
	j .LBB0_356
.LBB0_870:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_362
.LBB0_871:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_363
	j .LBB0_364
.LBB0_872:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r6,  -536(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_370
.LBB0_873:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_371
	j .LBB0_372
.LBB0_874:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_378
.LBB0_875:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_379
	j .LBB0_380
.LBB0_876:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -412(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_386
.LBB0_877:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_387
	j .LBB0_388
.LBB0_878:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_394
.LBB0_879:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -412(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_395
	j .LBB0_396
.LBB0_880:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -408(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_402
.LBB0_881:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_403
	j .LBB0_404
.LBB0_882:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -404(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_420
.LBB0_883:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_421
	j .LBB0_422
.LBB0_884:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r14, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_428
.LBB0_885:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	loadli.w r5,  -404(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_429
	j .LBB0_430
.LBB0_886:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -400(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_436
.LBB0_887:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_437
	j .LBB0_438
.LBB0_888:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_444
.LBB0_889:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r5,  -400(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_445
	j .LBB0_446
.LBB0_890:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -396(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_452
.LBB0_891:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_453
	j .LBB0_454
.LBB0_892:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_460
.LBB0_893:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -396(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_461
	j .LBB0_462
.LBB0_894:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -392(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_468
.LBB0_895:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_469
	j .LBB0_470
.LBB0_896:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r11,  -580(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_476
.LBB0_897:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	loadli.w r5,  -392(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_477
	j .LBB0_478
.LBB0_898:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_484
.LBB0_899:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_485
	j .LBB0_486
.LBB0_900:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_492
.LBB0_901:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_493
	j .LBB0_494
.LBB0_902:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_500
.LBB0_903:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_501
	j .LBB0_502
.LBB0_904:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_508
.LBB0_905:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -376(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_509
	j .LBB0_510
.LBB0_906:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -372(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_516
.LBB0_907:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_517
	j .LBB0_518
.LBB0_908:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_524
.LBB0_909:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -372(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_525
	j .LBB0_526
.LBB0_910:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -368(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_532
.LBB0_911:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_533
	j .LBB0_534
.LBB0_912:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -360(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_550
.LBB0_913:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_551
	j .LBB0_552
.LBB0_914:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -352(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_568
.LBB0_915:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_569
	j .LBB0_570
.LBB0_916:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_576
.LBB0_917:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	loadli.w r5,  -352(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_577
	j .LBB0_578
.LBB0_918:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -344(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_584
.LBB0_919:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_585
	j .LBB0_586
.LBB0_920:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_592
.LBB0_921:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r5,  -344(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_593
	j .LBB0_594
.LBB0_922:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -336(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_600
.LBB0_923:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_601
	j .LBB0_602
.LBB0_924:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_608
.LBB0_925:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	loadli.w r5,  -336(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_609
	j .LBB0_610
.LBB0_926:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_616
.LBB0_927:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_617
	j .LBB0_618
.LBB0_928:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_624
.LBB0_929:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	loadli.w r5,  -328(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_625
	j .LBB0_626
.LBB0_930:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -320(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_632
.LBB0_931:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_633
	j .LBB0_634
.LBB0_932:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_640
.LBB0_933:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r5,  -320(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_641
	j .LBB0_642
.LBB0_934:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -312(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_648
.LBB0_935:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_649
	j .LBB0_650
.LBB0_936:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_656
.LBB0_937:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	loadli.w r5,  -312(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_657
	j .LBB0_658
.LBB0_938:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -300(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_664
.LBB0_939:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_665
	j .LBB0_666
.LBB0_940:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_672
.LBB0_941:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -300(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_673
	j .LBB0_674
.LBB0_942:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_680
.LBB0_943:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_681
	j .LBB0_682
.LBB0_944:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_688
.LBB0_945:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_689
	j .LBB0_690
.LBB0_946:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_696
.LBB0_947:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_697
	j .LBB0_698
.LBB0_948:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_704
.LBB0_949:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_705
	j .LBB0_706
.LBB0_950:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_712
.LBB0_951:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_713
	j .LBB0_714
.Ltmp13:
.LBB0_952:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py:58:4
	addli sp, r30, -640
	addli sp, sp, 640
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
	.long	704                             # 0x2c0
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
.asciz	"cq23sp7462z6c54wtd3n7fy32u54bt5sowlp7aadv2sdgi5xy7ql.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/q2" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
