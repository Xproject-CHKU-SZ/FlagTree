	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ys" "cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py"
	.loc	1 22 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -704
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 640
	lui r5, 15
	load_param_i r11, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  44(r30)
	loadli.w r4,  40(r30)
	loadli.w r6,  48(r30)
	ori r5, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	addli r9, r8, 8208
	mul.s r4, r4, r6
	storeli.w r9, -516(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r5
	sync_group
	storeli.w r8, -512(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	storeli.w r5, -520(r30)                 # 4-byte Folded Spill
	csr_set csr3, r5
	sync_group
	storeli.w r4, -524(r30)                 # 4-byte Folded Spill
	ble.s r4, r11, .LBB0_173
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r9, 1
	addli r12, zero, 1
	load.d r[5:6], 16(r30)
	load.d r[7:8], 8(r30)
	lui r19, 522240
	lui r22, 1024
	vxor.u.mz vr0{mr1}, vr0, vr0
	div.s r4, r1, r4
	storeli.w r9, -536(r30)                 # 4-byte Folded Spill
	storeli.w r4, -528(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	sub.s r4, r1, r4
	andi r1, r1, 7
	slli r4, r4, 4
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	ori r9, r4, 1
	storeli.w r4, -532(r30)                 # 4-byte Folded Spill
	storeli.w r9, -540(r30)                 # 4-byte Folded Spill
	ori r9, r4, 2
	storeli.w r9, -544(r30)                 # 4-byte Folded Spill
	ori r9, r4, 3
	storeli.w r9, -548(r30)                 # 4-byte Folded Spill
	ori r9, r4, 4
	storeli.w r9, -552(r30)                 # 4-byte Folded Spill
	ori r9, r4, 5
	storeli.w r9, -556(r30)                 # 4-byte Folded Spill
	ori r9, r4, 6
	storeli.w r9, -560(r30)                 # 4-byte Folded Spill
	ori r9, r4, 7
	storeli.w r9, -564(r30)                 # 4-byte Folded Spill
	ori r9, r4, 8
	storeli.w r9, -568(r30)                 # 4-byte Folded Spill
	ori r9, r4, 9
	storeli.w r9, -572(r30)                 # 4-byte Folded Spill
	ori r9, r4, 10
	storeli.w r9, -576(r30)                 # 4-byte Folded Spill
	ori r9, r4, 11
	storeli.w r9, -580(r30)                 # 4-byte Folded Spill
	ori r9, r4, 12
	storeli.w r9, -584(r30)                 # 4-byte Folded Spill
	ori r9, r4, 13
	storeli.w r9, -588(r30)                 # 4-byte Folded Spill
	ori r9, r4, 14
	storeli.w r9, -592(r30)                 # 4-byte Folded Spill
	ori r9, r4, 15
	storeli.w r9, -596(r30)                 # 4-byte Folded Spill
	sext_int2long r[9:10], r4
	lui r4, 1048575
	ori r4, r4, 4064
	sll.d r[9:10], r[9:10], r12
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[9:10]
	add.ul r[7:8], r[7:8], r[9:10]
	addli r9, r30, -256
	add.s r2, r3, r2
	store.d r[4:5], -616(r30)               # 8-byte Folded Spill
	store.d r[7:8], -608(r30)               # 8-byte Folded Spill
	addli r7, zero, 32
	addli r1, r2, 8208
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	lui r2, 524287
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r5, r1, 4095
	ori r1, r2, 4095
	lui r2, 239665
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	storeli.w r5, -272(r30)                 # 4-byte Folded Spill
	ori r1, r1, 4095
	storeli.w r1, -260(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 72 48 prologue_end            # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -280(r30)                 # 4-byte Folded Reload
	addli r6, zero, 2
	addli r9, r30, -256
	addli r4, r9, 6
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -256(r30)
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	store.h r2, -254(r30)
	loadli.w r2,  -288(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -252(r30)
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	store.h r2, -250(r30)
	loadli.w r2,  -296(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -248(r30)
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	store.h r2, -246(r30)
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -244(r30)
	loadli.w r1,  -308(r30)                 # 4-byte Folded Reload
	store.h r2, -242(r30)
	loadli.w r2,  -264(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -240(r30)
	loadli.w r1,  -312(r30)                 # 4-byte Folded Reload
	store.h r2, -238(r30)
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -236(r30)
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	store.h r2, -234(r30)
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -232(r30)
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	store.h r2, -230(r30)
	float2bfloat.rn r2, r3
	addli r3, r9, 2
	store.h r2, -226(r30)
	lui r2, 983040
	float2bfloat.rn r1, r1
	or r2, r6, r2
	store.h r1, -228(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[10:11], -392(r30)              # 8-byte Folded Reload
	or r1, r6, r1
	s_lm2gm r1, r9, 0(r[10:11])
	load.d r[10:11], -400(r30)              # 8-byte Folded Reload
	addli r1, r9, 4
	s_lm2gm r2, r3, 0(r[10:11])
	lui r3, 983040
	lui r2, 983040
	load.d r[10:11], -376(r30)              # 8-byte Folded Reload
	or r3, r6, r3
	or r2, r6, r2
	s_lm2gm r3, r4, 0(r[7:8])
	lui r3, 983040
	lui r4, 983040
	s_lm2gm r2, r1, 0(r[10:11])
	addli r1, r9, 8
	addli r2, r9, 10
	load.d r[7:8], -368(r30)                # 8-byte Folded Reload
	loadli.w r11,  -336(r30)                # 4-byte Folded Reload
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[21:22])
	s_lm2gm r4, r2, 0(r[23:24])
	lui r3, 983040
	lui r4, 983040
	addli r1, r9, 12
	addli r2, r9, 14
	lui r22, 1024
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[27:28])
	s_lm2gm r4, r2, 0(r[13:14])
	lui r3, 983040
	lui r4, 983040
	addli r1, r9, 16
	addli r2, r9, 18
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[7:8])
	s_lm2gm r4, r2, 0(r[15:16])
	lui r3, 983040
	lui r4, 983040
	load.d r[7:8], -360(r30)                # 8-byte Folded Reload
	addli r1, r9, 20
	addli r2, r9, 22
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[7:8])
	s_lm2gm r4, r2, 0(r[25:26])
	lui r3, 983040
	lui r4, 983040
	load.d r[7:8], -344(r30)                # 8-byte Folded Reload
	addli r1, r9, 24
	addli r2, r9, 26
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[19:20])
	s_lm2gm r4, r2, 0(r[7:8])
	lui r3, 983040
	lui r4, 983040
	addli r1, r9, 28
	addli r2, r9, 30
	lui r19, 522240
	or r4, r6, r4
	or r3, r6, r3
	load.d r[6:7], -384(r30)                # 8-byte Folded Reload
	s_lm2gm r4, r2, 0(r[17:18])
	s_lm2gm r3, r1, 0(r[6:7])
	loadli.w r1,  -536(r30)                 # 4-byte Folded Reload
	addli r7, zero, 32
	mfence { lm }
	add.s r11, r11, r1
	loadli.w r1,  -524(r30)                 # 4-byte Folded Reload
	blt.s r11, r1, .LBB0_3
	j .LBB0_173
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 48 is_stmt 0                # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:46
	add.s r2, r9, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 46 is_stmt 0                # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:46
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	.loc	1 38 37                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:37
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	storeli.w r11, -336(r30)                # 4-byte Folded Spill
	.loc	1 38 46                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:46
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r17, zero, 1
	.loc	1 39 37 is_stmt 1               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r17
	div.s r1, r11, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:29:23
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:29:23
	add.s r2, r1, r2
	.loc	1 38 46                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:46
	lui r1, 983040
	.loc	1 38 41 is_stmt 0               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:41
	slli r4, r2, 7
	.loc	1 38 46                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:46
	or r1, r7, r1
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	.loc	1 39 37 is_stmt 1               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:39:37
	lui r2, 983040
	.loc	1 38 37                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:37
	add.s r3, r4, r3
	storeli.w r4, -420(r30)                 # 4-byte Folded Spill
	.loc	1 40 38                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:40:38
	lui r4, 983040
	.loc	1 39 37                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:39:37
	or r2, r7, r2
	.loc	1 38 30                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:30
	sext_int2long r[5:6], r3
	addli r3, zero, 1
	sll.d r[10:11], r[5:6], r3
	load.d r[5:6], 0(r30)
	.loc	1 40 38                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:40:38
	or r3, r7, r4
	store.d r[10:11], -344(r30)             # 8-byte Folded Spill
	.loc	1 38 30                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:30
	add.ul r[5:6], r[5:6], r[10:11]
	.loc	1 38 46 is_stmt 0               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:46
	l_gm2lm r1, r9, 0(r[5:6])
	.loc	1 39 37 is_stmt 1               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:39:37
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli r1, r30, -192
	l_gm2lm r2, r1, 0(r[4:5])
	.loc	1 40 38                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:40:38
	load.d r[1:2], -616(r30)                # 8-byte Folded Reload
	addli r4, r30, -128
	l_gm2lm r3, r4, 0(r[1:2])
	.loc	1 38 46                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:38:46
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
	.loc	1 39 37                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:39:37
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
	.loc	1 40 38                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:40:38
	load.hu r1, -128(r30)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	load.hu r1, -126(r30)
	.loc	1 45 18                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:45:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 40 38                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:40:38
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	load.hu r1, -124(r30)
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	load.hu r1, -122(r30)
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	load.hu r1, -120(r30)
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	load.hu r1, -118(r30)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	load.hu r1, -116(r30)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	load.hu r1, -114(r30)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	load.hu r1, -112(r30)
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	load.hu r1, -110(r30)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	load.hu r1, -108(r30)
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	load.hu r1, -106(r30)
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	load.hu r1, -104(r30)
	.loc	1 45 18                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:45:18
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	.loc	1 40 38                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:40:38
	load.hu r1, -102(r30)
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	load.hu r1, -100(r30)
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	load.hu r1, -98(r30)
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r18,  -64(r30)
	loadli.w r14,  -60(r30)
	loadli.w r15,  -56(r30)
	loadli.w r3,  -52(r30)
	loadli.w r1,  -48(r30)
	loadli.w r21,  -44(r30)
	loadli.w r17,  -40(r30)
	loadli.w r2,  -36(r30)
	storeli.w r2, -300(r30)                 # 4-byte Folded Spill
	loadli.w r12,  -32(r30)
	loadli.w r9,  -28(r30)
	loadli.w r11,  -268(r30)                # 4-byte Folded Reload
	loadli.w r25,  -24(r30)
	loadli.w r10,  -20(r30)
	loadli.w r7,  -16(r30)
	loadli.w r27,  -12(r30)
	loadli.w r6,  -8(r30)
	loadli.w r28,  -4(r30)
	and r24, r18, r11
	setlt.u r2, r19, r24
	bneq r2, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	addli r8, r18, 0
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r8, r18, r22
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r5, r14, r11
	loadli.w r16,  -272(r30)                # 4-byte Folded Reload
	setlt.u r2, r19, r5
	bneq r2, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	addli r23, r14, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r23, r14, r22
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r13, r15, r11
	setlt.u r2, r19, r13
	bneq r2, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r15, -424(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r2, r15, r22
	storeli.w r2, -424(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r20, r3, r11
	setlt.u r2, r19, r20
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r3, -428(r30)                 # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r2, r3, r22
	storeli.w r2, -428(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r1, r11
	setlt.u r2, r19, r26
	bneq r2, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r2, r1, r22
	storeli.w r2, -432(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r4, r21, r11
	storeli.w r21, -500(r30)                # 4-byte Folded Spill
	setlt.u r2, r19, r4
	beq r2, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	or r21, r21, r22
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r17, r11
	storeli.w r6, -284(r30)                 # 4-byte Folded Spill
	storeli.w r17, -496(r30)                # 4-byte Folded Spill
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	setlt.u r2, r19, r2
	bneq r2, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r17, -436(r30)                # 4-byte Folded Spill
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r2, r17, r22
	storeli.w r2, -436(r30)                 # 4-byte Folded Spill
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -300(r30)                 # 4-byte Folded Reload
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	and r6, r2, r11
	storeli.w r6, -476(r30)                 # 4-byte Folded Spill
	setlt.u r6, r19, r6
	bneq r6, zero, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r2, -440(r30)                 # 4-byte Folded Spill
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r6, r2, r22
	storeli.w r6, -440(r30)                 # 4-byte Folded Spill
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r12, r11
	setlt.u r6, r19, r2
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r12, -444(r30)                # 4-byte Folded Spill
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r6, r12, r22
	storeli.w r6, -444(r30)                 # 4-byte Folded Spill
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r9, r11
	storeli.w r12, -492(r30)                # 4-byte Folded Spill
	addli r12, r9, 0
	setlt.u r6, r19, r2
	storeli.w r2, -468(r30)                 # 4-byte Folded Spill
	beq r6, zero, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_3 Depth=1
	or r9, r9, r22
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r25, r11
	setlt.u r6, r19, r2
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r25, -288(r30)                # 4-byte Folded Spill
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r6, r25, r22
	storeli.w r6, -288(r30)                 # 4-byte Folded Spill
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r10, r11
	setlt.u r6, r19, r2
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r10, -292(r30)                # 4-byte Folded Spill
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r6, r10, r22
	storeli.w r6, -292(r30)                 # 4-byte Folded Spill
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r7, r11
	storeli.w r25, -488(r30)                # 4-byte Folded Spill
	lui r25, 522240
	storeli.w r10, -484(r30)                # 4-byte Folded Spill
	setlt.u r6, r19, r2
	storeli.w r2, -456(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r7, -296(r30)                 # 4-byte Folded Spill
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r6, r7, r22
	storeli.w r6, -296(r30)                 # 4-byte Folded Spill
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r27, r11
	addli r10, r7, 0
	addli r7, r27, 0
	setlt.u r6, r25, r2
	storeli.w r2, -452(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r27, -264(r30)                # 4-byte Folded Spill
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r6, r27, r22
	storeli.w r6, -264(r30)                 # 4-byte Folded Spill
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r27,  -284(r30)                # 4-byte Folded Reload
	lui r19, 1024
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	and r2, r27, r11
	setlt.u r6, r25, r2
	storeli.w r2, -448(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r27, -276(r30)                # 4-byte Folded Spill
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r2, r27, r22
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r28, r11
	addli r27, r7, 0
	setlt.u r6, r25, r22
	bneq r6, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	storeli.w r28, -280(r30)                # 4-byte Folded Spill
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	or r2, r28, r19
	storeli.w r2, -280(r30)                 # 4-byte Folded Spill
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -260(r30)                 # 4-byte Folded Reload
	addli r25, r21, 0
	addli r21, r28, 0
	addli r28, r9, 0
	setlt.u r6, r6, r24
	bneq r6, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	lui r18, 1048560
	add.s r6, r6, r16
	and r8, r6, r18
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r6,  -260(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -424(r30)                # 4-byte Folded Reload
	addli r9, r12, 0
	setlt.u r5, r6, r5
	bneq r5, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r5, r14, 16
	lui r6, 1048560
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r16
	and r23, r5, r6
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -260(r30)                 # 4-byte Folded Reload
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	setlt.u r5, r6, r13
	bneq r5, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r5, r15, 16
	lui r13, 1048560
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r16
	and r24, r5, r13
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	setlt.u r5, r6, r20
	loadli.w r14,  -520(r30)                # 4-byte Folded Reload
	loadli.w r15,  -428(r30)                # 4-byte Folded Reload
	lui r13, 1048560
	bneq r5, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	add.s r3, r3, r16
	and r15, r3, r13
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	setlt.u r3, r6, r26
	loadli.w r20,  -432(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r16
	and r20, r1, r13
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	setlt.u r1, r6, r4
	loadli.w r26,  -440(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -500(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r25, r1, r13
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -480(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -436(r30)                # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r17, r1, r13
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -476(r30)                 # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -300(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r26, r1, r13
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -472(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -444(r30)                # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -492(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r12, r1, r13
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -468(r30)                 # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r28, r1, r13
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -464(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -304(r30)                 # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r1, r1, r13
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -460(r30)                 # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -484(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r1, r1, r13
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r16
	and r1, r1, r13
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r1, r1, r13
	storeli.w r1, -264(r30)                 # 4-byte Folded Spill
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	loadli.w r1,  -448(r30)                 # 4-byte Folded Reload
	lui r18, 522240
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	loadli.w r2,  -284(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r1, r1, r13
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:46:19
	setlt.u r1, r6, r22
	loadli.w r27,  -296(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r16
	and r1, r1, r13
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r22,  -292(r30)                # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	addli r1, zero, 16
	blt.s r9, r1, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r21,  -288(r30)                # 4-byte Folded Reload
	addli r1, zero, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r8, r23
	loadli.w r21,  -288(r30)                # 4-byte Folded Reload
	loadli.w r2,  -264(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r20
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r17
	add.f.rn r1, r1, r26
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r28
	add.f.rn r1, r1, r21
	add.f.rn r1, r1, r22
	add.f.rn r1, r1, r27
	add.f.rn r1, r1, r2
	loadli.w r2,  -276(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -280(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -504(r30)                 # 4-byte Folded Reload
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
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loadli.w r1,  -504(r30)                 # 4-byte Folded Reload
	.loc	1 56 21 is_stmt 1               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:56:21
	lui r2, 245760
	loads.w r1, 0(r1)
	mul.f.rn r6, r1, r2
	.loc	1 57 20                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:57:20
	sub.f.rn r1, r25, r6
	sub.f.rn r25, r12, r6
	loadli.w r12,  -264(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r20, r6
	sub.f.rn r3, r17, r6
	sub.f.rn r10, r8, r6
	sub.f.rn r5, r15, r6
	sub.f.rn r15, r21, r6
	sub.f.rn r8, r23, r6
	sub.f.rn r7, r24, r6
	sub.f.rn r2, r26, r6
	sub.f.rn r13, r28, r6
	sub.f.rn r22, r22, r6
	sub.f.rn r21, r27, r6
	sub.f.rn r20, r12, r6
	loadli.w r12,  -276(r30)                # 4-byte Folded Reload
	sub.f.rn r17, r12, r6
	loadli.w r12,  -280(r30)                # 4-byte Folded Reload
	sub.f.rn r28, r12, r6
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	addli r6, zero, 16
	blt.s r9, r6, .LBB0_90
.Ltmp4:
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r6, zero, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r6, r10, r10
	mul.f.rn r9, r8, r8
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r6, r9
.Ltmp6:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r7, r7
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp8:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r5, r5
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp10:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r4, r4
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp12:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r1, r1
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp14:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r3, r3
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp16:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r2, r2
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp18:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r25, r25
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp20:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r13, r13
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp22:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r15, r15
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp24:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r22, r22
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp26:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r21, r21
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp28:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r20, r20
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp30:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r17, r17
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.Ltmp32:
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r9, r28, r28
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r9, r6
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r9,  -516(r30)                 # 4-byte Folded Reload
	stores.w r6, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	bneq r6, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r12,  -508(r30)                # 4-byte Folded Reload
	loads.w r6, 0(r12)
	loads.w r9, 4(r12)
	loads.w r11, 8(r12)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r6, r9
	loads.w r9, 12(r12)
	add.f.rn r6, r6, r11
	loads.w r11, 16(r12)
	add.f.rn r6, r6, r9
	loads.w r9, 20(r12)
	add.f.rn r6, r6, r11
	loads.w r11, 24(r12)
	add.f.rn r6, r6, r9
	loads.w r9, 28(r12)
	add.f.rn r6, r6, r11
	loadli.w r11,  -268(r30)                # 4-byte Folded Reload
	add.f.rn r6, r6, r9
	stores.w r6, 0(r12)
.Ltmp34:
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loadli.w r6,  -508(r30)                 # 4-byte Folded Reload
	.loc	1 64 21 is_stmt 1               # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:64:21
	lui r9, 245760
	loads.w r6, 0(r6)
	mul.f.rn r6, r6, r9
	.loc	1 66 20                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:66:20
	loadli.w r9,  -620(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r6, r9
	.loc	1 67 28                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:67:28
	lui r9, 260096
	sqrt.f.rn r6, r6
	div.f.rn r9, r9, r6
	.loc	1 68 20                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:68:20
	mul.f.rn r6, r10, r9
	loadli.w r10,  -416(r30)                # 4-byte Folded Reload
	bfloat2float.rn r10, r10
	.loc	1 70 20                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:70:20
	add.f.rn r23, r6, r10
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r6, r23, r11
	storeli.w r6, -416(r30)                 # 4-byte Folded Spill
	setlt.u r6, r18, r6
	bneq r6, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r23, -276(r30)                # 4-byte Folded Spill
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r23, r19
	storeli.w r6, -276(r30)                 # 4-byte Folded Spill
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r6, r8, r9
	loadli.w r8,  -412(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r8, r8
	add.f.rn r26, r6, r8
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r6, r26, r11
	storeli.w r6, -412(r30)                 # 4-byte Folded Spill
	setlt.u r6, r18, r6
	bneq r6, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r26, -280(r30)                # 4-byte Folded Spill
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r26, r19
	storeli.w r6, -280(r30)                 # 4-byte Folded Spill
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r6, r7, r9
	loadli.w r7,  -408(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	storeli.w r17, -424(r30)                # 4-byte Folded Spill
	storeli.w r28, -428(r30)                # 4-byte Folded Spill
	bfloat2float.rn r7, r7
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	add.f.rn r27, r6, r7
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r6, r27, r11
	storeli.w r6, -408(r30)                 # 4-byte Folded Spill
	setlt.u r6, r18, r6
	bneq r6, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r27, -284(r30)                # 4-byte Folded Spill
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r27, r19
	storeli.w r6, -284(r30)                 # 4-byte Folded Spill
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r5, r5, r9
	loadli.w r6,  -400(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r17, r5, r6
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r5, r17, r11
	storeli.w r5, -400(r30)                 # 4-byte Folded Spill
	setlt.u r5, r18, r5
	bneq r5, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r17, -288(r30)                # 4-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r5, r17, r19
	storeli.w r5, -288(r30)                 # 4-byte Folded Spill
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r4, r4, r9
	loadli.w r5,  -392(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r5, r5
	add.f.rn r8, r4, r5
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r4, r8, r11
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	setlt.u r4, r18, r4
	bneq r4, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r8, -292(r30)                 # 4-byte Folded Spill
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r4, r8, r19
	storeli.w r4, -292(r30)                 # 4-byte Folded Spill
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r1, r1, r9
	loadli.w r4,  -384(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	add.f.rn r1, r1, r4
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r4, r1, r11
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	setlt.u r4, r18, r4
	bneq r4, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r4, r1, r19
	storeli.w r4, -296(r30)                 # 4-byte Folded Spill
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r3, r3, r9
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	add.f.rn r12, r3, r4
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r3, r12, r11
	storeli.w r3, -376(r30)                 # 4-byte Folded Spill
	setlt.u r3, r18, r3
	bneq r3, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r12, -300(r30)                # 4-byte Folded Spill
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r3, r12, r19
	storeli.w r3, -300(r30)                 # 4-byte Folded Spill
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r2, r2, r9
	loadli.w r3,  -368(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r4, r2, r3
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r2, r4, r11
	storeli.w r2, -432(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r4, -304(r30)                 # 4-byte Folded Spill
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r2, r4, r19
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r2, r25, r9
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r3, r2, r3
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r2, r3, r11
	storeli.w r2, -436(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r2, r3, r19
	storeli.w r2, -308(r30)                 # 4-byte Folded Spill
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r2, r13, r9
	loadli.w r5,  -360(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r5, r5
	add.f.rn r14, r2, r5
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r28, r14, r11
	setlt.u r5, r18, r28
	bneq r5, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r14, -264(r30)                # 4-byte Folded Spill
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r2, r14, r19
	storeli.w r2, -264(r30)                 # 4-byte Folded Spill
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r5, r15, r9
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	loadli.w r13,  -260(r30)                # 4-byte Folded Reload
	addli r25, r20, 0
	bfloat2float.rn r6, r6
	add.f.rn r2, r5, r6
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r5, r2, r11
	setlt.u r6, r18, r5
	bneq r6, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	j .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r2, r19
	storeli.w r6, -312(r30)                 # 4-byte Folded Spill
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r6, r22, r9
	loadli.w r7,  -316(r30)                 # 4-byte Folded Reload
	lui r15, 1048560
	lui r20, 1024
	lui r22, 522240
	bfloat2float.rn r7, r7
	add.f.rn r24, r6, r7
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r10, r24, r11
	setlt.u r6, r18, r10
	bneq r6, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r24, -316(r30)                # 4-byte Folded Spill
	j .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r24, r20
	storeli.w r6, -316(r30)                 # 4-byte Folded Spill
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r6, r21, r9
	loadli.w r7,  -320(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r7, r7
	add.f.rn r7, r6, r7
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r19, r7, r11
	setlt.u r6, r22, r19
	bneq r6, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r7, -320(r30)                 # 4-byte Folded Spill
	j .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r7, r20
	storeli.w r6, -320(r30)                 # 4-byte Folded Spill
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	mul.f.rn r6, r25, r9
	loadli.w r11,  -324(r30)                # 4-byte Folded Reload
	bfloat2float.rn r11, r11
	add.f.rn r25, r6, r11
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -268(r30)                 # 4-byte Folded Reload
	and r18, r25, r6
	setlt.u r6, r22, r18
	bneq r6, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r25, -324(r30)                # 4-byte Folded Spill
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r25, r20
	storeli.w r6, -324(r30)                 # 4-byte Folded Spill
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -328(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r6, r9
	bfloat2float.rn r11, r11
	add.f.rn r21, r6, r11
	loadli.w r11,  -268(r30)                # 4-byte Folded Reload
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r6, r21, r11
	storeli.w r6, -368(r30)                 # 4-byte Folded Spill
	setlt.u r6, r22, r6
	bneq r6, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r21, -328(r30)                # 4-byte Folded Spill
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r21, r20
	storeli.w r6, -328(r30)                 # 4-byte Folded Spill
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:0
	loadli.w r6,  -428(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r9
	loadli.w r9,  -348(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	add.f.rn r9, r6, r9
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	and r6, r9, r11
	storeli.w r6, -360(r30)                 # 4-byte Folded Spill
	setlt.u r6, r22, r6
	bneq r6, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	storeli.w r9, -348(r30)                 # 4-byte Folded Spill
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	lui r6, 1024
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	or r6, r9, r6
	storeli.w r6, -348(r30)                 # 4-byte Folded Spill
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -416(r30)                 # 4-byte Folded Reload
	setlt.u r6, r13, r6
	bneq r6, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r16
	and r6, r6, r15
	storeli.w r6, -276(r30)                 # 4-byte Folded Spill
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -412(r30)                 # 4-byte Folded Reload
	setlt.u r6, r13, r6
	bneq r6, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r26, 16
	andi r6, r6, 1
	add.s r6, r26, r6
	add.s r6, r6, r16
	and r6, r6, r15
	storeli.w r6, -280(r30)                 # 4-byte Folded Spill
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -408(r30)                 # 4-byte Folded Reload
	setlt.u r6, r13, r6
	bneq r6, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r16
	and r6, r6, r15
	storeli.w r6, -284(r30)                 # 4-byte Folded Spill
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -400(r30)                 # 4-byte Folded Reload
	setlt.u r6, r13, r6
	bneq r6, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r16
	and r6, r6, r15
	storeli.w r6, -288(r30)                 # 4-byte Folded Spill
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -392(r30)                 # 4-byte Folded Reload
	setlt.u r6, r13, r6
	bneq r6, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r16
	and r6, r6, r15
	storeli.w r6, -292(r30)                 # 4-byte Folded Spill
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -384(r30)                 # 4-byte Folded Reload
	setlt.u r6, r13, r6
	bneq r6, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r1, 16
	andi r6, r6, 1
	add.s r1, r1, r6
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	setlt.u r1, r13, r1
	bneq r1, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r1,  -432(r30)                 # 4-byte Folded Reload
	setlt.u r1, r13, r1
	bneq r1, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r1,  -436(r30)                 # 4-byte Folded Reload
	setlt.u r1, r13, r1
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	setlt.u r1, r13, r28
	loadli.w r3,  -264(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_171
# %bb.160:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r13, r5
	beq r1, zero, .LBB0_172
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r13, r10
	bneq r1, zero, .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	setlt.u r1, r13, r19
	storeli.w r9, -412(r30)                 # 4-byte Folded Spill
	bneq r1, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -540(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -420(r30)                 # 4-byte Folded Reload
	storeli.w r3, -264(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -596(r30)                 # 4-byte Folded Reload
	storeli.w r21, -392(r30)                # 4-byte Folded Spill
	add.s r4, r1, r8
	loadli.w r1,  -544(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r8
	add.s r3, r1, r8
	loadli.w r1,  -548(r30)                 # 4-byte Folded Reload
	add.s r7, r1, r8
	loadli.w r1,  -552(r30)                 # 4-byte Folded Reload
	add.s r16, r1, r8
	loadli.w r1,  -556(r30)                 # 4-byte Folded Reload
	add.s r15, r1, r8
	loadli.w r1,  -560(r30)                 # 4-byte Folded Reload
	add.s r14, r1, r8
	loadli.w r1,  -564(r30)                 # 4-byte Folded Reload
	add.s r13, r1, r8
	loadli.w r1,  -568(r30)                 # 4-byte Folded Reload
	add.s r10, r1, r8
	loadli.w r1,  -572(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r8
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	setlt.u r6, r1, r18
	loadli.w r1,  -576(r30)                 # 4-byte Folded Reload
	add.s r20, r1, r8
	loadli.w r1,  -580(r30)                 # 4-byte Folded Reload
	add.s r19, r1, r8
	loadli.w r1,  -584(r30)                 # 4-byte Folded Reload
	add.s r12, r1, r8
	loadli.w r1,  -588(r30)                 # 4-byte Folded Reload
	add.s r5, r1, r8
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r8
	bneq r6, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r6, r25, 16
	loadli.w r8,  -272(r30)                 # 4-byte Folded Reload
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r8
	lui r8, 1048560
	and r6, r6, r8
	storeli.w r6, -324(r30)                 # 4-byte Folded Spill
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	sext_int2long r[17:18], r4
	addli r8, zero, 1
	sext_int2long r[3:4], r3
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r6,  -260(r30)                 # 4-byte Folded Reload
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	sll.d r[17:18], r[17:18], r8
	sll.d r[3:4], r[3:4], r8
	store.d r[17:18], -376(r30)             # 8-byte Folded Spill
	sext_int2long r[17:18], r7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r7,  -368(r30)                 # 4-byte Folded Reload
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	sll.d r[3:4], r[17:18], r8
	sext_int2long r[17:18], r2
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	setlt.u r7, r6, r7
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	store.d r[3:4], -408(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r16
	sext_int2long r[15:16], r15
	sll.d r[21:22], r[3:4], r8
	sext_int2long r[3:4], r14
	sll.d r[23:24], r[15:16], r8
	sext_int2long r[15:16], r9
	sext_int2long r[13:14], r13
	sll.d r[27:28], r[3:4], r8
	sext_int2long r[3:4], r10
	sll.d r[13:14], r[13:14], r8
	sll.d r[15:16], r[15:16], r8
	sll.d r[9:10], r[3:4], r8
	sext_int2long r[3:4], r20
	sext_int2long r[19:20], r19
	sll.d r[25:26], r[3:4], r8
	sext_int2long r[3:4], r12
	sext_int2long r[11:12], r5
	sll.d r[19:20], r[19:20], r8
	sll.d r[5:6], r[3:4], r8
	sext_int2long r[3:4], r1
	sll.d r[11:12], r[11:12], r8
	sll.d r[1:2], r[3:4], r8
	sll.d r[3:4], r[17:18], r8
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	bneq r7, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	loadli.w r8,  -392(r30)                 # 4-byte Folded Reload
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	loadli.w r8,  -272(r30)                 # 4-byte Folded Reload
	add.s r7, r7, r8
	lui r8, 1048560
	and r7, r7, r8
	storeli.w r7, -328(r30)                 # 4-byte Folded Spill
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[17:18], 24(r30)
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	load.d r[7:8], -344(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[17:18], r[7:8]
	add.ul r[9:10], r[17:18], r[9:10]
	add.ul r[25:26], r[17:18], r[25:26]
	add.ul r[21:22], r[17:18], r[21:22]
	add.ul r[23:24], r[17:18], r[23:24]
	add.ul r[27:28], r[17:18], r[27:28]
	add.ul r[13:14], r[17:18], r[13:14]
	add.ul r[15:16], r[17:18], r[15:16]
	add.ul r[1:2], r[17:18], r[1:2]
	store.d r[7:8], -392(r30)               # 8-byte Folded Spill
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	store.d r[9:10], -368(r30)              # 8-byte Folded Spill
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	loadli.w r10,  -360(r30)                # 4-byte Folded Reload
	loadli.w r9,  -260(r30)                 # 4-byte Folded Reload
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	store.d r[25:26], -360(r30)             # 8-byte Folded Spill
	add.ul r[25:26], r[17:18], r[19:20]
	add.ul r[19:20], r[17:18], r[5:6]
	add.ul r[5:6], r[17:18], r[11:12]
	store.d r[5:6], -344(r30)               # 8-byte Folded Spill
	loadli.w r5,  -272(r30)                 # 4-byte Folded Reload
	add.ul r[7:8], r[17:18], r[7:8]
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	setlt.u r9, r9, r10
	.loc	1 72 0                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:0
	store.d r[7:8], -400(r30)               # 8-byte Folded Spill
	load.d r[7:8], -384(r30)                # 8-byte Folded Reload
	store.d r[1:2], -384(r30)               # 8-byte Folded Spill
	add.ul r[7:8], r[17:18], r[7:8]
	store.d r[7:8], -376(r30)               # 8-byte Folded Spill
	load.d r[7:8], -408(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[17:18], r[7:8]
	add.ul r[17:18], r[17:18], r[3:4]
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	bneq r9, zero, .LBB0_2
# %bb.170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	lui r2, 1048560
	add.s r1, r1, r5
	and r3, r1, r2
	j .LBB0_2
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r16
	and r3, r1, r15
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	setlt.u r1, r13, r5
	bneq r1, zero, .LBB0_161
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:0:48
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r16
	and r1, r1, r15
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	.loc	1 72 48                         # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:48
	setlt.u r1, r13, r10
	beq r1, zero, .LBB0_162
	j .LBB0_163
.LBB0_173:                              # %._crit_edge
	.loc	1 72 4 epilogue_begin           # cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py:72:4
	addli sp, r30, -640
	addli sp, sp, 640
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
	.byte	53                              # DW_AT_call_line
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
	.byte	61                              # DW_AT_call_line
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
.asciz	"cysp3c6rrzgnapvluebwaz5my2h6qketmgncl6my2e7dxu5lucza.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ys" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
