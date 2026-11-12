	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/ky" "cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py"
	.loc	1 22 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -832
	addli r30, sp, 768
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r13, 0
	loadli.w r7,  52(r30)
	loadli.w r4,  48(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  56(r30)
	ori r16, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	storeli.w r8, -624(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	storeli.w r4, -628(r30)                 # 4-byte Folded Spill
	ble.s r4, r13, .LBB0_173
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r11,  -624(r30)                # 4-byte Folded Reload
	load.d r[9:10], 8(r30)
	load.d r[6:7], 16(r30)
	lui r17, 1024
	vxor.u.mz vr0{mr1}, vr0, vr0
	storeli.w r16, -632(r30)                # 4-byte Folded Spill
	div.s r8, r1, r4
	load.d r[4:5], 24(r30)
	addli r11, r11, 1040
	storeli.w r11, -640(r30)                # 4-byte Folded Spill
	storeli.w r8, -636(r30)                 # 4-byte Folded Spill
	slli r8, r8, 6
	sub.s r8, r1, r8
	slli r14, r8, 4
	load_param_i r8, 1
	storeli.w r8, -648(r30)                 # 4-byte Folded Spill
	ori r8, r14, 1
	sext_int2long r[11:12], r14
	ori r15, r14, 13
	storeli.w r14, -644(r30)                # 4-byte Folded Spill
	storeli.w r8, -652(r30)                 # 4-byte Folded Spill
	ori r8, r14, 2
	storeli.w r15, -700(r30)                # 4-byte Folded Spill
	storeli.w r8, -656(r30)                 # 4-byte Folded Spill
	ori r8, r14, 3
	storeli.w r8, -660(r30)                 # 4-byte Folded Spill
	ori r8, r14, 4
	storeli.w r8, -664(r30)                 # 4-byte Folded Spill
	ori r8, r14, 5
	storeli.w r8, -668(r30)                 # 4-byte Folded Spill
	ori r8, r14, 6
	storeli.w r8, -672(r30)                 # 4-byte Folded Spill
	ori r8, r14, 7
	storeli.w r8, -676(r30)                 # 4-byte Folded Spill
	ori r8, r14, 8
	storeli.w r8, -680(r30)                 # 4-byte Folded Spill
	ori r8, r14, 9
	storeli.w r8, -684(r30)                 # 4-byte Folded Spill
	ori r8, r14, 10
	storeli.w r8, -688(r30)                 # 4-byte Folded Spill
	ori r8, r14, 11
	storeli.w r8, -692(r30)                 # 4-byte Folded Spill
	ori r8, r14, 12
	storeli.w r8, -696(r30)                 # 4-byte Folded Spill
	addli r8, zero, 1
	sll.d r[11:12], r[11:12], r8
	ori r8, r14, 14
	storeli.w r8, -704(r30)                 # 4-byte Folded Spill
	add.ul r[8:9], r[9:10], r[11:12]
	add.ul r[6:7], r[6:7], r[11:12]
	add.ul r[4:5], r[4:5], r[11:12]
	andi r11, r1, 63
	lui r1, 7
	addli r10, r30, -128
	store.d r[8:9], -712(r30)               # 8-byte Folded Spill
	lui r8, 1048575
	store.d r[6:7], -720(r30)               # 8-byte Folded Spill
	ori r1, r1, 4095
	addli r9, zero, 32
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	storeli.w r11, -732(r30)                # 4-byte Folded Spill
	ori r6, r8, 3840
	storeli.w r1, -336(r30)                 # 4-byte Folded Spill
	addli r8, r30, -320
	and r3, r3, r6
	add.s r3, r3, r2
	lui r2, 524287
	ori r1, r2, 4095
	lui r2, 239665
	storeli.w r3, -616(r30)                 # 4-byte Folded Spill
	storeli.w r1, -736(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	ori r1, r1, 4095
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	ori r1, r14, 15
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	addli r1, r3, 1040
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 75 49 prologue_end            # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	addli r7, zero, 2
	addli r10, r30, -128
	addli r3, r10, 2
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -128(r30)
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	store.h r2, -126(r30)
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -124(r30)
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	store.h r2, -122(r30)
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -120(r30)
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	store.h r2, -118(r30)
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -116(r30)
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	store.h r2, -114(r30)
	loadli.w r2,  -368(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -112(r30)
	loadli.w r1,  -372(r30)                 # 4-byte Folded Reload
	store.h r2, -110(r30)
	loadli.w r2,  -376(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -108(r30)
	loadli.w r1,  -380(r30)                 # 4-byte Folded Reload
	store.h r2, -106(r30)
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -104(r30)
	store.h r2, -102(r30)
	float2bfloat.rn r2, r4
	float2bfloat.rn r1, r28
	addli r4, r10, 6
	store.h r1, -100(r30)
	store.h r2, -98(r30)
	lui r1, 983040
	lui r2, 983040
	mfence { lm }
	load.d r[12:13], -456(r30)              # 8-byte Folded Reload
	or r1, r7, r1
	or r2, r7, r2
	s_lm2gm r1, r10, 0(r[12:13])
	load.d r[12:13], -464(r30)              # 8-byte Folded Reload
	addli r1, r10, 4
	s_lm2gm r2, r3, 0(r[12:13])
	lui r2, 983040
	load.d r[12:13], -440(r30)              # 8-byte Folded Reload
	lui r3, 983040
	or r2, r7, r2
	or r3, r7, r3
	s_lm2gm r2, r1, 0(r[12:13])
	load.d r[1:2], -448(r30)                # 8-byte Folded Reload
	load.d r[12:13], -432(r30)              # 8-byte Folded Reload
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	lui r4, 983040
	addli r1, r10, 8
	addli r2, r10, 10
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[22:23])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[24:25])
	lui r4, 983040
	addli r1, r10, 12
	addli r2, r10, 14
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[15:16])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[17:18])
	lui r4, 983040
	addli r1, r10, 16
	addli r2, r10, 18
	lui r17, 1024
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[12:13])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[5:6])
	load.d r[5:6], -408(r30)                # 8-byte Folded Reload
	addli r1, r10, 20
	lui r4, 983040
	addli r2, r10, 22
	loadli.w r13,  -388(r30)                # 4-byte Folded Reload
	or r3, r7, r3
	or r4, r7, r4
	s_lm2gm r3, r1, 0(r[5:6])
	load.d r[5:6], -424(r30)                # 8-byte Folded Reload
	lui r3, 983040
	addli r1, r10, 24
	or r3, r7, r3
	s_lm2gm r4, r2, 0(r[5:6])
	lui r4, 983040
	load.d r[5:6], -400(r30)                # 8-byte Folded Reload
	addli r2, r10, 26
	s_lm2gm r3, r1, 0(r[26:27])
	lui r3, 983040
	addli r1, r10, 28
	or r4, r7, r4
	or r3, r7, r3
	s_lm2gm r4, r2, 0(r[5:6])
	lui r4, 983040
	addli r2, r10, 30
	s_lm2gm r3, r1, 0(r[8:9])
	loadli.w r1,  -648(r30)                 # 4-byte Folded Reload
	addli r8, r30, -320
	addli r9, zero, 32
	or r4, r7, r4
	s_lm2gm r4, r2, 0(r[19:20])
	add.s r13, r13, r1
	mfence { lm }
	loadli.w r1,  -628(r30)                 # 4-byte Folded Reload
	blt.s r13, r1, .LBB0_3
	j .LBB0_173
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 49 is_stmt 0                # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:47
	add.s r2, r8, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r9, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 47 is_stmt 0                # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:47
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 29 23 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:29:23
	loadli.w r4,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 38 37                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:37
	loadli.w r5,  -644(r30)                 # 4-byte Folded Reload
	.loc	1 38 30 is_stmt 0               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:30
	addli r7, zero, 1
	.loc	1 39 37 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:39:37
	lui r3, 983040
	storeli.w r13, -388(r30)                # 4-byte Folded Spill
	.loc	1 38 47                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:47
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r18, zero, 1
	.loc	1 39 37                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	or r3, r9, r3
	vmmov mr2, r18
	div.s r1, r13, r1
	div.s r1, r1, r2
	.loc	1 38 47                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:47
	lui r2, 983040
	or r2, r9, r2
	.loc	1 29 23                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:29:23
	add.s r4, r1, r4
	.loc	1 40 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:40:38
	lui r1, 983040
	.loc	1 38 42                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:42
	slli r6, r4, 10
	.loc	1 40 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:40:38
	or r1, r9, r1
	storeli.w r4, -556(r30)                 # 4-byte Folded Spill
	.loc	1 41 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:41:38
	lui r4, 983040
	.loc	1 38 37                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:37
	add.s r5, r6, r5
	storeli.w r6, -408(r30)                 # 4-byte Folded Spill
	.loc	1 41 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:41:38
	or r4, r9, r4
	.loc	1 38 30                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:30
	sext_int2long r[5:6], r5
	sll.d r[11:12], r[5:6], r7
	load.d r[5:6], 0(r30)
	store.d r[11:12], -400(r30)             # 8-byte Folded Spill
	add.ul r[5:6], r[5:6], r[11:12]
	.loc	1 38 47 is_stmt 0               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:47
	l_gm2lm r2, r8, 0(r[5:6])
	.loc	1 39 37 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:39:37
	load.d r[5:6], -712(r30)                # 8-byte Folded Reload
	addli r2, r30, -256
	l_gm2lm r3, r2, 0(r[5:6])
	.loc	1 40 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:40:38
	load.d r[2:3], -720(r30)                # 8-byte Folded Reload
	addli r5, r30, -192
	l_gm2lm r1, r5, 0(r[2:3])
	.loc	1 41 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:41:38
	load.d r[1:2], -728(r30)                # 8-byte Folded Reload
	l_gm2lm r4, r10, 0(r[1:2])
	.loc	1 38 47                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:38:47
	mfence { lm }
	load.hu r3, -320(r30)
	load.hu r4, -318(r30)
	load.hu r2, -294(r30)
	load.hu r1, -292(r30)
	load.hu r5, -316(r30)
	load.hu r6, -314(r30)
	load.hu r7, -312(r30)
	load.hu r8, -310(r30)
	load.hu r9, -308(r30)
	load.hu r10, -306(r30)
	load.hu r11, -304(r30)
	load.hu r12, -302(r30)
	load.hu r13, -300(r30)
	load.hu r14, -298(r30)
	load.hu r15, -296(r30)
	load.hu r16, -290(r30)
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
	.loc	1 39 37                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:39:37
	load.hu r1, -256(r30)
	load.hu r2, -254(r30)
	load.hu r3, -252(r30)
	load.hu r4, -250(r30)
	load.hu r5, -248(r30)
	load.hu r6, -246(r30)
	load.hu r7, -244(r30)
	load.hu r8, -242(r30)
	load.hu r9, -240(r30)
	load.hu r10, -238(r30)
	load.hu r11, -236(r30)
	load.hu r12, -234(r30)
	load.hu r13, -232(r30)
	load.hu r14, -230(r30)
	load.hu r15, -228(r30)
	load.hu r16, -226(r30)
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
	lui r10, 522240
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
	.loc	1 40 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:40:38
	load.hu r1, -192(r30)
	storeli.w r1, -548(r30)                 # 4-byte Folded Spill
	load.hu r1, -190(r30)
	.loc	1 46 18                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:46:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 40 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:40:38
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	load.hu r1, -188(r30)
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	load.hu r1, -186(r30)
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	load.hu r1, -184(r30)
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
	load.hu r1, -182(r30)
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	load.hu r1, -180(r30)
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
	load.hu r1, -178(r30)
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	load.hu r1, -176(r30)
	storeli.w r1, -484(r30)                 # 4-byte Folded Spill
	load.hu r1, -174(r30)
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	load.hu r1, -172(r30)
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	load.hu r1, -170(r30)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	load.hu r1, -168(r30)
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
	load.hu r1, -166(r30)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	load.hu r1, -164(r30)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	load.hu r1, -162(r30)
	.loc	1 41 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:41:38
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	load.hu r1, -128(r30)
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
	load.hu r1, -126(r30)
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	load.hu r1, -124(r30)
	storeli.w r1, -536(r30)                 # 4-byte Folded Spill
	load.hu r1, -122(r30)
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	load.hu r1, -120(r30)
	storeli.w r1, -520(r30)                 # 4-byte Folded Spill
	load.hu r1, -118(r30)
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
	load.hu r1, -116(r30)
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
	load.hu r1, -114(r30)
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	load.hu r1, -112(r30)
	storeli.w r1, -488(r30)                 # 4-byte Folded Spill
	load.hu r1, -110(r30)
	.loc	1 46 18                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:46:18
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	.loc	1 41 38                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:41:38
	load.hu r1, -108(r30)
	storeli.w r1, -476(r30)                 # 4-byte Folded Spill
	load.hu r1, -106(r30)
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
	load.hu r1, -104(r30)
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
	load.hu r1, -102(r30)
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	load.hu r1, -100(r30)
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	load.hu r1, -98(r30)
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r21,  -64(r30)
	loadli.w r7,  -60(r30)
	loadli.w r18,  -56(r30)
	loadli.w r12,  -52(r30)
	loadli.w r3,  -48(r30)
	loadli.w r1,  -44(r30)
	loadli.w r4,  -40(r30)
	loadli.w r28,  -36(r30)
	loadli.w r24,  -32(r30)
	loadli.w r20,  -28(r30)
	loadli.w r14,  -736(r30)                # 4-byte Folded Reload
	loadli.w r25,  -24(r30)
	loadli.w r15,  -20(r30)
	loadli.w r13,  -16(r30)
	loadli.w r27,  -12(r30)
	loadli.w r9,  -8(r30)
	loadli.w r8,  -4(r30)
	and r6, r21, r14
	setlt.u r2, r10, r6
	bneq r2, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r21, -352(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r21, r17
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r11, r7, r14
	setlt.u r2, r10, r11
	bneq r2, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r7, -560(r30)                 # 4-byte Folded Spill
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r7, r17
	storeli.w r2, -560(r30)                 # 4-byte Folded Spill
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r16, r18, r14
	setlt.u r2, r10, r16
	bneq r2, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r18, -340(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r18, r17
	storeli.w r2, -340(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r5, r12, r14
	setlt.u r2, r10, r5
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r12, -344(r30)                # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r12, r17
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r23, r3, r14
	setlt.u r2, r10, r23
	bneq r2, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r3, -564(r30)                 # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r3, r17
	storeli.w r2, -564(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r19, r1, r14
	setlt.u r2, r10, r19
	bneq r2, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r1, r17
	storeli.w r2, -348(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r4, r14
	storeli.w r4, -612(r30)                 # 4-byte Folded Spill
	setlt.u r2, r10, r22
	bneq r2, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r4, -568(r30)                 # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r2, r4, r17
	storeli.w r2, -568(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r2, r28, r14
	storeli.w r28, -608(r30)                # 4-byte Folded Spill
	setlt.u r4, r10, r2
	beq r4, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	or r28, r28, r17
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r24, r14
	storeli.w r24, -604(r30)                # 4-byte Folded Spill
	setlt.u r4, r10, r26
	bneq r4, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r24, -572(r30)                # 4-byte Folded Spill
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r4, r24, r17
	storeli.w r4, -572(r30)                 # 4-byte Folded Spill
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	and r24, r20, r14
	storeli.w r20, -600(r30)                # 4-byte Folded Spill
	setlt.u r4, r10, r24
	bneq r4, zero, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r20, -576(r30)                # 4-byte Folded Spill
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r4, r20, r17
	storeli.w r4, -576(r30)                 # 4-byte Folded Spill
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	and r20, r25, r14
	storeli.w r8, -364(r30)                 # 4-byte Folded Spill
	setlt.u r4, r10, r20
	bneq r4, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r25, -580(r30)                # 4-byte Folded Spill
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r4, r25, r17
	storeli.w r4, -580(r30)                 # 4-byte Folded Spill
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	and r8, r15, r14
	storeli.w r28, -360(r30)                # 4-byte Folded Spill
	storeli.w r15, -592(r30)                # 4-byte Folded Spill
	setlt.u r4, r10, r8
	bneq r4, zero, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	addli r4, r15, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r4, r15, r17
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	and r15, r13, r14
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	storeli.w r25, -596(r30)                # 4-byte Folded Spill
	lui r25, 1024
	setlt.u r4, r10, r15
	bneq r4, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r13, -368(r30)                # 4-byte Folded Spill
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r4, r13, r17
	storeli.w r4, -368(r30)                 # 4-byte Folded Spill
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	and r4, r27, r14
	lui r17, 522240
	storeli.w r27, -584(r30)                # 4-byte Folded Spill
	storeli.w r13, -588(r30)                # 4-byte Folded Spill
	setlt.u r10, r10, r4
	beq r10, zero, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=1
	or r27, r27, r25
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	and r28, r9, r14
	addli r10, r9, 0
	setlt.u r13, r17, r28
	bneq r13, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	storeli.w r9, -328(r30)                 # 4-byte Folded Spill
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r13, r9, r25
	storeli.w r13, -328(r30)                # 4-byte Folded Spill
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r9,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	and r25, r9, r14
	setlt.u r13, r17, r25
	bneq r13, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	lui r17, 1024
	storeli.w r9, -332(r30)                 # 4-byte Folded Spill
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	lui r17, 1024
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	or r13, r9, r17
	storeli.w r13, -332(r30)                # 4-byte Folded Spill
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r13,  -324(r30)                # 4-byte Folded Reload
	setlt.u r6, r13, r6
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	lui r21, 1048560
	add.s r6, r6, r13
	and r6, r6, r21
	storeli.w r6, -352(r30)                 # 4-byte Folded Spill
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r21,  -560(r30)                # 4-byte Folded Reload
	setlt.u r6, r6, r11
	lui r11, 1048560
	bneq r6, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r13
	and r21, r6, r11
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	setlt.u r6, r6, r16
	bneq r6, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r13
	and r6, r6, r11
	storeli.w r6, -340(r30)                 # 4-byte Folded Spill
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -556(r30)                 # 4-byte Folded Reload
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r5, r6, r5
	bneq r5, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r13
	and r5, r5, r11
	storeli.w r5, -344(r30)                 # 4-byte Folded Spill
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r5, r6, r23
	loadli.w r12,  -632(r30)                # 4-byte Folded Reload
	loadli.w r16,  -352(r30)                # 4-byte Folded Reload
	loadli.w r18,  -564(r30)                # 4-byte Folded Reload
	bneq r5, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	add.s r3, r3, r13
	and r18, r3, r11
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r3, r6, r19
	bneq r3, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r13
	and r1, r1, r11
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r22
	loadli.w r19,  -340(r30)                # 4-byte Folded Reload
	loadli.w r22,  -568(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r3,  -612(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r13
	and r22, r1, r11
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r2
	addli r3, r27, 0
	bneq r1, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -608(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r1, r1, r11
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r26
	loadli.w r26,  -572(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r26, r1, r11
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r24
	loadli.w r24,  -576(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -600(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r24, r1, r11
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r20
	loadli.w r20,  -580(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_83
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r6, r8
	beq r1, zero, .LBB0_84
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r6, r15
	bneq r1, zero, .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -588(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r1, r1, r11
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r4
	loadli.w r15,  -360(r30)                # 4-byte Folded Reload
	addli r8, zero, 128
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -584(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r3, r1, r11
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r28
	loadli.w r28,  -368(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r13
	and r1, r1, r11
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r25
	lui r10, 522240
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r1, r1, r11
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -344(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -356(r30)                # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	blt.s r7, r8, .LBB0_85
.Ltmp2:
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r5,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -348(r30)                # 4-byte Folded Reload
	addli r1, zero, 0
	j .LBB0_86
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -596(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r20, r1, r11
	.loc	1 47 19 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r8
	bneq r1, zero, .LBB0_73
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:19
	loadli.w r2,  -592(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r1, r1, r11
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	.loc	1 47 19                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:47:19
	setlt.u r1, r6, r15
	beq r1, zero, .LBB0_74
	j .LBB0_75
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r16, r21
	loadli.w r11,  -348(r30)                # 4-byte Folded Reload
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -732(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r19
	add.f.rn r1, r1, r6
	add.f.rn r1, r1, r18
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r22
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r26
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r20
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r28
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r2,  -624(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	bneq r5, zero, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -616(r30)                 # 4-byte Folded Reload
	addli r9, r3, 0
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
	addli r3, r9, 0
	stores.w r1, 0(r4)
.Ltmp4:
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loadli.w r1,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 57 21 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:57:21
	lui r2, 239616
	loads.w r1, 0(r1)
	mul.f.rn r2, r1, r2
	.loc	1 58 20                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:58:20
	sub.f.rn r23, r16, r2
	sub.f.rn r16, r21, r2
	sub.f.rn r21, r24, r2
	sub.f.rn r24, r3, r2
	loadli.w r3,  -328(r30)                 # 4-byte Folded Reload
	sub.f.rn r27, r6, r2
	sub.f.rn r6, r22, r2
	sub.f.rn r22, r15, r2
	sub.f.rn r9, r18, r2
	sub.f.rn r4, r20, r2
	sub.f.rn r19, r19, r2
	sub.f.rn r1, r11, r2
	sub.f.rn r26, r26, r2
	sub.f.rn r20, r25, r2
	sub.f.rn r18, r28, r2
	sub.f.rn r15, r3, r2
	loadli.w r3,  -332(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r3, r2
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r7, r8, .LBB0_90
.Ltmp6:
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r2, zero, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r2, r23, r23
	mul.f.rn r3, r16, r16
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r3
.Ltmp8:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r19, r19
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp10:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r27, r27
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp12:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r9, r9
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp14:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r1, r1
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp16:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r6, r6
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp18:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r22, r22
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp20:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r26, r26
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp22:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r21, r21
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp24:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r4, r4
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp26:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r20, r20
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp28:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r18, r18
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp30:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r24, r24
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp32:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r15, r15
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.Ltmp34:
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r11, r11
.Ltmp35:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r3, r2
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -640(r30)                 # 4-byte Folded Reload
	storeli.w r15, -556(r30)                # 4-byte Folded Spill
	stores.w r2, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	bneq r5, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -620(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r7)
	loads.w r5, 4(r7)
	loads.w r3, 8(r7)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r5
	loads.w r5, 12(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 16(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 20(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 24(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 28(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 32(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 36(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 40(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 44(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 48(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 52(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 56(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 60(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 64(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 68(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 72(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 76(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 80(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 84(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 88(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 92(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 96(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 100(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 104(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 108(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 112(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 116(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 120(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 124(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 128(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 132(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 136(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 140(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 144(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 148(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 152(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 156(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 160(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 164(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 168(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 172(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 176(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 180(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 184(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 188(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 192(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 196(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 200(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 204(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 208(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 212(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 216(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 220(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 224(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 228(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 232(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 236(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 240(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 244(r7)
	add.f.rn r2, r2, r3
	loads.w r3, 248(r7)
	add.f.rn r2, r2, r5
	loads.w r5, 252(r7)
	add.f.rn r2, r2, r3
	add.f.rn r2, r2, r5
	stores.w r2, 0(r7)
.Ltmp36:
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loadli.w r2,  -620(r30)                 # 4-byte Folded Reload
	.loc	1 65 21 is_stmt 1               # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:65:21
	lui r3, 239616
	addli r12, r26, 0
	loads.w r2, 0(r2)
	mul.f.rn r2, r2, r3
	.loc	1 67 20                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:67:20
	loadli.w r3,  -740(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	.loc	1 68 28                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:68:28
	lui r3, 260096
	sqrt.f.rn r2, r2
	div.f.rn r15, r3, r2
	loadli.w r3,  -548(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	.loc	1 69 20                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:69:20
	mul.f.rn r2, r23, r15
	.loc	1 71 20                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:71:20
	mul.f.rn r2, r2, r3
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	.loc	1 73 20                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:73:20
	add.f.rn r8, r2, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r2, r8, r14
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	setlt.u r2, r10, r2
	bneq r2, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49 is_stmt 0                # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r8, -328(r30)                 # 4-byte Folded Spill
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r2, r8, r17
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r2, r16, r15
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	storeli.w r11, -560(r30)                # 4-byte Folded Spill
	bfloat2float.rn r3, r3
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r26, r2, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r2, r26, r14
	storeli.w r2, -540(r30)                 # 4-byte Folded Spill
	setlt.u r2, r10, r2
	bneq r2, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r26, -332(r30)                # 4-byte Folded Spill
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r2, r26, r17
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r2, r19, r15
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	mul.f.rn r2, r2, r3
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r11, r2, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r2, r11, r14
	storeli.w r2, -532(r30)                 # 4-byte Folded Spill
	setlt.u r2, r10, r2
	bneq r2, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r11, -340(r30)                # 4-byte Folded Spill
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r2, r11, r17
	storeli.w r2, -340(r30)                 # 4-byte Folded Spill
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r2, r27, r15
	loadli.w r3,  -524(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	mul.f.rn r2, r2, r3
	loadli.w r3,  -528(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r27, r2, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r2, r27, r14
	storeli.w r2, -524(r30)                 # 4-byte Folded Spill
	setlt.u r2, r10, r2
	bneq r2, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r27, -344(r30)                # 4-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r2, r27, r17
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r2, r9, r15
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	mul.f.rn r2, r2, r3
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r19, r2, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r2, r19, r14
	storeli.w r2, -516(r30)                 # 4-byte Folded Spill
	setlt.u r2, r10, r2
	bneq r2, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r19, -348(r30)                # 4-byte Folded Spill
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r2, r19, r17
	storeli.w r2, -348(r30)                 # 4-byte Folded Spill
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r1, r15
	loadli.w r2,  -508(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	mul.f.rn r1, r1, r2
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	add.f.rn r2, r1, r2
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r1, r2, r14
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	setlt.u r1, r10, r1
	bneq r1, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r1, r2, r17
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r6, r15
	loadli.w r3,  -500(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	mul.f.rn r1, r1, r3
	loadli.w r3,  -504(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r5, r1, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r1, r5, r14
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
	setlt.u r1, r10, r1
	bneq r1, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r5, -356(r30)                 # 4-byte Folded Spill
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r1, r5, r17
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r22, r15
	loadli.w r3,  -492(r30)                 # 4-byte Folded Reload
	addli r7, r21, 0
	bfloat2float.rn r3, r3
	mul.f.rn r1, r1, r3
	loadli.w r3,  -496(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r23, r1, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r25, r23, r14
	setlt.u r1, r10, r25
	bneq r1, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r23, -360(r30)                # 4-byte Folded Spill
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r1, r23, r17
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r12, r15
	loadli.w r3,  -484(r30)                 # 4-byte Folded Reload
	addli r6, r18, 0
	bfloat2float.rn r3, r3
	mul.f.rn r1, r1, r3
	loadli.w r3,  -488(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r12, r1, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r21, r12, r14
	setlt.u r1, r10, r21
	bneq r1, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r12, -364(r30)                # 4-byte Folded Spill
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r1, r12, r17
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r7, r15
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	lui r28, 1024
	lui r17, 522240
	bfloat2float.rn r3, r3
	mul.f.rn r1, r1, r3
	loadli.w r3,  -480(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r18, r1, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r16, r18, r14
	setlt.u r1, r10, r16
	bneq r1, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r18, -368(r30)                # 4-byte Folded Spill
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r1, r18, r28
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r4, r15
	loadli.w r3,  -372(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	mul.f.rn r1, r1, r3
	loadli.w r3,  -476(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r10, r1, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r7, r10, r14
	setlt.u r1, r17, r7
	bneq r1, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r10, -372(r30)                # 4-byte Folded Spill
	j .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r1, r10, r28
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r1, r20, r15
	loadli.w r3,  -376(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	mul.f.rn r1, r1, r3
	loadli.w r3,  -464(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	add.f.rn r20, r1, r3
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r1, r20, r14
	setlt.u r3, r17, r1
	bneq r3, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r20, -376(r30)                # 4-byte Folded Spill
	j .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r3, r20, r28
	storeli.w r3, -376(r30)                 # 4-byte Folded Spill
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r6, r15
	loadli.w r4,  -380(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	mul.f.rn r3, r3, r4
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	add.f.rn r22, r3, r4
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r9, r22, r14
	setlt.u r3, r17, r9
	bneq r3, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r22, -380(r30)                # 4-byte Folded Spill
	j .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r3, r22, r28
	storeli.w r3, -380(r30)                 # 4-byte Folded Spill
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	mul.f.rn r3, r24, r15
	loadli.w r4,  -384(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	mul.f.rn r3, r3, r4
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r4, r4
	add.f.rn r24, r3, r4
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r3, r24, r14
	setlt.u r4, r17, r3
	bneq r4, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r24, -384(r30)                # 4-byte Folded Spill
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r4, r24, r28
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	loadli.w r4,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r15
	bfloat2float.rn r6, r6
	mul.f.rn r4, r4, r6
	loadli.w r6,  -440(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r6, r4, r6
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r4, r6, r14
	storeli.w r6, -456(r30)                 # 4-byte Folded Spill
	storeli.w r4, -440(r30)                 # 4-byte Folded Spill
	setlt.u r4, r17, r4
	bneq r4, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	addli r28, r6, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r28, r6, r28
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:0
	loadli.w r4,  -560(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -412(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r15
	bfloat2float.rn r6, r6
	mul.f.rn r4, r4, r6
	loadli.w r6,  -432(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r6, r4, r6
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	and r4, r6, r14
	storeli.w r6, -476(r30)                 # 4-byte Folded Spill
	storeli.w r4, -424(r30)                 # 4-byte Folded Spill
	setlt.u r4, r17, r4
	bneq r4, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	storeli.w r6, -412(r30)                 # 4-byte Folded Spill
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	lui r4, 1024
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	or r4, r6, r4
	storeli.w r4, -412(r30)                 # 4-byte Folded Spill
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -548(r30)                 # 4-byte Folded Reload
	setlt.u r4, r6, r4
	bneq r4, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	lui r8, 1048560
	add.s r4, r4, r13
	and r4, r4, r8
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	setlt.u r4, r6, r4
	bneq r4, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r4, r26, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r26, r4
	add.s r4, r4, r13
	and r4, r4, r8
	storeli.w r4, -332(r30)                 # 4-byte Folded Spill
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -532(r30)                 # 4-byte Folded Reload
	setlt.u r4, r6, r4
	bneq r4, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r4, r11, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r13
	and r4, r4, r8
	storeli.w r4, -340(r30)                 # 4-byte Folded Spill
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -524(r30)                 # 4-byte Folded Reload
	lui r8, 1048560
	setlt.u r4, r6, r4
	bneq r4, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r13
	and r4, r4, r8
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r4, r6, r4
	bneq r4, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r13
	and r4, r4, r8
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -508(r30)                 # 4-byte Folded Reload
	setlt.u r4, r6, r4
	bneq r4, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r13
	and r2, r2, r8
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r2,  -500(r30)                 # 4-byte Folded Reload
	setlt.u r2, r6, r2
	beq r2, zero, .LBB0_167
# %bb.154:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r2, r6, r25
	beq r2, zero, .LBB0_168
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r2, r6, r21
	beq r2, zero, .LBB0_169
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r2, r6, r16
	beq r2, zero, .LBB0_170
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r2, r6, r7
	beq r2, zero, .LBB0_171
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r6, r1
	beq r1, zero, .LBB0_172
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r6, r9
	bneq r1, zero, .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r13
	and r1, r1, r8
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r15,  -408(r30)                # 4-byte Folded Reload
	loadli.w r4,  -660(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r8,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -652(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -704(r30)                # 4-byte Folded Reload
	loadli.w r5,  -684(r30)                 # 4-byte Folded Reload
	addli r21, r28, 0
	lui r20, 1048560
	add.s r11, r4, r15
	loadli.w r4,  -664(r30)                 # 4-byte Folded Reload
	setlt.u r9, r8, r3
	loadli.w r3,  -688(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r15
	loadli.w r1,  -656(r30)                 # 4-byte Folded Reload
	add.s r12, r10, r15
	loadli.w r10,  -744(r30)                # 4-byte Folded Reload
	add.s r5, r5, r15
	add.s r14, r4, r15
	loadli.w r4,  -668(r30)                 # 4-byte Folded Reload
	add.s r26, r3, r15
	loadli.w r3,  -692(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r15
	add.s r22, r10, r15
	add.s r13, r4, r15
	loadli.w r4,  -672(r30)                 # 4-byte Folded Reload
	add.s r8, r3, r15
	loadli.w r3,  -696(r30)                 # 4-byte Folded Reload
	add.s r6, r4, r15
	loadli.w r4,  -676(r30)                 # 4-byte Folded Reload
	add.s r19, r3, r15
	loadli.w r3,  -700(r30)                 # 4-byte Folded Reload
	add.s r7, r4, r15
	loadli.w r4,  -680(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r15
	add.s r4, r4, r15
	bneq r9, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r9, r24, 16
	loadli.w r10,  -336(r30)                # 4-byte Folded Reload
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r10
	and r9, r9, r20
	storeli.w r9, -384(r30)                 # 4-byte Folded Spill
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	sext_int2long r[9:10], r2
	addli r28, zero, 1
	sext_int2long r[1:2], r1
	sll.d r[9:10], r[9:10], r28
	sll.d r[1:2], r[1:2], r28
	store.d r[9:10], -408(r30)              # 8-byte Folded Spill
	sext_int2long r[9:10], r11
	store.d r[1:2], -432(r30)               # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r28
	sext_int2long r[9:10], r13
	store.d r[1:2], -448(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r14
	sll.d r[24:25], r[9:10], r28
	sext_int2long r[9:10], r5
	sll.d r[1:2], r[1:2], r28
	sll.d r[13:14], r[9:10], r28
	sext_int2long r[9:10], r8
	store.d r[1:2], -472(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r6
	sext_int2long r[6:7], r7
	sll.d r[15:16], r[1:2], r28
	sext_int2long r[1:2], r4
	sll.d r[17:18], r[6:7], r28
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r4,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	sll.d r[5:6], r[1:2], r28
	sext_int2long r[1:2], r26
	sll.d r[26:27], r[9:10], r28
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r9,  -440(r30)                 # 4-byte Folded Reload
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	sll.d r[7:8], r[1:2], r28
	sext_int2long r[1:2], r19
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r19, r4, r9
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	sext_int2long r[9:10], r3
	sll.d r[3:4], r[1:2], r28
	sll.d r[1:2], r[9:10], r28
	sext_int2long r[9:10], r12
	sext_int2long r[11:12], r22
	sll.d r[9:10], r[9:10], r28
	sll.d r[11:12], r[11:12], r28
	addli r28, r21, 0
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	bneq r19, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	loadli.w r21,  -456(r30)                # 4-byte Folded Reload
	loadli.w r28,  -336(r30)                # 4-byte Folded Reload
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r28
	and r28, r19, r20
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[19:20], 32(r30)
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	load.d r[21:22], -400(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	add.ul r[5:6], r[19:20], r[5:6]
	add.ul r[7:8], r[19:20], r[7:8]
	add.ul r[1:2], r[19:20], r[1:2]
	add.ul r[24:25], r[19:20], r[24:25]
	add.ul r[15:16], r[19:20], r[15:16]
	add.ul r[17:18], r[19:20], r[17:18]
	store.d r[21:22], -456(r30)             # 8-byte Folded Spill
	load.d r[21:22], -408(r30)              # 8-byte Folded Reload
	store.d r[7:8], -408(r30)               # 8-byte Folded Spill
	add.ul r[7:8], r[19:20], r[26:27]
	add.ul r[26:27], r[19:20], r[3:4]
	loadli.w r4,  -412(r30)                 # 4-byte Folded Reload
	lui r3, 1048560
	store.d r[1:2], -400(r30)               # 8-byte Folded Spill
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -464(r30)             # 8-byte Folded Spill
	load.d r[21:22], -432(r30)              # 8-byte Folded Reload
	store.d r[5:6], -432(r30)               # 8-byte Folded Spill
	add.ul r[5:6], r[19:20], r[13:14]
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	loadli.w r14,  -424(r30)                # 4-byte Folded Reload
	loadli.w r13,  -324(r30)                # 4-byte Folded Reload
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	store.d r[7:8], -424(r30)               # 8-byte Folded Spill
	add.ul r[8:9], r[19:20], r[9:10]
	add.ul r[21:22], r[19:20], r[21:22]
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r13, r13, r14
	.loc	1 75 0                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:0
	store.d r[21:22], -440(r30)             # 8-byte Folded Spill
	load.d r[21:22], -448(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -448(r30)             # 8-byte Folded Spill
	load.d r[21:22], -472(r30)              # 8-byte Folded Reload
	add.ul r[22:23], r[19:20], r[21:22]
	add.ul r[19:20], r[19:20], r[11:12]
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	bneq r13, zero, .LBB0_2
# %bb.166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	loadli.w r2,  -476(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r4, r1, r3
	j .LBB0_2
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	srli r2, r5, 16
	andi r2, r2, 1
	add.s r2, r5, r2
	add.s r2, r2, r13
	and r2, r2, r8
	storeli.w r2, -356(r30)                 # 4-byte Folded Spill
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r2, r6, r25
	bneq r2, zero, .LBB0_155
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r13
	and r2, r2, r8
	storeli.w r2, -360(r30)                 # 4-byte Folded Spill
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r2, r6, r21
	bneq r2, zero, .LBB0_156
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r13
	and r2, r2, r8
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r2, r6, r16
	bneq r2, zero, .LBB0_157
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r13
	and r2, r2, r8
	storeli.w r2, -368(r30)                 # 4-byte Folded Spill
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r2, r6, r7
	bneq r2, zero, .LBB0_158
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r13
	and r2, r2, r8
	storeli.w r2, -372(r30)                 # 4-byte Folded Spill
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_159
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:0:49
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r1, r1, r8
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	.loc	1 75 49                         # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:49
	setlt.u r1, r6, r9
	beq r1, zero, .LBB0_160
	j .LBB0_161
.LBB0_173:                              # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py:75:4
	addli sp, r30, -768
	addli sp, sp, 768
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
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	832                             # 0x340
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
	.byte	54                              # DW_AT_call_line
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
	.byte	62                              # DW_AT_call_line
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
.asciz	"cky7enjtysakik2vcar3yuasmepnz6kp6njjq3n5ds3gc4ssgbze.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/ky" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
