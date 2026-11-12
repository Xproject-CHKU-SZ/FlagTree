	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/y6" "cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py"
	.loc	1 22 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -704
	addli r30, sp, 640
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r11, 0
	loadli.w r7,  44(r30)
	loadli.w r4,  40(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  48(r30)
	ori r20, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	storeli.w r8, -500(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	storeli.w r4, -504(r30)                 # 4-byte Folded Spill
	ble.s r4, r11, .LBB0_174
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r9,  -500(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	load.d r[7:8], 8(r30)
	lui r18, 1024
	vxor.u.mz vr0{mr1}, vr0, vr0
	storeli.w r20, -508(r30)                # 4-byte Folded Spill
	div.s r6, r1, r4
	load.d r[4:5], 16(r30)
	addli r9, r9, 1040
	storeli.w r9, -516(r30)                 # 4-byte Folded Spill
	load_param_i r9, 1
	storeli.w r9, -524(r30)                 # 4-byte Folded Spill
	storeli.w r6, -512(r30)                 # 4-byte Folded Spill
	slli r6, r6, 6
	sub.s r6, r1, r6
	andi r1, r1, 63
	slli r6, r6, 4
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r9, r6, 1
	storeli.w r6, -520(r30)                 # 4-byte Folded Spill
	ori r1, r1, 4095
	storeli.w r9, -528(r30)                 # 4-byte Folded Spill
	ori r9, r6, 2
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	storeli.w r9, -532(r30)                 # 4-byte Folded Spill
	ori r9, r6, 3
	ori r14, r1, 4095
	storeli.w r9, -536(r30)                 # 4-byte Folded Spill
	ori r9, r6, 4
	storeli.w r14, -264(r30)                # 4-byte Folded Spill
	storeli.w r9, -540(r30)                 # 4-byte Folded Spill
	ori r9, r6, 5
	storeli.w r9, -544(r30)                 # 4-byte Folded Spill
	ori r9, r6, 6
	storeli.w r9, -548(r30)                 # 4-byte Folded Spill
	ori r9, r6, 7
	storeli.w r9, -552(r30)                 # 4-byte Folded Spill
	ori r9, r6, 8
	storeli.w r9, -556(r30)                 # 4-byte Folded Spill
	ori r9, r6, 9
	storeli.w r9, -560(r30)                 # 4-byte Folded Spill
	ori r9, r6, 10
	storeli.w r9, -564(r30)                 # 4-byte Folded Spill
	ori r9, r6, 11
	storeli.w r9, -568(r30)                 # 4-byte Folded Spill
	ori r9, r6, 12
	storeli.w r9, -572(r30)                 # 4-byte Folded Spill
	ori r9, r6, 13
	storeli.w r9, -576(r30)                 # 4-byte Folded Spill
	ori r9, r6, 14
	storeli.w r9, -580(r30)                 # 4-byte Folded Spill
	sext_int2long r[9:10], r6
	ori r6, r6, 15
	storeli.w r6, -584(r30)                 # 4-byte Folded Spill
	lui r6, 1048575
	sll.d r[9:10], r[9:10], r12
	addli r12, r30, -128
	ori r6, r6, 3840
	add.ul r[7:8], r[7:8], r[9:10]
	add.ul r[4:5], r[4:5], r[9:10]
	and r3, r3, r6
	store.d r[7:8], -592(r30)               # 8-byte Folded Spill
	addli r7, r30, -256
	addli r8, zero, 32
	store.d r[4:5], -600(r30)               # 8-byte Folded Spill
	add.s r3, r3, r2
	lui r2, 524287
	ori r19, r2, 4095
	lui r2, 239665
	storeli.w r3, -492(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r19, -260(r30)                # 4-byte Folded Spill
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
	addli r1, r3, 1040
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 72 49 prologue_end            # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -276(r30)                 # 4-byte Folded Reload
	addli r5, zero, 2
	addli r12, r30, -128
	addli r4, r12, 6
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -128(r30)
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	store.h r2, -126(r30)
	loadli.w r2,  -284(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -124(r30)
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	store.h r2, -122(r30)
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -120(r30)
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	store.h r2, -118(r30)
	loadli.w r2,  -300(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -116(r30)
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	store.h r2, -114(r30)
	loadli.w r2,  -308(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -112(r30)
	loadli.w r1,  -312(r30)                 # 4-byte Folded Reload
	store.h r2, -110(r30)
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -108(r30)
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	store.h r2, -106(r30)
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -104(r30)
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	store.h r2, -102(r30)
	float2bfloat.rn r2, r3
	addli r3, r12, 2
	store.h r2, -98(r30)
	lui r2, 983040
	float2bfloat.rn r1, r1
	or r2, r5, r2
	store.h r1, -100(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[17:18], -400(r30)              # 8-byte Folded Reload
	or r1, r5, r1
	loadli.w r11,  -336(r30)                # 4-byte Folded Reload
	s_lm2gm r1, r12, 0(r[17:18])
	load.d r[17:18], -408(r30)              # 8-byte Folded Reload
	addli r1, r12, 4
	s_lm2gm r2, r3, 0(r[17:18])
	lui r2, 983040
	load.d r[17:18], -376(r30)              # 8-byte Folded Reload
	lui r3, 983040
	or r2, r5, r2
	or r3, r5, r3
	s_lm2gm r2, r1, 0(r[17:18])
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	lui r18, 1024
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	addli r1, r12, 8
	lui r4, 983040
	addli r2, r12, 10
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[21:22])
	lui r3, 983040
	addli r1, r12, 12
	s_lm2gm r4, r2, 0(r[23:24])
	lui r4, 983040
	addli r2, r12, 14
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[15:16])
	lui r3, 983040
	addli r1, r12, 16
	s_lm2gm r4, r2, 0(r[25:26])
	lui r4, 983040
	addli r2, r12, 18
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[7:8])
	lui r3, 983040
	load.d r[6:7], -352(r30)                # 8-byte Folded Reload
	addli r1, r12, 20
	s_lm2gm r4, r2, 0(r[9:10])
	lui r4, 983040
	addli r2, r12, 22
	addli r8, zero, 32
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[6:7])
	load.d r[6:7], -368(r30)                # 8-byte Folded Reload
	lui r3, 983040
	addli r1, r12, 24
	or r3, r5, r3
	s_lm2gm r4, r2, 0(r[6:7])
	lui r4, 983040
	load.d r[6:7], -344(r30)                # 8-byte Folded Reload
	addli r2, r12, 26
	s_lm2gm r3, r1, 0(r[27:28])
	lui r3, 983040
	addli r1, r12, 28
	or r4, r5, r4
	or r3, r5, r3
	s_lm2gm r4, r2, 0(r[6:7])
	lui r4, 983040
	addli r2, r12, 30
	addli r7, r30, -256
	or r4, r5, r4
	load.d r[5:6], -384(r30)                # 8-byte Folded Reload
	s_lm2gm r4, r2, 0(r[19:20])
	s_lm2gm r3, r1, 0(r[5:6])
	loadli.w r1,  -524(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r19,  -260(r30)                # 4-byte Folded Reload
	add.s r11, r11, r1
	loadli.w r1,  -504(r30)                 # 4-byte Folded Reload
	blt.s r11, r1, .LBB0_3
	j .LBB0_174
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 49 is_stmt 0                # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:47
	add.s r2, r7, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r8, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 47 is_stmt 0                # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:47
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	.loc	1 38 37                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:37
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	storeli.w r11, -336(r30)                # 4-byte Folded Spill
	.loc	1 38 47                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:47
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r17, zero, 1
	.loc	1 39 37 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r17
	div.s r1, r11, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:29:23
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r2
	.loc	1 38 47                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:47
	lui r1, 983040
	.loc	1 38 42 is_stmt 0               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:42
	slli r4, r2, 10
	.loc	1 38 47                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:47
	or r1, r8, r1
	storeli.w r2, -440(r30)                 # 4-byte Folded Spill
	.loc	1 39 37 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:39:37
	lui r2, 983040
	.loc	1 38 37                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:37
	add.s r3, r4, r3
	storeli.w r4, -352(r30)                 # 4-byte Folded Spill
	.loc	1 40 38                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:40:38
	lui r4, 983040
	.loc	1 39 37                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:39:37
	or r2, r8, r2
	.loc	1 38 30                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:30
	sext_int2long r[5:6], r3
	addli r3, zero, 1
	sll.d r[9:10], r[5:6], r3
	load.d r[5:6], 0(r30)
	.loc	1 40 38                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:40:38
	or r3, r8, r4
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	.loc	1 38 30                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:30
	add.ul r[5:6], r[5:6], r[9:10]
	.loc	1 38 47 is_stmt 0               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:47
	l_gm2lm r1, r7, 0(r[5:6])
	.loc	1 39 37 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:39:37
	load.d r[4:5], -592(r30)                # 8-byte Folded Reload
	addli r1, r30, -192
	l_gm2lm r2, r1, 0(r[4:5])
	.loc	1 40 38                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:40:38
	load.d r[1:2], -600(r30)                # 8-byte Folded Reload
	l_gm2lm r3, r12, 0(r[1:2])
	.loc	1 38 47                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:38:47
	mfence { lm }
	load.hu r3, -256(r30)
	load.hu r4, -254(r30)
	load.hu r2, -230(r30)
	load.hu r1, -228(r30)
	load.hu r5, -252(r30)
	load.hu r6, -250(r30)
	load.hu r7, -248(r30)
	load.hu r8, -246(r30)
	load.hu r9, -244(r30)
	load.hu r10, -242(r30)
	load.hu r11, -240(r30)
	load.hu r12, -238(r30)
	load.hu r13, -236(r30)
	load.hu r14, -234(r30)
	load.hu r15, -232(r30)
	load.hu r16, -226(r30)
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
	.loc	1 39 37                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:39:37
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
	lui r12, 522240
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
	.loc	1 40 38                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:40:38
	load.hu r1, -128(r30)
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	load.hu r1, -126(r30)
	.loc	1 45 18                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:45:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 40 38                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:40:38
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	load.hu r1, -124(r30)
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	load.hu r1, -122(r30)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	load.hu r1, -120(r30)
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	load.hu r1, -118(r30)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	load.hu r1, -116(r30)
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	load.hu r1, -114(r30)
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	load.hu r1, -112(r30)
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	load.hu r1, -110(r30)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	load.hu r1, -108(r30)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	load.hu r1, -106(r30)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	load.hu r1, -104(r30)
	.loc	1 45 18                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:45:18
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	.loc	1 40 38                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:40:38
	load.hu r1, -102(r30)
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	load.hu r1, -100(r30)
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	load.hu r1, -98(r30)
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r11,  -64(r30)
	loadli.w r7,  -60(r30)
	loadli.w r25,  -56(r30)
	loadli.w r6,  -52(r30)
	loadli.w r15,  -48(r30)
	loadli.w r8,  -44(r30)
	loadli.w r21,  -40(r30)
	loadli.w r24,  -36(r30)
	loadli.w r22,  -32(r30)
	loadli.w r13,  -28(r30)
	loadli.w r28,  -24(r30)
	loadli.w r4,  -20(r30)
	loadli.w r23,  -16(r30)
	loadli.w r1,  -12(r30)
	and r27, r11, r19
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -8(r30)
	setlt.u r2, r12, r27
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -4(r30)
	bneq r2, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r11, -444(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r2, r11, r18
	storeli.w r2, -444(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r2, r7, r19
	storeli.w r4, -316(r30)                 # 4-byte Folded Spill
	setlt.u r4, r12, r2
	bneq r4, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	addli r14, r7, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r14, r7, r18
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r4, r25, r19
	setlt.u r5, r12, r4
	bneq r5, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r25, -276(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r25, r18
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r5, r6, r19
	setlt.u r9, r12, r5
	bneq r9, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r6, -448(r30)                 # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r6, r18
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r15, r19
	setlt.u r9, r12, r26
	bneq r9, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r15, -280(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r15, r18
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r17, r8, r19
	setlt.u r9, r12, r17
	bneq r9, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r8, -284(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r8, r18
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r10, r21, r19
	storeli.w r21, -488(r30)                # 4-byte Folded Spill
	setlt.u r9, r12, r10
	bneq r9, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r21, -288(r30)                # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r21, r18
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r21, r24, r19
	storeli.w r24, -484(r30)                # 4-byte Folded Spill
	setlt.u r9, r12, r21
	bneq r9, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r24, -452(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r24, r18
	storeli.w r1, -452(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r24, r22, r19
	storeli.w r22, -480(r30)                # 4-byte Folded Spill
	setlt.u r9, r12, r24
	bneq r9, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r22, -456(r30)                # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r22, r18
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r13, r19
	storeli.w r13, -476(r30)                # 4-byte Folded Spill
	setlt.u r9, r12, r22
	bneq r9, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r13, -460(r30)                # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r13, r18
	storeli.w r1, -460(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	and r13, r28, r19
	setlt.u r9, r12, r13
	bneq r9, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r28, -292(r30)                # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r9, r28, r18
	storeli.w r9, -292(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	addli r16, r14, 0
	loadli.w r14,  -316(r30)                # 4-byte Folded Reload
	storeli.w r28, -472(r30)                # 4-byte Folded Spill
	lui r28, 1024
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	and r9, r14, r19
	setlt.u r12, r12, r9
	bneq r12, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r14, -296(r30)                # 4-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r12, r14, r18
	storeli.w r12, -296(r30)                # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	and r12, r23, r19
	lui r14, 522240
	lui r18, 522240
	storeli.w r23, -468(r30)                # 4-byte Folded Spill
	setlt.u r14, r14, r12
	bneq r14, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r23, -300(r30)                # 4-byte Folded Spill
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r14, r23, r28
	storeli.w r14, -300(r30)                # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r14,  -312(r30)                # 4-byte Folded Reload
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	and r23, r14, r19
	addli r19, r14, 0
	setlt.u r14, r18, r23
	bneq r14, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r19, -464(r30)                # 4-byte Folded Spill
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r14, r19, r28
	storeli.w r14, -464(r30)                # 4-byte Folded Spill
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	storeli.w r3, -304(r30)                 # 4-byte Folded Spill
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	loadli.w r14,  -260(r30)                # 4-byte Folded Reload
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	and r20, r3, r14
	setlt.u r14, r18, r20
	beq r14, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	or r3, r3, r28
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -260(r30)                # 4-byte Folded Reload
	loadli.w r28,  -304(r30)                # 4-byte Folded Reload
	and r19, r28, r14
	setlt.u r14, r18, r19
	bneq r14, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	lui r18, 1024
	storeli.w r28, -272(r30)                # 4-byte Folded Spill
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	lui r18, 1024
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	or r1, r28, r18
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -264(r30)                # 4-byte Folded Reload
	loadli.w r28,  -268(r30)                # 4-byte Folded Reload
	setlt.u r14, r14, r27
	loadli.w r27,  -444(r30)                # 4-byte Folded Reload
	bneq r14, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	srli r14, r11, 16
	andi r14, r14, 1
	add.s r11, r11, r14
	lui r14, 1048560
	add.s r11, r11, r28
	and r27, r11, r14
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r11,  -264(r30)                # 4-byte Folded Reload
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r2
	bneq r2, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	lui r7, 1048560
	add.s r2, r2, r28
	and r16, r2, r7
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r4
	lui r14, 522240
	bneq r2, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	srli r2, r25, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r28
	and r1, r2, r4
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r5
	loadli.w r25,  -448(r30)                # 4-byte Folded Reload
	lui r4, 1048560
	beq r2, zero, .LBB0_84
# %bb.59:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r2, r11, r26
	beq r2, zero, .LBB0_85
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r2, r11, r17
	bneq r2, zero, .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r28
	and r1, r2, r4
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r10
	loadli.w r5,  -276(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r1,  -488(r30)                 # 4-byte Folded Reload
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r2, r1, r2
	add.s r2, r2, r28
	and r1, r2, r4
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r21
	loadli.w r8,  -280(r30)                 # 4-byte Folded Reload
	loadli.w r21,  -452(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r1,  -484(r30)                 # 4-byte Folded Reload
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r28
	and r21, r1, r4
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r24
	loadli.w r24,  -456(r30)                # 4-byte Folded Reload
	addli r6, zero, 64
	bneq r1, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r24, r1, r4
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r22
	loadli.w r22,  -460(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -476(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r22, r1, r4
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r13
	loadli.w r15,  -288(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r1, r1, r4
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r9
	bneq r1, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r1, r1, r4
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r12
	loadli.w r9,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -468(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r1, r1, r4
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
.LBB0_76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r23
	loadli.w r12,  -292(r30)                # 4-byte Folded Reload
	loadli.w r23,  -464(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r23, r1, r4
.LBB0_78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r20
	loadli.w r13,  -260(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -308(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r3, r1, r4
.LBB0_80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r1, r11, r19
	loadli.w r7,  -508(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -300(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r28
	and r1, r1, r4
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
.LBB0_82:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r11,  -440(r30)                # 4-byte Folded Reload
	loadli.w r19,  -296(r30)                # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	blt.s r11, r6, .LBB0_86
.Ltmp2:
# %bb.83:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_87
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r28
	and r25, r2, r4
	.loc	1 46 19 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r26
	bneq r2, zero, .LBB0_60
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r1, r2, r4
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	.loc	1 46 19                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:46:19
	setlt.u r2, r11, r17
	beq r2, zero, .LBB0_61
	j .LBB0_62
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r27, r16
	loadli.w r2,  -272(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r5
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r8
	add.f.rn r1, r1, r9
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r21
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r22
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r19
	add.f.rn r1, r1, r20
	add.f.rn r1, r1, r23
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r2,  -500(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -492(r30)                 # 4-byte Folded Reload
	addli r10, r3, 0
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
	addli r3, r10, 0
	stores.w r1, 0(r4)
.Ltmp4:
.LBB0_89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loadli.w r1,  -492(r30)                 # 4-byte Folded Reload
	.loc	1 56 21 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:56:21
	lui r2, 239616
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 57 20                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:57:20
	loadli.w r2,  -272(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r27, r1
	sub.f.rn r17, r25, r1
	sub.f.rn r10, r9, r1
	sub.f.rn r25, r21, r1
	sub.f.rn r21, r22, r1
	sub.f.rn r22, r12, r1
	sub.f.rn r12, r19, r1
	sub.f.rn r19, r3, r1
	sub.f.rn r3, r2, r1
	sub.f.rn r26, r16, r1
	sub.f.rn r5, r5, r1
	sub.f.rn r8, r8, r1
	sub.f.rn r15, r15, r1
	sub.f.rn r27, r24, r1
	sub.f.rn r9, r20, r1
	sub.f.rn r28, r23, r1
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	storeli.w r3, -444(r30)                 # 4-byte Folded Spill
	blt.s r11, r6, .LBB0_91
.Ltmp6:
# %bb.90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r1, r4, r4
	mul.f.rn r2, r26, r26
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r2
.Ltmp8:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r5, r5
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp10:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r17, r17
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp12:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r8, r8
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp14:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r10, r10
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp16:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r15, r15
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp18:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r25, r25
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp20:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r27, r27
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp22:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r21, r21
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp24:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r22, r22
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp26:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r12, r12
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp28:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r9, r9
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp30:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r28, r28
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp32:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r19, r19
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp34:
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r3, r3
.Ltmp35:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -496(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r6)
	loads.w r3, 4(r6)
	loads.w r2, 8(r6)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r3
	loads.w r3, 12(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 16(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 20(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 24(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 32(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 36(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 40(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 44(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 48(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 52(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 56(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 60(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 64(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 68(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 72(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 76(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 80(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 84(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 88(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 92(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 96(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 100(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 104(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 108(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 112(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 116(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 120(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 124(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 128(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 132(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 136(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 140(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 144(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 148(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 152(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 156(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 160(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 164(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 168(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 172(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 176(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 180(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 184(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 188(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 192(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 196(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 200(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 204(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 208(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 212(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 216(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 220(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 224(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 228(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 232(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 236(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 240(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 244(r6)
	add.f.rn r1, r1, r2
	loads.w r2, 248(r6)
	add.f.rn r1, r1, r3
	loads.w r3, 252(r6)
	add.f.rn r1, r1, r2
	add.f.rn r1, r1, r3
	stores.w r1, 0(r6)
.Ltmp36:
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loadli.w r1,  -496(r30)                 # 4-byte Folded Reload
	.loc	1 64 21 is_stmt 1               # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:64:21
	lui r2, 239616
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 66 20                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:66:20
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	.loc	1 67 28                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:67:28
	lui r2, 260096
	sqrt.f.rn r1, r1
	div.f.rn r24, r2, r1
	loadli.w r2,  -436(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	.loc	1 68 20                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:68:20
	mul.f.rn r1, r4, r24
	.loc	1 70 20                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:70:20
	mul.f.rn r3, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r3, r13
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49 is_stmt 0                # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r3, -272(r30)                 # 4-byte Folded Spill
	j .LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r3, r18
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r26, r24
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r26, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r26, r13
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r26, -276(r30)                # 4-byte Folded Spill
	j .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r26, r18
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r5, r24
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r5, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r5, r13
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r5, -280(r30)                 # 4-byte Folded Spill
	j .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r5, r18
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r17, r24
	loadli.w r2,  -424(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r17, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r17, r13
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r17, -284(r30)                # 4-byte Folded Spill
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r17, r18
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r8, r24
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r8, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r8, r13
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r8, -288(r30)                 # 4-byte Folded Spill
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r8, r18
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r10, r24
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r10, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r10, r13
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r10, -292(r30)                # 4-byte Folded Spill
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r10, r18
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r15, r24
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r15, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r15, r13
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r15, -296(r30)                # 4-byte Folded Spill
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r15, r18
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r25, r24
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r6, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r6, r13
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r6, -300(r30)                 # 4-byte Folded Spill
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r6, r18
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r27, r24
	loadli.w r2,  -392(r30)                 # 4-byte Folded Reload
	lui r25, 1048560
	bfloat2float.rn r2, r2
	mul.f.rn r7, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r11, r7, r13
	setlt.u r1, r14, r11
	bneq r1, zero, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r7, -304(r30)                 # 4-byte Folded Spill
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r7, r18
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r21, r24
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r20, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r21, r20, r13
	setlt.u r1, r14, r21
	bneq r1, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r20, -308(r30)                # 4-byte Folded Spill
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r1, r20, r18
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r1, r22, r24
	loadli.w r2,  -376(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r27, r1, r2
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r1, r27, r13
	setlt.u r2, r14, r1
	bneq r2, zero, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r27, -312(r30)                # 4-byte Folded Spill
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r2, r27, r18
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r12, r24
	loadli.w r4,  -368(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	mul.f.rn r22, r2, r4
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r4, r22, r13
	setlt.u r2, r14, r4
	bneq r2, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r22, -316(r30)                # 4-byte Folded Spill
	j .LBB0_130
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r2, r22, r18
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r2, r9, r24
	loadli.w r9,  -320(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	mul.f.rn r2, r2, r9
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	and r23, r2, r13
	setlt.u r9, r14, r23
	bneq r9, zero, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	j .LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r9, r2, r18
	storeli.w r9, -320(r30)                 # 4-byte Folded Spill
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r9, r28, r24
	loadli.w r12,  -324(r30)                # 4-byte Folded Reload
	bfloat2float.rn r12, r12
	mul.f.rn r9, r9, r12
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r12,  -260(r30)                # 4-byte Folded Reload
	and r12, r9, r12
	setlt.u r13, r14, r12
	bneq r13, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r9, -324(r30)                 # 4-byte Folded Spill
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r13, r9, r18
	storeli.w r13, -324(r30)                # 4-byte Folded Spill
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	mul.f.rn r13, r19, r24
	loadli.w r14,  -328(r30)                # 4-byte Folded Reload
	lui r28, 1024
	lui r18, 522240
	bfloat2float.rn r14, r14
	mul.f.rn r14, r13, r14
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r13,  -260(r30)                # 4-byte Folded Reload
	and r16, r14, r13
	lui r13, 522240
	storeli.w r14, -448(r30)                # 4-byte Folded Spill
	setlt.u r13, r13, r16
	storeli.w r16, -376(r30)                # 4-byte Folded Spill
	bneq r13, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r14, -328(r30)                # 4-byte Folded Spill
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r13, r14, r28
	storeli.w r13, -328(r30)                # 4-byte Folded Spill
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:0
	loadli.w r13,  -444(r30)                # 4-byte Folded Reload
	loadli.w r14,  -356(r30)                # 4-byte Folded Reload
	loadli.w r16,  -268(r30)                # 4-byte Folded Reload
	mul.f.rn r13, r13, r24
	bfloat2float.rn r14, r14
	mul.f.rn r14, r13, r14
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r13,  -260(r30)                # 4-byte Folded Reload
	and r13, r14, r13
	storeli.w r14, -440(r30)                # 4-byte Folded Spill
	storeli.w r13, -368(r30)                # 4-byte Folded Spill
	setlt.u r13, r18, r13
	bneq r13, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	storeli.w r14, -356(r30)                # 4-byte Folded Spill
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	lui r13, 1024
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	or r13, r14, r13
	storeli.w r13, -356(r30)                # 4-byte Folded Spill
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	loadli.w r14,  -264(r30)                # 4-byte Folded Reload
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r13,  -436(r30)                # 4-byte Folded Reload
	setlt.u r13, r14, r13
	bneq r13, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r13, r3, 16
	andi r13, r13, 1
	add.s r3, r3, r13
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -272(r30)                 # 4-byte Folded Spill
.LBB0_144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -432(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -428(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r5, 16
	andi r3, r3, 1
	add.s r3, r5, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -280(r30)                 # 4-byte Folded Spill
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r17, 16
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -284(r30)                 # 4-byte Folded Spill
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -288(r30)                 # 4-byte Folded Spill
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -292(r30)                 # 4-byte Folded Spill
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -408(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r15, 16
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -296(r30)                 # 4-byte Folded Spill
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -400(r30)                 # 4-byte Folded Reload
	setlt.u r3, r14, r3
	beq r3, zero, .LBB0_169
# %bb.157:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r3, r14, r11
	beq r3, zero, .LBB0_170
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r3, r14, r21
	beq r3, zero, .LBB0_171
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r14, r1
	beq r1, zero, .LBB0_172
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r14, r4
	beq r1, zero, .LBB0_173
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r14, r23
	bneq r1, zero, .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r1, r1, r25
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -352(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -564(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -528(r30)                 # 4-byte Folded Reload
	add.s r6, r3, r7
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	add.s r27, r4, r7
	loadli.w r4,  -568(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r7
	loadli.w r1,  -532(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r7
	add.s r14, r3, r7
	loadli.w r3,  -548(r30)                 # 4-byte Folded Reload
	add.s r13, r3, r7
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	add.s r11, r3, r7
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	add.s r10, r3, r7
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	add.s r8, r3, r7
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -264(r30)                 # 4-byte Folded Reload
	setlt.u r3, r3, r12
	add.s r12, r4, r7
	loadli.w r4,  -572(r30)                 # 4-byte Folded Reload
	add.s r17, r4, r7
	loadli.w r4,  -576(r30)                 # 4-byte Folded Reload
	add.s r5, r4, r7
	loadli.w r4,  -580(r30)                 # 4-byte Folded Reload
	add.s r21, r4, r7
	loadli.w r4,  -584(r30)                 # 4-byte Folded Reload
	add.s r22, r4, r7
	bneq r3, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -324(r30)                 # 4-byte Folded Spill
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:0
	sext_int2long r[2:3], r2
	addli r20, zero, 1
	sext_int2long r[18:19], r1
	sll.d r[1:2], r[2:3], r20
	sll.d r[3:4], r[18:19], r20
	store.d r[1:2], -352(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r6
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r14
	sll.d r[1:2], r[1:2], r20
	sll.d r[23:24], r[3:4], r20
	sext_int2long r[3:4], r11
	store.d r[1:2], -392(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r15
	sll.d r[25:26], r[3:4], r20
	sext_int2long r[3:4], r8
	sll.d r[1:2], r[1:2], r20
	store.d r[1:2], -416(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r13
	sll.d r[13:14], r[3:4], r20
	sext_int2long r[3:4], r12
	sll.d r[15:16], r[1:2], r20
	sext_int2long r[1:2], r10
	sll.d r[8:9], r[1:2], r20
	sext_int2long r[1:2], r27
	sll.d r[27:28], r[3:4], r20
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r3,  -264(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	.loc	1 72 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:0
	sll.d r[11:12], r[1:2], r20
	sext_int2long r[1:2], r17
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r7, r3, r4
	.loc	1 72 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:0
	sext_int2long r[3:4], r5
	sext_int2long r[5:6], r22
	sll.d r[17:18], r[1:2], r20
	sll.d r[1:2], r[3:4], r20
	sext_int2long r[3:4], r21
	sll.d r[5:6], r[5:6], r20
	sll.d r[3:4], r[3:4], r20
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	bneq r7, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	loadli.w r10,  -448(r30)                # 4-byte Folded Reload
	srli r7, r10, 16
	andi r7, r7, 1
	add.s r7, r10, r7
	loadli.w r10,  -268(r30)                # 4-byte Folded Reload
	add.s r7, r7, r10
	lui r10, 1048560
	and r7, r7, r10
	storeli.w r7, -328(r30)                 # 4-byte Folded Spill
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[19:20], 24(r30)
	.loc	1 72 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:0
	load.d r[21:22], -344(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	add.ul r[7:8], r[19:20], r[8:9]
	add.ul r[9:10], r[19:20], r[13:14]
	loadli.w r14,  -264(r30)                # 4-byte Folded Reload
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	loadli.w r13,  -368(r30)                # 4-byte Folded Reload
	.loc	1 72 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:0
	add.ul r[1:2], r[19:20], r[1:2]
	add.ul r[11:12], r[19:20], r[11:12]
	add.ul r[23:24], r[19:20], r[23:24]
	add.ul r[15:16], r[19:20], r[15:16]
	add.ul r[25:26], r[19:20], r[25:26]
	store.d r[21:22], -400(r30)             # 8-byte Folded Spill
	load.d r[21:22], -352(r30)              # 8-byte Folded Reload
	store.d r[1:2], -344(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -356(r30)                 # 4-byte Folded Reload
	store.d r[11:12], -352(r30)             # 8-byte Folded Spill
	add.ul r[11:12], r[19:20], r[27:28]
	add.ul r[27:28], r[19:20], r[17:18]
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r13, r14, r13
	.loc	1 72 0                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:0
	store.d r[11:12], -368(r30)             # 8-byte Folded Spill
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -408(r30)             # 8-byte Folded Spill
	load.d r[21:22], -384(r30)              # 8-byte Folded Reload
	store.d r[1:2], -384(r30)               # 8-byte Folded Spill
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -376(r30)             # 8-byte Folded Spill
	load.d r[21:22], -392(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -392(r30)             # 8-byte Folded Spill
	load.d r[21:22], -416(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	add.ul r[19:20], r[19:20], r[5:6]
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	bneq r13, zero, .LBB0_2
# %bb.168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	loadli.w r2,  -440(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -268(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r3, r1, r2
	j .LBB0_2
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	srli r3, r6, 16
	andi r3, r3, 1
	add.s r3, r6, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -300(r30)                 # 4-byte Folded Spill
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r3, r14, r11
	bneq r3, zero, .LBB0_158
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r7, 16
	andi r3, r3, 1
	add.s r3, r7, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -304(r30)                 # 4-byte Folded Spill
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r3, r14, r21
	bneq r3, zero, .LBB0_159
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r3, r20, 16
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r16
	and r3, r3, r25
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r1, r14, r1
	bneq r1, zero, .LBB0_160
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r1, r1, r25
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r1, r14, r4
	bneq r1, zero, .LBB0_161
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:0:49
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r16
	and r1, r1, r25
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	.loc	1 72 49                         # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:49
	setlt.u r1, r14, r23
	beq r1, zero, .LBB0_162
	j .LBB0_163
.LBB0_174:                              # %._crit_edge
	.loc	1 72 4 epilogue_begin           # cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py:72:4
	addli sp, r30, -640
	addli sp, sp, 640
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
	.long	52                              # 0x34
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
	.byte	53                              # DW_AT_call_line
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
	.byte	61                              # DW_AT_call_line
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
.asciz	"cy6ccraqxrlk6tchkknwvpg653yxpac3gbk6dkyjwwods5v7eopw.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/y6" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
