	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/de" "cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py"
	.loc	1 22 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -832
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 768
	lui r5, 15
	load_param_i r13, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  52(r30)
	loadli.w r4,  48(r30)
	loadli.w r6,  56(r30)
	ori r17, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	addli r9, r8, 8208
	mul.s r4, r4, r6
	storeli.w r9, -632(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r17
	sync_group
	storeli.w r8, -628(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r17
	sync_group
	storeli.w r4, -636(r30)                 # 4-byte Folded Spill
	ble.s r4, r13, .LBB0_173
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r11, 1
	addli r14, zero, 1
	load.d r[7:8], 16(r30)
	load.d r[9:10], 8(r30)
	addli r28, zero, 1
	vxor.u.mz vr0{mr1}, vr0, vr0
	storeli.w r17, -640(r30)                # 4-byte Folded Spill
	div.s r6, r1, r4
	storeli.w r11, -652(r30)                # 4-byte Folded Spill
	load.d r[4:5], 24(r30)
	storeli.w r6, -644(r30)                 # 4-byte Folded Spill
	slli r6, r6, 3
	sub.s r6, r1, r6
	andi r1, r1, 7
	slli r6, r6, 4
	storeli.w r1, -388(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r11, r6, 1
	ori r15, r6, 14
	storeli.w r6, -648(r30)                 # 4-byte Folded Spill
	storeli.w r11, -656(r30)                # 4-byte Folded Spill
	ori r11, r6, 2
	storeli.w r15, -708(r30)                # 4-byte Folded Spill
	storeli.w r11, -660(r30)                # 4-byte Folded Spill
	ori r11, r6, 3
	storeli.w r11, -664(r30)                # 4-byte Folded Spill
	ori r11, r6, 4
	storeli.w r11, -668(r30)                # 4-byte Folded Spill
	ori r11, r6, 5
	storeli.w r11, -672(r30)                # 4-byte Folded Spill
	ori r11, r6, 6
	storeli.w r11, -676(r30)                # 4-byte Folded Spill
	ori r11, r6, 7
	storeli.w r11, -680(r30)                # 4-byte Folded Spill
	ori r11, r6, 8
	storeli.w r11, -684(r30)                # 4-byte Folded Spill
	ori r11, r6, 9
	storeli.w r11, -688(r30)                # 4-byte Folded Spill
	ori r11, r6, 10
	storeli.w r11, -692(r30)                # 4-byte Folded Spill
	ori r11, r6, 11
	storeli.w r11, -696(r30)                # 4-byte Folded Spill
	ori r11, r6, 12
	storeli.w r11, -700(r30)                # 4-byte Folded Spill
	ori r11, r6, 13
	storeli.w r11, -704(r30)                # 4-byte Folded Spill
	sext_int2long r[11:12], r6
	ori r6, r6, 15
	storeli.w r6, -712(r30)                 # 4-byte Folded Spill
	lui r6, 1048575
	sll.d r[11:12], r[11:12], r14
	ori r6, r6, 4064
	add.ul r[4:5], r[4:5], r[11:12]
	add.ul r[9:10], r[9:10], r[11:12]
	add.ul r[7:8], r[7:8], r[11:12]
	and r3, r3, r6
	store.d r[4:5], -736(r30)               # 8-byte Folded Spill
	ori r5, r1, 4095
	lui r1, 522239
	store.d r[9:10], -720(r30)              # 8-byte Folded Spill
	store.d r[7:8], -728(r30)               # 8-byte Folded Spill
	addli r8, r30, -320
	addli r9, zero, 32
	add.s r3, r3, r2
	lui r2, 524287
	ori r6, r1, 4095
	storeli.w r5, -336(r30)                 # 4-byte Folded Spill
	ori r4, r2, 4095
	lui r2, 239665
	storeli.w r3, -620(r30)                 # 4-byte Folded Spill
	storeli.w r6, -324(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r4, -740(r30)                 # 4-byte Folded Spill
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	addli r1, r3, 8208
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 75 48 prologue_end            # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	addli r6, zero, 2
	addli r8, r30, -320
	addli r4, r8, 6
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -320(r30)
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	store.h r2, -318(r30)
	float2bfloat.rn r2, r23
	store.h r2, -314(r30)
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	store.h r1, -316(r30)
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	store.h r2, -310(r30)
	loadli.w r2,  -356(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	store.h r1, -312(r30)
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	store.h r2, -306(r30)
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	store.h r1, -308(r30)
	loadli.w r1,  -360(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	store.h r2, -302(r30)
	loadli.w r2,  -372(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	store.h r1, -304(r30)
	loadli.w r1,  -368(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	store.h r2, -298(r30)
	loadli.w r2,  -380(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	store.h r1, -300(r30)
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	store.h r2, -294(r30)
	float2bfloat.rn r2, r3
	addli r3, r8, 2
	float2bfloat.rn r1, r1
	store.h r2, -290(r30)
	lui r2, 983040
	store.h r1, -296(r30)
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	or r2, r6, r2
	float2bfloat.rn r1, r1
	store.h r1, -292(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[13:14], -464(r30)              # 8-byte Folded Reload
	or r1, r6, r1
	s_lm2gm r1, r8, 0(r[13:14])
	load.d r[13:14], -472(r30)              # 8-byte Folded Reload
	addli r1, r8, 4
	s_lm2gm r2, r3, 0(r[13:14])
	lui r2, 983040
	load.d r[13:14], -448(r30)              # 8-byte Folded Reload
	lui r3, 983040
	or r2, r6, r2
	or r3, r6, r3
	s_lm2gm r2, r1, 0(r[13:14])
	load.d r[1:2], -456(r30)                # 8-byte Folded Reload
	load.d r[13:14], -432(r30)              # 8-byte Folded Reload
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 8
	addli r2, r8, 10
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[13:14])
	s_lm2gm r4, r2, 0(r[21:22])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 12
	addli r2, r8, 14
	loadli.w r13,  -392(r30)                # 4-byte Folded Reload
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[9:10])
	s_lm2gm r4, r2, 0(r[11:12])
	lui r3, 983040
	lui r4, 983040
	load.d r[9:10], -424(r30)               # 8-byte Folded Reload
	addli r1, r8, 16
	addli r2, r8, 18
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[9:10])
	s_lm2gm r4, r2, 0(r[15:16])
	lui r3, 983040
	lui r4, 983040
	load.d r[9:10], -416(r30)               # 8-byte Folded Reload
	addli r1, r8, 20
	addli r2, r8, 22
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r3, r1, 0(r[9:10])
	s_lm2gm r4, r2, 0(r[24:25])
	lui r3, 983040
	lui r4, 983040
	load.d r[9:10], -400(r30)               # 8-byte Folded Reload
	addli r1, r8, 24
	addli r2, r8, 26
	or r3, r6, r3
	or r4, r6, r4
	s_lm2gm r4, r2, 0(r[9:10])
	s_lm2gm r3, r1, 0(r[26:27])
	lui r3, 983040
	lui r4, 983040
	addli r1, r8, 28
	addli r2, r8, 30
	addli r9, zero, 32
	or r4, r6, r4
	or r3, r6, r3
	load.d r[6:7], -440(r30)                # 8-byte Folded Reload
	s_lm2gm r4, r2, 0(r[18:19])
	s_lm2gm r3, r1, 0(r[6:7])
	loadli.w r1,  -652(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r13, r13, r1
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	blt.s r13, r1, .LBB0_3
	j .LBB0_173
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 48 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	add.s r2, r8, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r9, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 46 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:46
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 38 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:37
	loadli.w r6,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	lui r3, 983040
	.loc	1 39 37 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	lui r4, 983040
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	lui r5, 983040
	storeli.w r13, -392(r30)                # 4-byte Folded Spill
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r18, zero, 1
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	or r3, r9, r3
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	or r4, r9, r4
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	or r5, r9, r5
	vmmov mr2, r18
	div.s r1, r13, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:29:23
	loadli.w r2,  -644(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:29:23
	add.s r2, r1, r2
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	lui r1, 983040
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	.loc	1 38 41                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:41
	slli r2, r2, 7
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	or r1, r9, r1
	.loc	1 38 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:37
	add.s r6, r2, r6
	.loc	1 38 30 is_stmt 0               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:30
	sext_int2long r[6:7], r6
	sll.d r[10:11], r[6:7], r28
	load.d r[6:7], 0(r30)
	store.d r[10:11], -400(r30)             # 8-byte Folded Spill
	add.ul r[6:7], r[6:7], r[10:11]
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	l_gm2lm r3, r8, 0(r[6:7])
	.loc	1 39 37 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	load.d r[6:7], -720(r30)                # 8-byte Folded Reload
	addli r3, r30, -256
	l_gm2lm r4, r3, 0(r[6:7])
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	load.d r[3:4], -728(r30)                # 8-byte Folded Reload
	addli r6, r30, -192
	l_gm2lm r1, r6, 0(r[3:4])
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	load.d r[3:4], -736(r30)                # 8-byte Folded Reload
	addli r1, r30, -128
	l_gm2lm r5, r1, 0(r[3:4])
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	mfence { lm }
	load.hu r4, -320(r30)
	load.hu r5, -318(r30)
	load.hu r3, -294(r30)
	load.hu r1, -292(r30)
	load.hu r6, -316(r30)
	load.hu r7, -314(r30)
	load.hu r8, -312(r30)
	load.hu r9, -310(r30)
	load.hu r10, -308(r30)
	load.hu r11, -306(r30)
	load.hu r12, -304(r30)
	load.hu r13, -302(r30)
	load.hu r14, -300(r30)
	load.hu r15, -298(r30)
	load.hu r16, -296(r30)
	load.hu r17, -290(r30)
	bfloat2float.rn r4, r4
	bfloat2float.rn r3, r3
	bfloat2float.rn r1, r1
	vor.u.mh vr1{mr2}, r4, vr1
	bfloat2float.rn r4, r5
	addli r5, zero, 4
	vmmov mr0, r5
	addli r5, zero, 8
	vor.u.mh vr1{mr3}, r4, vr1
	bfloat2float.rn r4, r6
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r7
	vmmov mr0, r5
	addli r5, zero, 16
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r8
	vmmov mr0, r5
	addli r5, zero, 32
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r9
	vmmov mr0, r5
	addli r5, zero, 64
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r10
	vmmov mr0, r5
	addli r5, zero, 128
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r11
	vmmov mr0, r5
	addli r5, zero, 256
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r12
	vmmov mr0, r5
	addli r5, zero, 512
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r13
	vmmov mr0, r5
	addli r5, zero, 1024
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r14
	vmmov mr0, r5
	addli r5, zero, 2048
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r15
	vmmov mr0, r5
	addli r5, zero, 4096
	vor.u.mh vr1{mr0}, r4, vr1
	bfloat2float.rn r4, r16
	vmmov mr0, r5
	vor.u.mh vr1{mr0}, r4, vr1
	addli r4, zero, 8192
	vmmov mr0, r4
	vor.u.mh vr1{mr0}, r3, vr1
	lui r3, 4
	vmmov mr0, r3
	lui r3, 8
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r17
	vmmov mr0, r3
	vor.u.mh vr1{mr0}, r1, vr1
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	load.hu r1, -256(r30)
	load.hu r3, -254(r30)
	load.hu r4, -252(r30)
	load.hu r5, -250(r30)
	load.hu r6, -248(r30)
	load.hu r7, -246(r30)
	load.hu r8, -244(r30)
	load.hu r9, -242(r30)
	load.hu r10, -240(r30)
	load.hu r11, -238(r30)
	load.hu r12, -236(r30)
	load.hu r13, -234(r30)
	load.hu r14, -232(r30)
	load.hu r15, -230(r30)
	load.hu r16, -228(r30)
	load.hu r17, -226(r30)
	bfloat2float.rn r1, r1
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r3
	addli r3, zero, 4
	vmmov mr2, r3
	addli r3, zero, 8
	vor.u.mh vr2{mr3}, r1, vr2
	bfloat2float.rn r1, r4
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r5
	vmmov mr2, r3
	addli r3, zero, 16
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r6
	vmmov mr2, r3
	addli r3, zero, 32
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r7
	vmmov mr2, r3
	addli r3, zero, 64
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r8
	vmmov mr2, r3
	addli r3, zero, 128
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r9
	vmmov mr2, r3
	addli r3, zero, 256
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r10
	vmmov mr2, r3
	addli r3, zero, 512
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r11
	vmmov mr2, r3
	addli r3, zero, 1024
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r12
	vmmov mr2, r3
	addli r3, zero, 2048
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r13
	vmmov mr2, r3
	addli r3, zero, 4096
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r14
	vmmov mr2, r3
	addli r3, zero, 8192
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r15
	vmmov mr2, r3
	lui r3, 4
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r16
	vmmov mr2, r3
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r17
	vor.u.mh vr2{mr0}, r1, vr2
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	load.hu r1, -192(r30)
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	load.hu r1, -190(r30)
	.loc	1 46 18                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:46:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	load.hu r1, -188(r30)
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	load.hu r1, -186(r30)
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
	load.hu r1, -184(r30)
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	load.hu r1, -182(r30)
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
	load.hu r1, -180(r30)
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	load.hu r1, -178(r30)
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	load.hu r1, -176(r30)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	load.hu r1, -174(r30)
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	load.hu r1, -172(r30)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	load.hu r1, -170(r30)
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	load.hu r1, -168(r30)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	load.hu r1, -166(r30)
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
	load.hu r1, -164(r30)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	load.hu r1, -162(r30)
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	load.hu r1, -128(r30)
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	load.hu r1, -126(r30)
	storeli.w r1, -536(r30)                 # 4-byte Folded Spill
	load.hu r1, -124(r30)
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	load.hu r1, -122(r30)
	storeli.w r1, -520(r30)                 # 4-byte Folded Spill
	load.hu r1, -120(r30)
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
	load.hu r1, -118(r30)
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
	load.hu r1, -116(r30)
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	load.hu r1, -114(r30)
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	load.hu r1, -112(r30)
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	load.hu r1, -110(r30)
	.loc	1 46 18                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:46:18
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	load.hu r1, -108(r30)
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
	load.hu r1, -106(r30)
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	load.hu r1, -104(r30)
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	load.hu r1, -102(r30)
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	load.hu r1, -100(r30)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	load.hu r1, -98(r30)
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	vstore_mask16.mz vr1{mr1}, -64(r30)
	lui r1, 522240
	mfence { lm }
	loadli.w r20,  -64(r30)
	loadli.w r25,  -60(r30)
	loadli.w r14,  -56(r30)
	loadli.w r10,  -52(r30)
	loadli.w r8,  -48(r30)
	loadli.w r28,  -44(r30)
	loadli.w r4,  -40(r30)
	loadli.w r19,  -36(r30)
	loadli.w r11,  -32(r30)
	loadli.w r5,  -28(r30)
	loadli.w r16,  -740(r30)                # 4-byte Folded Reload
	loadli.w r9,  -24(r30)
	loadli.w r23,  -20(r30)
	loadli.w r21,  -16(r30)
	loadli.w r26,  -12(r30)
	loadli.w r3,  -8(r30)
	loadli.w r15,  -4(r30)
	and r7, r20, r16
	setlt.u r1, r1, r7
	bneq r1, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r20, -344(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r20, r1
	storeli.w r1, -344(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r12, r25, r16
	lui r1, 522240
	setlt.u r1, r1, r12
	bneq r1, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r25, -340(r30)                # 4-byte Folded Spill
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r25, r1
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r6, r14, r16
	lui r1, 522240
	setlt.u r1, r1, r6
	bneq r1, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r14, -548(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r14, r1
	storeli.w r1, -548(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r10, r16
	lui r1, 522240
	setlt.u r1, r1, r22
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r10, -552(r30)                # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r10, r1
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r24, r8, r16
	lui r1, 522240
	setlt.u r1, r1, r24
	bneq r1, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r8, -556(r30)                 # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r8, r1
	storeli.w r1, -556(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r18, r28, r16
	lui r1, 522240
	setlt.u r1, r1, r18
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r28, -560(r30)                # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r28, r1
	storeli.w r1, -560(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r13, r4, r16
	lui r1, 522240
	setlt.u r1, r1, r13
	bneq r1, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r4, -564(r30)                 # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r4, r1
	storeli.w r1, -564(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r17, r19, r16
	lui r1, 522240
	setlt.u r1, r1, r17
	bneq r1, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r19, -572(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r19, r1
	storeli.w r1, -572(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r27, r11, r16
	lui r1, 522240
	storeli.w r11, -616(r30)                # 4-byte Folded Spill
	setlt.u r1, r1, r27
	bneq r1, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r11, -576(r30)                # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r11, r1
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r11, r5, r16
	lui r1, 522240
	storeli.w r5, -612(r30)                 # 4-byte Folded Spill
	setlt.u r1, r1, r11
	bneq r1, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r5, -580(r30)                 # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r5, r1
	storeli.w r1, -580(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	and r5, r9, r16
	lui r1, 522240
	storeli.w r9, -608(r30)                 # 4-byte Folded Spill
	setlt.u r1, r1, r5
	bneq r1, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r9, -584(r30)                 # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r1, 1024
	or r1, r9, r1
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	and r1, r23, r16
	lui r9, 522240
	storeli.w r23, -604(r30)                # 4-byte Folded Spill
	setlt.u r9, r9, r1
	bneq r9, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r23, -348(r30)                # 4-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r9, 1024
	or r9, r23, r9
	storeli.w r9, -348(r30)                 # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	and r23, r21, r16
	lui r9, 522240
	storeli.w r21, -600(r30)                # 4-byte Folded Spill
	setlt.u r9, r9, r23
	bneq r9, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r21, -588(r30)                # 4-byte Folded Spill
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r9, 1024
	or r9, r21, r9
	storeli.w r9, -588(r30)                 # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	and r21, r26, r16
	lui r9, 522240
	storeli.w r26, -596(r30)                # 4-byte Folded Spill
	setlt.u r9, r9, r21
	bneq r9, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r26, -352(r30)                # 4-byte Folded Spill
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r9, 1024
	or r9, r26, r9
	storeli.w r9, -352(r30)                 # 4-byte Folded Spill
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r3, r16
	lui r9, 522240
	storeli.w r3, -568(r30)                 # 4-byte Folded Spill
	setlt.u r9, r9, r26
	beq r9, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	lui r9, 1024
	or r3, r3, r9
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	storeli.w r3, -328(r30)                 # 4-byte Folded Spill
	addli r3, r15, 0
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	and r9, r15, r16
	lui r15, 522240
	setlt.u r15, r15, r9
	storeli.w r3, -592(r30)                 # 4-byte Folded Spill
	beq r15, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	lui r15, 1024
	or r3, r3, r15
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r15,  -324(r30)                # 4-byte Folded Reload
	storeli.w r3, -332(r30)                 # 4-byte Folded Spill
	setlt.u r7, r15, r7
	loadli.w r15,  -336(r30)                # 4-byte Folded Reload
	bneq r7, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	lui r20, 1048560
	add.s r7, r7, r15
	and r3, r7, r20
	storeli.w r3, -344(r30)                 # 4-byte Folded Spill
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	loadli.w r7,  -324(r30)                 # 4-byte Folded Reload
	setlt.u r7, r7, r12
	bneq r7, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r7, r25, 16
	lui r12, 1048560
	andi r7, r7, 1
	add.s r7, r25, r7
	add.s r7, r7, r15
	and r7, r7, r12
	storeli.w r7, -340(r30)                 # 4-byte Folded Spill
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -640(r30)                # 4-byte Folded Reload
	loadli.w r25,  -548(r30)                # 4-byte Folded Reload
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r6, r7, r6
	bneq r6, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r6, r14, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r15
	and r25, r6, r12
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r6, r7, r22
	loadli.w r14,  -552(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	lui r10, 1048560
	add.s r6, r6, r15
	and r14, r6, r10
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r6, r7, r24
	loadli.w r24,  -344(r30)                # 4-byte Folded Reload
	loadli.w r22,  -556(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	lui r8, 1048560
	add.s r6, r6, r15
	and r22, r6, r8
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r6, r7, r18
	loadli.w r10,  -340(r30)                # 4-byte Folded Reload
	loadli.w r8,  -560(r30)                 # 4-byte Folded Reload
	bneq r6, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r6, r28, 16
	lui r8, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r15
	and r8, r6, r8
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r6, r7, r13
	loadli.w r18,  -564(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	lui r6, 1048560
	add.s r4, r4, r15
	and r18, r4, r6
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r4, r7, r17
	loadli.w r13,  -488(r30)                # 4-byte Folded Reload
	loadli.w r17,  -572(r30)                # 4-byte Folded Reload
	loadli.w r28,  -584(r30)                # 4-byte Folded Reload
	lui r6, 1048560
	bneq r4, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r3, r19, r4
	add.s r3, r3, r15
	and r17, r3, r6
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r3, r7, r27
	loadli.w r19,  -576(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	loadli.w r4,  -616(r30)                 # 4-byte Folded Reload
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r15
	and r19, r3, r6
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r3, r7, r11
	loadli.w r27,  -580(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_83
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r3, r7, r5
	beq r3, zero, .LBB0_84
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r1
	bneq r1, zero, .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	loadli.w r3,  -604(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r1, r7, r23
	loadli.w r3,  -568(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -588(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	loadli.w r4,  -600(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r15
	and r23, r1, r6
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r1, r7, r21
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	loadli.w r4,  -596(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r1, r7, r26
	loadli.w r21,  -348(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r1, r7, r9
	loadli.w r26,  -352(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	loadli.w r3,  -592(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	addli r1, zero, 16
	blt.s r13, r1, .LBB0_85
.Ltmp2:
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_86
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -612(r30)                 # 4-byte Folded Reload
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r15
	and r27, r3, r6
	.loc	1 47 19 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r3, r7, r5
	bneq r3, zero, .LBB0_71
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	loadli.w r4,  -608(r30)                 # 4-byte Folded Reload
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r15
	and r28, r3, r6
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r1, r7, r1
	beq r1, zero, .LBB0_72
	j .LBB0_73
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r24, r10
	loadli.w r3,  -328(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r14
	add.f.rn r1, r1, r22
	add.f.rn r1, r1, r8
	add.f.rn r1, r1, r18
	add.f.rn r1, r1, r17
	add.f.rn r1, r1, r19
	add.f.rn r1, r1, r27
	add.f.rn r1, r1, r28
	add.f.rn r1, r1, r21
	add.f.rn r1, r1, r23
	add.f.rn r1, r1, r26
	add.f.rn r1, r1, r3
	loadli.w r3,  -332(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r3,  -628(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	loadli.w r1,  -388(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -620(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r5)
	loads.w r3, 4(r5)
	loads.w r4, 8(r5)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r3
	loads.w r3, 12(r5)
	add.f.rn r1, r1, r4
	loads.w r4, 16(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 20(r5)
	add.f.rn r1, r1, r4
	loads.w r4, 24(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r5)
	add.f.rn r1, r1, r4
	add.f.rn r1, r1, r3
	stores.w r1, 0(r5)
.Ltmp4:
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	loadli.w r1,  -620(r30)                 # 4-byte Folded Reload
	.loc	1 57 21 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:57:21
	lui r3, 245760
	loads.w r1, 0(r1)
	mul.f.rn r12, r1, r3
	.loc	1 58 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:58:20
	sub.f.rn r4, r17, r12
	sub.f.rn r17, r19, r12
	loadli.w r19,  -328(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r10, r12
	sub.f.rn r10, r8, r12
	sub.f.rn r8, r18, r12
	sub.f.rn r18, r21, r12
	sub.f.rn r7, r14, r12
	sub.f.rn r6, r28, r12
	sub.f.rn r1, r24, r12
	sub.f.rn r9, r25, r12
	sub.f.rn r5, r22, r12
	sub.f.rn r3, r27, r12
	sub.f.rn r28, r23, r12
	sub.f.rn r14, r26, r12
	sub.f.rn r21, r19, r12
	loadli.w r19,  -332(r30)                # 4-byte Folded Reload
	sub.f.rn r19, r19, r12
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	addli r12, zero, 16
	blt.s r13, r12, .LBB0_90
.Ltmp6:
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r12, zero, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r12, r1, r1
	mul.f.rn r13, r11, r11
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r12, r13
.Ltmp8:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r9, r9
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp10:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r7, r7
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp12:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r5, r5
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp14:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r10, r10
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp16:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r8, r8
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp18:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r4, r4
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp20:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r17, r17
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp22:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r3, r3
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp24:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r6, r6
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp26:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r18, r18
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp28:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r28, r28
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp30:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r14, r14
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp32:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r21, r21
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.Ltmp34:
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r13, r19, r19
.Ltmp35:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r13, r12
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r13,  -632(r30)                # 4-byte Folded Reload
	stores.w r12, 0(r13)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	loadli.w r12,  -388(r30)                # 4-byte Folded Reload
	bneq r12, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	addli r23, r18, 0
	loadli.w r18,  -624(r30)                # 4-byte Folded Reload
	addli r22, r14, 0
	loads.w r12, 0(r18)
	loads.w r13, 4(r18)
	loads.w r14, 8(r18)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r12, r13
	loads.w r13, 12(r18)
	add.f.rn r12, r12, r14
	loads.w r14, 16(r18)
	add.f.rn r12, r12, r13
	loads.w r13, 20(r18)
	add.f.rn r12, r12, r14
	loads.w r14, 24(r18)
	add.f.rn r12, r12, r13
	loads.w r13, 28(r18)
	add.f.rn r12, r12, r14
	addli r14, r22, 0
	add.f.rn r12, r12, r13
	stores.w r12, 0(r18)
	addli r18, r23, 0
.Ltmp36:
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	loadli.w r12,  -624(r30)                # 4-byte Folded Reload
	.loc	1 65 21 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:65:21
	lui r13, 245760
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	storeli.w r21, -548(r30)                # 4-byte Folded Spill
	loads.w r12, 0(r12)
	.loc	1 65 21                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:65:21
	mul.f.rn r12, r12, r13
	.loc	1 67 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:67:20
	loadli.w r13,  -744(r30)                # 4-byte Folded Reload
	add.f.rn r12, r12, r13
	.loc	1 68 28                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:68:28
	lui r13, 260096
	sqrt.f.rn r12, r12
	div.f.rn r26, r13, r12
	loadli.w r12,  -540(r30)                # 4-byte Folded Reload
	bfloat2float.rn r12, r12
	.loc	1 69 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:69:20
	mul.f.rn r1, r1, r26
	.loc	1 71 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:71:20
	mul.f.rn r1, r1, r12
	loadli.w r12,  -544(r30)                # 4-byte Folded Reload
	bfloat2float.rn r12, r12
	.loc	1 73 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:73:20
	add.f.rn r1, r1, r12
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r12, 522240
	and r13, r1, r16
	setlt.u r12, r12, r13
	storeli.w r13, -540(r30)                # 4-byte Folded Spill
	bneq r12, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r12, 1024
	or r12, r1, r12
	storeli.w r12, -328(r30)                # 4-byte Folded Spill
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r11, r11, r26
	loadli.w r12,  -532(r30)                # 4-byte Folded Reload
	bfloat2float.rn r12, r12
	mul.f.rn r11, r11, r12
	loadli.w r12,  -536(r30)                # 4-byte Folded Reload
	bfloat2float.rn r12, r12
	add.f.rn r21, r11, r12
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r11, 522240
	and r12, r21, r16
	setlt.u r11, r11, r12
	storeli.w r12, -532(r30)                # 4-byte Folded Spill
	bneq r11, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r21, -332(r30)                # 4-byte Folded Spill
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r11, 1024
	or r11, r21, r11
	storeli.w r11, -332(r30)                # 4-byte Folded Spill
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r9, r9, r26
	loadli.w r11,  -524(r30)                # 4-byte Folded Reload
	bfloat2float.rn r11, r11
	mul.f.rn r9, r9, r11
	loadli.w r11,  -528(r30)                # 4-byte Folded Reload
	bfloat2float.rn r11, r11
	add.f.rn r23, r9, r11
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 522240
	and r11, r23, r16
	setlt.u r9, r9, r11
	storeli.w r11, -524(r30)                # 4-byte Folded Spill
	bneq r9, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r23, -340(r30)                # 4-byte Folded Spill
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 1024
	or r9, r23, r9
	storeli.w r9, -340(r30)                 # 4-byte Folded Spill
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r7, r7, r26
	loadli.w r9,  -516(r30)                 # 4-byte Folded Reload
	storeli.w r19, -528(r30)                # 4-byte Folded Spill
	bfloat2float.rn r9, r9
	mul.f.rn r7, r7, r9
	loadli.w r9,  -520(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	add.f.rn r7, r7, r9
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 522240
	and r11, r7, r16
	setlt.u r9, r9, r11
	storeli.w r11, -516(r30)                # 4-byte Folded Spill
	bneq r9, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r7, -488(r30)                 # 4-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 1024
	or r9, r7, r9
	storeli.w r9, -488(r30)                 # 4-byte Folded Spill
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r5, r5, r26
	loadli.w r9,  -508(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	mul.f.rn r5, r5, r9
	loadli.w r9,  -512(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	add.f.rn r5, r5, r9
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 522240
	and r11, r5, r16
	setlt.u r9, r9, r11
	storeli.w r11, -508(r30)                # 4-byte Folded Spill
	bneq r9, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r5, -344(r30)                 # 4-byte Folded Spill
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 1024
	or r9, r5, r9
	storeli.w r9, -344(r30)                 # 4-byte Folded Spill
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r9, r10, r26
	loadli.w r10,  -500(r30)                # 4-byte Folded Reload
	bfloat2float.rn r10, r10
	mul.f.rn r9, r9, r10
	loadli.w r10,  -504(r30)                # 4-byte Folded Reload
	bfloat2float.rn r10, r10
	add.f.rn r12, r9, r10
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 522240
	and r10, r12, r16
	setlt.u r9, r9, r10
	storeli.w r10, -500(r30)                # 4-byte Folded Spill
	bneq r9, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r12, -348(r30)                # 4-byte Folded Spill
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r9, 1024
	or r9, r12, r9
	storeli.w r9, -348(r30)                 # 4-byte Folded Spill
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r8, r8, r26
	loadli.w r9,  -492(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	mul.f.rn r8, r8, r9
	loadli.w r9,  -496(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	add.f.rn r27, r8, r9
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 522240
	and r9, r27, r16
	setlt.u r8, r8, r9
	storeli.w r9, -492(r30)                 # 4-byte Folded Spill
	bneq r8, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r27, -352(r30)                # 4-byte Folded Spill
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 1024
	or r8, r27, r8
	storeli.w r8, -352(r30)                 # 4-byte Folded Spill
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r4, r4, r26
	loadli.w r8,  -356(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r8, r8
	mul.f.rn r4, r4, r8
	loadli.w r8,  -480(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r8, r8
	add.f.rn r4, r4, r8
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 522240
	and r19, r4, r16
	setlt.u r8, r8, r19
	bneq r8, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 1024
	or r8, r4, r8
	storeli.w r8, -356(r30)                 # 4-byte Folded Spill
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r8, r17, r26
	loadli.w r9,  -360(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	mul.f.rn r8, r8, r9
	loadli.w r9,  -472(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	add.f.rn r9, r8, r9
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 522240
	and r24, r9, r16
	setlt.u r8, r8, r24
	bneq r8, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r9, -360(r30)                 # 4-byte Folded Spill
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 1024
	or r8, r9, r8
	storeli.w r8, -360(r30)                 # 4-byte Folded Spill
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r3, r3, r26
	loadli.w r8,  -364(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r8, r8
	mul.f.rn r3, r3, r8
	loadli.w r8,  -464(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r8, r8
	add.f.rn r22, r3, r8
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r8, r22, r16
	setlt.u r3, r3, r8
	bneq r3, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r22, -364(r30)                # 4-byte Folded Spill
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r22, r3
	storeli.w r3, -364(r30)                 # 4-byte Folded Spill
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r3, r6, r26
	loadli.w r6,  -368(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	mul.f.rn r3, r3, r6
	loadli.w r6,  -456(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r25, r3, r6
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r13, r25, r16
	setlt.u r3, r3, r13
	bneq r3, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r25, -368(r30)                # 4-byte Folded Spill
	j .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r25, r3
	storeli.w r3, -368(r30)                 # 4-byte Folded Spill
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r3, r18, r26
	loadli.w r6,  -372(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	mul.f.rn r3, r3, r6
	loadli.w r6,  -448(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r11, r3, r6
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r18, r11, r16
	setlt.u r3, r3, r18
	bneq r3, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r11, -372(r30)                # 4-byte Folded Spill
	j .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r11, r3
	storeli.w r3, -372(r30)                 # 4-byte Folded Spill
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r3, r28, r26
	loadli.w r6,  -376(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	mul.f.rn r3, r3, r6
	loadli.w r6,  -440(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r28, r3, r6
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r20, r28, r16
	setlt.u r3, r3, r20
	bneq r3, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r28, -376(r30)                # 4-byte Folded Spill
	j .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r28, r3
	storeli.w r3, -376(r30)                 # 4-byte Folded Spill
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r3, r14, r26
	loadli.w r6,  -380(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	mul.f.rn r3, r3, r6
	loadli.w r6,  -432(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r14, r3, r6
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r17, r14, r16
	setlt.u r3, r3, r17
	bneq r3, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r14, -380(r30)                # 4-byte Folded Spill
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r14, r3
	storeli.w r3, -380(r30)                 # 4-byte Folded Spill
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	loadli.w r3,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -384(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r26
	bfloat2float.rn r6, r6
	mul.f.rn r3, r3, r6
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r6, r3, r6
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r10, r6, r16
	storeli.w r6, -448(r30)                 # 4-byte Folded Spill
	setlt.u r3, r3, r10
	storeli.w r10, -424(r30)                # 4-byte Folded Spill
	bneq r3, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r6, -384(r30)                 # 4-byte Folded Spill
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r6, r3
	storeli.w r3, -384(r30)                 # 4-byte Folded Spill
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	loadli.w r3,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -404(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r26
	bfloat2float.rn r6, r6
	mul.f.rn r3, r3, r6
	loadli.w r6,  -416(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	add.f.rn r6, r3, r6
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 522240
	and r16, r6, r16
	storeli.w r6, -496(r30)                 # 4-byte Folded Spill
	setlt.u r3, r3, r16
	storeli.w r16, -416(r30)                # 4-byte Folded Spill
	bneq r3, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	storeli.w r6, -404(r30)                 # 4-byte Folded Spill
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r3, 1024
	or r3, r6, r3
	storeli.w r3, -404(r30)                 # 4-byte Folded Spill
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -540(r30)                # 4-byte Folded Reload
	lui r6, 1048560
	setlt.u r3, r3, r16
	bneq r3, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r3
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -524(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r3
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -488(r30)                # 4-byte Folded Reload
	setlt.u r1, r1, r3
	bneq r1, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r15
	and r23, r1, r6
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -508(r30)                 # 4-byte Folded Reload
	setlt.u r1, r7, r1
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -344(r30)                 # 4-byte Folded Spill
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -500(r30)                 # 4-byte Folded Reload
	setlt.u r1, r7, r1
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r1,  -492(r30)                 # 4-byte Folded Reload
	setlt.u r1, r7, r1
	beq r1, zero, .LBB0_167
# %bb.154:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r19
	beq r1, zero, .LBB0_168
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r24
	beq r1, zero, .LBB0_169
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r8
	beq r1, zero, .LBB0_170
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r13
	beq r1, zero, .LBB0_171
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r18
	beq r1, zero, .LBB0_172
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r7, r20
	bneq r1, zero, .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -680(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -656(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r13, r7, r17
	add.s r9, r5, r2
	loadli.w r5,  -684(r30)                 # 4-byte Folded Reload
	add.s r4, r1, r2
	loadli.w r1,  -660(r30)                 # 4-byte Folded Reload
	add.s r6, r5, r2
	loadli.w r5,  -688(r30)                 # 4-byte Folded Reload
	add.s r3, r1, r2
	loadli.w r1,  -664(r30)                 # 4-byte Folded Reload
	add.s r8, r5, r2
	loadli.w r5,  -692(r30)                 # 4-byte Folded Reload
	add.s r12, r1, r2
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	add.s r25, r5, r2
	loadli.w r5,  -696(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r2
	loadli.w r1,  -672(r30)                 # 4-byte Folded Reload
	add.s r24, r5, r2
	loadli.w r5,  -700(r30)                 # 4-byte Folded Reload
	add.s r10, r1, r2
	loadli.w r1,  -676(r30)                 # 4-byte Folded Reload
	add.s r28, r5, r2
	loadli.w r5,  -704(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	add.s r7, r5, r2
	loadli.w r5,  -708(r30)                 # 4-byte Folded Reload
	add.s r17, r5, r2
	loadli.w r5,  -712(r30)                 # 4-byte Folded Reload
	add.s r19, r5, r2
	bneq r13, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r2, r14, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r14, r2
	add.s r2, r2, r15
	and r2, r2, r5
	storeli.w r2, -380(r30)                 # 4-byte Folded Spill
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	sext_int2long r[13:14], r4
	addli r5, zero, 1
	sext_int2long r[2:3], r3
	sll.d r[13:14], r[13:14], r5
	sll.d r[2:3], r[2:3], r5
	store.d r[13:14], -432(r30)             # 8-byte Folded Spill
	sext_int2long r[12:13], r12
	store.d r[2:3], -440(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[12:13], r5
	sext_int2long r[13:14], r24
	store.d r[2:3], -456(r30)               # 8-byte Folded Spill
	sext_int2long r[2:3], r11
	sext_int2long r[10:11], r10
	sll.d r[26:27], r[13:14], r5
	sext_int2long r[13:14], r7
	sll.d r[2:3], r[2:3], r5
	store.d r[2:3], -480(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[10:11], r5
	store.d r[2:3], -488(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r9
	sext_int2long r[1:2], r1
	sll.d r[9:10], r[1:2], r5
	sext_int2long r[1:2], r6
	sll.d r[11:12], r[3:4], r5
	sext_int2long r[3:4], r8
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	sll.d r[15:16], r[1:2], r5
	sll.d r[1:2], r[3:4], r5
	sext_int2long r[3:4], r25
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r8, r6, r8
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	sll.d r[24:25], r[3:4], r5
	sext_int2long r[3:4], r28
	addli r28, zero, 1
	sll.d r[6:7], r[3:4], r5
	sll.d r[3:4], r[13:14], r5
	sext_int2long r[13:14], r17
	sext_int2long r[17:18], r19
	sll.d r[13:14], r[13:14], r5
	sll.d r[17:18], r[17:18], r5
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	bneq r8, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	loadli.w r8,  -336(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r8
	lui r8, 1048560
	and r5, r5, r8
	storeli.w r5, -384(r30)                 # 4-byte Folded Spill
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[19:20], 32(r30)
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	load.d r[21:22], -400(r30)              # 8-byte Folded Reload
	loadli.w r5,  -336(r30)                 # 4-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	add.ul r[15:16], r[19:20], r[15:16]
	add.ul r[24:25], r[19:20], r[24:25]
	add.ul r[9:10], r[19:20], r[9:10]
	add.ul r[11:12], r[19:20], r[11:12]
	store.d r[21:22], -464(r30)             # 8-byte Folded Spill
	load.d r[21:22], -432(r30)              # 8-byte Folded Reload
	store.d r[15:16], -424(r30)             # 8-byte Folded Spill
	add.ul r[15:16], r[19:20], r[1:2]
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	store.d r[24:25], -416(r30)             # 8-byte Folded Spill
	add.ul r[24:25], r[19:20], r[26:27]
	add.ul r[26:27], r[19:20], r[6:7]
	add.ul r[21:22], r[19:20], r[21:22]
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r1, r2
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	add.ul r[2:3], r[19:20], r[3:4]
	store.d r[21:22], -472(r30)             # 8-byte Folded Spill
	load.d r[21:22], -440(r30)              # 8-byte Folded Reload
	store.d r[2:3], -400(r30)               # 8-byte Folded Spill
	add.ul r[2:3], r[19:20], r[13:14]
	store.d r[2:3], -440(r30)               # 8-byte Folded Spill
	loadli.w r3,  -404(r30)                 # 4-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -448(r30)             # 8-byte Folded Spill
	load.d r[21:22], -456(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -456(r30)             # 8-byte Folded Spill
	load.d r[21:22], -480(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	store.d r[21:22], -432(r30)             # 8-byte Folded Spill
	load.d r[21:22], -488(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[19:20], r[21:22]
	add.ul r[18:19], r[19:20], r[17:18]
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	bneq r1, zero, .LBB0_2
# %bb.166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	lui r2, 1048560
	add.s r1, r1, r5
	and r3, r1, r2
	j .LBB0_2
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r7, r19
	bneq r1, zero, .LBB0_155
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r7, r24
	bneq r1, zero, .LBB0_156
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r7, r8
	bneq r1, zero, .LBB0_157
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r7, r13
	bneq r1, zero, .LBB0_158
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r7, r18
	bneq r1, zero, .LBB0_159
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r15
	and r1, r1, r6
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r1, r7, r20
	beq r1, zero, .LBB0_160
	j .LBB0_161
.LBB0_173:                              # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:4
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
.asciz	"cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/de" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
