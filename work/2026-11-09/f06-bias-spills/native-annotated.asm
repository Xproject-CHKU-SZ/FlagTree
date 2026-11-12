	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused__softmax_add_0,"ax",@progbits
	.globl	triton_unk_fused__softmax_add_0 # -- Begin function triton_unk_fused__softmax_add_0
	.type	triton_unk_fused__softmax_add_0,@function
triton_unk_fused__softmax_add_0:        # @triton_unk_fused__softmax_add_0
.Lfunc_begin0:
	.file	1 "/tmp/b2-product-inductor/a4" "ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py"
	.loc	1 21 0                          # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:21:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2240
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 2176
	lui r5, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r6,  40(r30)
	ori r18, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	addli r9, r8, 4112
	mul.s r4, r4, r6
	storeli.w r9, -2028(r30)                # 4-byte Folded Spill
	stores.w zero, 0(r9)
	load_param_i r9, 0
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	storeli.w r8, -2024(r30)                # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	storeli.w r4, -2120(r30)                # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r4, zero, 16
	load_param_i r7, 1
	addli r10, zero, 2
	load.d r[5:6], 8(r30)
	vxor.u.mz vr0{mr1}, vr0, vr0
	div.s r4, r1, r4
	storeli.w r7, -2124(r30)                # 4-byte Folded Spill
	lui r7, 1048575
	ori r7, r7, 4032
	and r3, r3, r7
	slli r8, r4, 4
	slli r4, r4, 11
	sub.s r8, r1, r8
	andi r1, r1, 15
	slli r7, r8, 7
	add.s r8, r3, r2
	storeli.w r1, -2044(r30)                # 4-byte Folded Spill
	sext_int2long r[2:3], r7
	addli r1, r8, 4112
	add.s r4, r7, r4
	addli r7, zero, 512
	storeli.w r8, -2012(r30)                # 4-byte Folded Spill
	sll.d r[2:3], r[2:3], r10
	storeli.w r1, -2016(r30)                # 4-byte Folded Spill
	addli r1, r30, -2112
	storeli.w r4, -2128(r30)                # 4-byte Folded Spill
	add.ul r[2:3], r[5:6], r[2:3]
	addli r6, r30, -1280
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	store.d r[2:3], -2040(r30)              # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	loadli.w r9,  -2116(r30)                # 4-byte Folded Reload
	loadli.w r1,  -2124(r30)                # 4-byte Folded Reload
	add.s r9, r9, r1
	loadli.w r1,  -2120(r30)                # 4-byte Folded Reload
	blt.s r9, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	addli r3, zero, 1
	storeli.w r9, -2116(r30)                # 4-byte Folded Spill
	div.s r1, r9, r1
	div.s r1, r1, r2
	loadli.w r2,  -2128(r30)                # 4-byte Folded Reload
	slli r1, r1, 14
	add.s r1, r2, r1
	storeli.w r1, -2020(r30)                # 4-byte Folded Spill
	addli r1, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -2016(r30)                # 4-byte Folded Reload
.Ltmp0:
	.loc	1 47 21 prologue_end            # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:47:21
	lui r2, 260096
	.loc	1 49 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:49:25
	load.d r[4:5], -1296(r30)               # 8-byte Folded Reload
	addli r7, zero, 512
	addli r6, r30, -1280
	loads.w r1, 0(r1)
	.loc	1 47 21                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:47:21
	div.f.rn r1, r2, r1
	.loc	1 48 19                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:48:19
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	#APP
	vmul.f.mz.rn vr3{mr1}, r1, vr3
	#NO_APP
	#APP
	vmul.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r1, vr5
	#NO_APP
	#APP
	vmul.f.mz.rn vr6{mr1}, r1, vr6
	#NO_APP
	#APP
	vmul.f.mz.rn vr7{mr1}, r1, vr7
	#NO_APP
	.loc	1 49 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:49:25
	load.d r[2:3], 16(r30)
	.loc	1 49 49 is_stmt 0               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:49:49
	addli r1, r30, -1280
	vstore_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1216
	.loc	1 49 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:49:25
	add.ul r[2:3], r[2:3], r[4:5]
	.loc	1 49 49                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:49:49
	vstore_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1152
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1088
	vstore_mask16.mz vr4{mr1}, 0(r1)
	lui r1, 983040
	vstore_mask16.mz vr1{mr1}, -1024(r30)
	vstore_mask16.mz vr5{mr1}, -960(r30)
	vstore_mask16.mz vr6{mr1}, -896(r30)
	vstore_mask16.mz vr7{mr1}, -832(r30)
	mfence { lm }
	or r1, r7, r1
	s_lm2gm r1, r6, 0(r[2:3])
	addli r3, zero, 0
	mfence { lm }
	loadli.w r1,  -1284(r30)                # 4-byte Folded Reload
	andi r2, r1, 1
	addli r1, zero, 8192
	beq r2, zero, .LBB0_2
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 37 37 is_stmt 1               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:37
	loadli.w r2,  -2020(r30)                # 4-byte Folded Reload
	storeli.w r3, -1284(r30)                # 4-byte Folded Spill
	.loc	1 37 30 is_stmt 0               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:30
	addli r5, zero, 2
	addli r19, r18, 0
	.loc	1 37 37                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:37
	add.s r1, r2, r1
	.loc	1 37 47                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:47
	lui r2, 983040
	.loc	1 37 30                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:30
	sext_int2long r[3:4], r1
	.loc	1 37 47                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:47
	or r2, r7, r2
	.loc	1 38 37 is_stmt 1               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:38:37
	lui r1, 983040
	.loc	1 37 30                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:30
	sll.d r[8:9], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 38 37                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:38:37
	or r1, r7, r1
	store.d r[8:9], -1296(r30)              # 8-byte Folded Spill
	.loc	1 37 30                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:30
	add.ul r[3:4], r[3:4], r[8:9]
	.loc	1 37 47 is_stmt 0               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:47
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 38 37 is_stmt 1               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:38:37
	load.d r[2:3], -2040(r30)               # 8-byte Folded Reload
	addli r4, r30, -768
	l_gm2lm r1, r4, 0(r[2:3])
	.loc	1 37 47                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:47
	addli r1, r30, -1280
	mfence { lm }
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -1216
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -1152
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -1088
	vload_mask16.mz vr7{mr1}, 0(r1)
	vload_mask16.mz vr0{mr1}, -1024(r30)
	addli r1, r30, -1408
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1472
	vload_mask16.mz vr0{mr1}, -960(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1536
	vload_mask16.mz vr0{mr1}, -896(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 38 37                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:38:37
	addli r1, r30, -1600
	.loc	1 37 47                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:37:47
	vload_mask16.mz vr0{mr1}, -832(r30)
	.loc	1 38 37                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:38:37
	loadli.w r28,  -552(r30)
	loadli.w r2,  -652(r30)
	loadli.w r3,  -648(r30)
	loadli.w r4,  -644(r30)
	loadli.w r5,  -640(r30)
	loadli.w r6,  -636(r30)
	loadli.w r7,  -632(r30)
	loadli.w r8,  -628(r30)
	loadli.w r9,  -624(r30)
	loadli.w r10,  -620(r30)
	loadli.w r11,  -616(r30)
	loadli.w r12,  -612(r30)
	loadli.w r13,  -608(r30)
	loadli.w r14,  -604(r30)
	loadli.w r15,  -600(r30)
	loadli.w r16,  -596(r30)
	loadli.w r17,  -592(r30)
	loadli.w r18,  -588(r30)
	loadli.w r20,  -584(r30)
	loadli.w r21,  -580(r30)
	loadli.w r22,  -576(r30)
	loadli.w r23,  -572(r30)
	loadli.w r24,  -568(r30)
	loadli.w r25,  -564(r30)
	loadli.w r26,  -560(r30)
	loadli.w r27,  -556(r30)
	storeli.w r28, -2008(r30)               # 4-byte Folded Spill
	loadli.w r28,  -548(r30)
	storeli.w r28, -2004(r30)               # 4-byte Folded Spill
	loadli.w r28,  -544(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	loadli.w r1,  -768(r30)
	storeli.w r28, -2000(r30)               # 4-byte Folded Spill
	loadli.w r28,  -540(r30)
	storeli.w r1, -1816(r30)                # 4-byte Folded Spill
	loadli.w r1,  -764(r30)
	storeli.w r28, -1996(r30)               # 4-byte Folded Spill
	loadli.w r28,  -536(r30)
	storeli.w r1, -1808(r30)                # 4-byte Folded Spill
	loadli.w r1,  -760(r30)
	storeli.w r28, -1992(r30)               # 4-byte Folded Spill
	loadli.w r28,  -532(r30)
	storeli.w r1, -1800(r30)                # 4-byte Folded Spill
	loadli.w r1,  -756(r30)
	storeli.w r28, -1988(r30)               # 4-byte Folded Spill
	loadli.w r28,  -528(r30)
	storeli.w r1, -1792(r30)                # 4-byte Folded Spill
	loadli.w r1,  -752(r30)
	storeli.w r28, -1984(r30)               # 4-byte Folded Spill
	loadli.w r28,  -524(r30)
	storeli.w r1, -1784(r30)                # 4-byte Folded Spill
	loadli.w r1,  -748(r30)
	storeli.w r28, -1980(r30)               # 4-byte Folded Spill
	loadli.w r28,  -520(r30)
	storeli.w r1, -1776(r30)                # 4-byte Folded Spill
	loadli.w r1,  -744(r30)
	storeli.w r28, -1976(r30)               # 4-byte Folded Spill
	loadli.w r28,  -516(r30)
	storeli.w r1, -1768(r30)                # 4-byte Folded Spill
	loadli.w r1,  -740(r30)
	storeli.w r28, -1972(r30)               # 4-byte Folded Spill
	loadli.w r28,  -512(r30)
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	loadli.w r1,  -736(r30)
	storeli.w r28, -1968(r30)               # 4-byte Folded Spill
	loadli.w r28,  -508(r30)
	storeli.w r1, -1752(r30)                # 4-byte Folded Spill
	loadli.w r1,  -732(r30)
	storeli.w r28, -1964(r30)               # 4-byte Folded Spill
	loadli.w r28,  -504(r30)
	storeli.w r1, -1744(r30)                # 4-byte Folded Spill
	loadli.w r1,  -728(r30)
	storeli.w r28, -1960(r30)               # 4-byte Folded Spill
	loadli.w r28,  -500(r30)
	storeli.w r1, -1736(r30)                # 4-byte Folded Spill
	loadli.w r1,  -724(r30)
	storeli.w r28, -1956(r30)               # 4-byte Folded Spill
	loadli.w r28,  -496(r30)
	storeli.w r1, -1728(r30)                # 4-byte Folded Spill
	loadli.w r1,  -720(r30)
	storeli.w r28, -1952(r30)               # 4-byte Folded Spill
	loadli.w r28,  -492(r30)
	storeli.w r1, -1720(r30)                # 4-byte Folded Spill
	loadli.w r1,  -716(r30)
	storeli.w r28, -1948(r30)               # 4-byte Folded Spill
	loadli.w r28,  -488(r30)
	storeli.w r1, -1712(r30)                # 4-byte Folded Spill
	loadli.w r1,  -712(r30)
	storeli.w r28, -1944(r30)               # 4-byte Folded Spill
	loadli.w r28,  -484(r30)
	storeli.w r1, -1704(r30)                # 4-byte Folded Spill
	loadli.w r1,  -708(r30)
	storeli.w r28, -1940(r30)               # 4-byte Folded Spill
	loadli.w r28,  -480(r30)
	storeli.w r1, -1696(r30)                # 4-byte Folded Spill
	loadli.w r1,  -704(r30)
	storeli.w r28, -1936(r30)               # 4-byte Folded Spill
	loadli.w r28,  -476(r30)
	storeli.w r1, -1688(r30)                # 4-byte Folded Spill
	loadli.w r1,  -700(r30)
	storeli.w r28, -1932(r30)               # 4-byte Folded Spill
	loadli.w r28,  -472(r30)
	storeli.w r1, -1680(r30)                # 4-byte Folded Spill
	loadli.w r1,  -696(r30)
	storeli.w r28, -1928(r30)               # 4-byte Folded Spill
	loadli.w r28,  -468(r30)
	storeli.w r1, -1672(r30)                # 4-byte Folded Spill
	loadli.w r1,  -692(r30)
	storeli.w r28, -1924(r30)               # 4-byte Folded Spill
	loadli.w r28,  -464(r30)
	storeli.w r1, -1664(r30)                # 4-byte Folded Spill
	loadli.w r1,  -688(r30)
	storeli.w r28, -1920(r30)               # 4-byte Folded Spill
	loadli.w r28,  -460(r30)
	storeli.w r1, -1656(r30)                # 4-byte Folded Spill
	loadli.w r1,  -684(r30)
	storeli.w r28, -1916(r30)               # 4-byte Folded Spill
	loadli.w r28,  -456(r30)
	storeli.w r1, -1648(r30)                # 4-byte Folded Spill
	loadli.w r1,  -680(r30)
	storeli.w r28, -1912(r30)               # 4-byte Folded Spill
	loadli.w r28,  -452(r30)
	storeli.w r1, -1640(r30)                # 4-byte Folded Spill
	loadli.w r1,  -676(r30)
	storeli.w r28, -1908(r30)               # 4-byte Folded Spill
	loadli.w r28,  -448(r30)
	storeli.w r1, -1632(r30)                # 4-byte Folded Spill
	loadli.w r1,  -672(r30)
	storeli.w r28, -1904(r30)               # 4-byte Folded Spill
	loadli.w r28,  -444(r30)
	storeli.w r1, -1624(r30)                # 4-byte Folded Spill
	loadli.w r1,  -668(r30)
	storeli.w r28, -1900(r30)               # 4-byte Folded Spill
	loadli.w r28,  -440(r30)
	storeli.w r1, -1620(r30)                # 4-byte Folded Spill
	loadli.w r1,  -664(r30)
	storeli.w r28, -1896(r30)               # 4-byte Folded Spill
	loadli.w r28,  -436(r30)
	storeli.w r1, -1616(r30)                # 4-byte Folded Spill
	loadli.w r1,  -660(r30)
	storeli.w r28, -1892(r30)               # 4-byte Folded Spill
	loadli.w r28,  -432(r30)
	storeli.w r1, -1612(r30)                # 4-byte Folded Spill
	addli r1, r30, -2112
	vload_mask16.mz vr0{mr1}, 0(r1)         # 64-byte Folded Reload
	loadli.w r1,  -656(r30)
	storeli.w r28, -1888(r30)               # 4-byte Folded Spill
	loadli.w r28,  -428(r30)
	storeli.w r28, -1884(r30)               # 4-byte Folded Spill
	loadli.w r28,  -424(r30)
	.loc	1 39 18                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:39:18
	vadd.s.mz vr9{mr1}, zero, vr0
	vadd.s.mz vr10{mr1}, zero, vr0
	.loc	1 38 37                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:38:37
	storeli.w r28, -1880(r30)               # 4-byte Folded Spill
	loadli.w r28,  -420(r30)
	storeli.w r28, -1876(r30)               # 4-byte Folded Spill
	loadli.w r28,  -416(r30)
	storeli.w r28, -1872(r30)               # 4-byte Folded Spill
	loadli.w r28,  -412(r30)
	storeli.w r28, -1868(r30)               # 4-byte Folded Spill
	loadli.w r28,  -408(r30)
	storeli.w r28, -1864(r30)               # 4-byte Folded Spill
	loadli.w r28,  -404(r30)
	storeli.w r28, -1860(r30)               # 4-byte Folded Spill
	loadli.w r28,  -400(r30)
	storeli.w r28, -1856(r30)               # 4-byte Folded Spill
	loadli.w r28,  -396(r30)
	storeli.w r28, -1852(r30)               # 4-byte Folded Spill
	loadli.w r28,  -392(r30)
	storeli.w r28, -1848(r30)               # 4-byte Folded Spill
	loadli.w r28,  -388(r30)
	storeli.w r28, -1844(r30)               # 4-byte Folded Spill
	loadli.w r28,  -384(r30)
	storeli.w r28, -1840(r30)               # 4-byte Folded Spill
	loadli.w r28,  -380(r30)
	storeli.w r28, -1836(r30)               # 4-byte Folded Spill
	loadli.w r28,  -376(r30)
	storeli.w r28, -1832(r30)               # 4-byte Folded Spill
	loadli.w r28,  -372(r30)
	storeli.w r28, -1828(r30)               # 4-byte Folded Spill
	loadli.w r28,  -368(r30)
	storeli.w r28, -1824(r30)               # 4-byte Folded Spill
	loadli.w r28,  -364(r30)
	storeli.w r28, -1820(r30)               # 4-byte Folded Spill
	loadli.w r28,  -360(r30)
	storeli.w r28, -1812(r30)               # 4-byte Folded Spill
	loadli.w r28,  -356(r30)
	storeli.w r28, -1804(r30)               # 4-byte Folded Spill
	loadli.w r28,  -352(r30)
	storeli.w r28, -1796(r30)               # 4-byte Folded Spill
	loadli.w r28,  -348(r30)
	storeli.w r28, -1788(r30)               # 4-byte Folded Spill
	loadli.w r28,  -344(r30)
	storeli.w r28, -1780(r30)               # 4-byte Folded Spill
	loadli.w r28,  -340(r30)
	storeli.w r28, -1772(r30)               # 4-byte Folded Spill
	loadli.w r28,  -336(r30)
	storeli.w r28, -1764(r30)               # 4-byte Folded Spill
	loadli.w r28,  -332(r30)
	storeli.w r28, -1756(r30)               # 4-byte Folded Spill
	loadli.w r28,  -328(r30)
	storeli.w r28, -1748(r30)               # 4-byte Folded Spill
	loadli.w r28,  -324(r30)
	storeli.w r28, -1740(r30)               # 4-byte Folded Spill
	loadli.w r28,  -320(r30)
	storeli.w r28, -1732(r30)               # 4-byte Folded Spill
	loadli.w r28,  -316(r30)
	storeli.w r28, -1724(r30)               # 4-byte Folded Spill
	loadli.w r28,  -312(r30)
	storeli.w r28, -1716(r30)               # 4-byte Folded Spill
	loadli.w r28,  -308(r30)
	storeli.w r28, -1708(r30)               # 4-byte Folded Spill
	loadli.w r28,  -304(r30)
	storeli.w r28, -1700(r30)               # 4-byte Folded Spill
	loadli.w r28,  -300(r30)
	storeli.w r28, -1692(r30)               # 4-byte Folded Spill
	loadli.w r28,  -296(r30)
	storeli.w r28, -1684(r30)               # 4-byte Folded Spill
	loadli.w r28,  -292(r30)
	storeli.w r28, -1676(r30)               # 4-byte Folded Spill
	loadli.w r28,  -288(r30)
	storeli.w r28, -1668(r30)               # 4-byte Folded Spill
	loadli.w r28,  -284(r30)
	storeli.w r28, -1660(r30)               # 4-byte Folded Spill
	loadli.w r28,  -280(r30)
	storeli.w r28, -1652(r30)               # 4-byte Folded Spill
	loadli.w r28,  -276(r30)
	storeli.w r28, -1644(r30)               # 4-byte Folded Spill
	loadli.w r28,  -272(r30)
	storeli.w r28, -1636(r30)               # 4-byte Folded Spill
	loadli.w r28,  -268(r30)
	storeli.w r28, -1628(r30)               # 4-byte Folded Spill
	loadli.w r28,  -264(r30)
	storeli.w r28, -1608(r30)               # 4-byte Folded Spill
	loadli.w r28,  -260(r30)
	storeli.w r28, -1604(r30)               # 4-byte Folded Spill
	addli r28, zero, 1
	vmmov mr2, r28
	.loc	1 39 18                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:39:18
	loadli.w r28,  -1816(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr2}, r28, vr9
	addli r28, zero, 2
	vmmov mr3, r28
	loadli.w r28,  -1808(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr3}, r28, vr9
	addli r28, zero, 4
	vmmov mr0, r28
	loadli.w r28,  -1800(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 8
	vmmov mr0, r28
	loadli.w r28,  -1792(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 16
	vmmov mr0, r28
	loadli.w r28,  -1784(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 32
	vmmov mr0, r28
	loadli.w r28,  -1776(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 64
	vmmov mr0, r28
	loadli.w r28,  -1768(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 128
	vmmov mr0, r28
	loadli.w r28,  -1760(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 256
	vmmov mr0, r28
	loadli.w r28,  -1752(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 512
	vmmov mr0, r28
	loadli.w r28,  -1744(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 1024
	vmmov mr0, r28
	loadli.w r28,  -1736(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 2048
	vmmov mr0, r28
	loadli.w r28,  -1728(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 4096
	vmmov mr0, r28
	loadli.w r28,  -1720(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 8192
	addli zero, zero, 4
	vmmov mr0, r28
	loadli.w r28,  -1712(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	lui r28, 4
	vmmov mr0, r28
	loadli.w r28,  -1704(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	lui r28, 8
	vmmov mr0, r28
	loadli.w r28,  -1696(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	loadli.w r28,  -1688(r30)               # 4-byte Folded Reload
	vor.u.mh vr10{mr2}, r28, vr10
	loadli.w r28,  -1680(r30)               # 4-byte Folded Reload
	vadd.f.mz.rn vr4{mr1}, vr4, vr9
	vor.u.mh vr10{mr3}, r28, vr10
	loadli.w r28,  -1672(r30)               # 4-byte Folded Reload
	vmmov mr3, zero
	xor zero, zero, zero
	addli zero, zero, 8
	vor.u.mh vr10{mr3}, r28, vr10
	loadli.w r28,  -1664(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 16
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1656(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 32
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1648(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 64
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1640(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 128
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1632(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 256
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1624(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 512
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1620(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 1024
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1616(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 2048
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1612(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	vadd.s.mz vr11{mr1}, zero, vr0
	vadd.s.mz vr3{mr1}, zero, vr0
	vadd.s.mz vr2{mr1}, zero, vr0
	vadd.s.mz vr8{mr1}, zero, vr0
	vadd.s.mz vr1{mr1}, zero, vr0
	vor.u.mh vr10{mr0}, r28, vr10
	addli r28, zero, 4096
	vmmov mr0, r28
	vor.u.mh vr10{mr0}, r1, vr10
	addli r1, zero, 8192
	vmmov mr0, r1
	lui r1, 4
	vor.u.mh vr10{mr0}, r2, vr10
	vmmov mr0, r1
	lui r1, 8
	addli r2, zero, 128
	vor.u.mh vr10{mr0}, r3, vr10
	vmmov mr0, r1
	addli r1, zero, 2
	vor.u.mh vr10{mr0}, r4, vr10
	vor.u.mh vr11{mr2}, r5, vr11
	vmmov mr2, r1
	addli r1, zero, 8
	vor.u.mh vr11{mr2}, r6, vr11
	vmmov mr2, r1
	addli r1, zero, 16
	vadd.f.mz.rn vr9{mr1}, vr5, vr10
	vor.u.mh vr11{mr3}, r7, vr11
	vor.u.mh vr11{mr2}, r8, vr11
	vmmov mr2, r1
	addli r1, zero, 32
	vor.u.mh vr11{mr2}, r9, vr11
	vmmov mr2, r1
	addli r1, zero, 64
	vmmov mr3, r1
	addli r1, zero, 128
	vor.u.mh vr11{mr2}, r10, vr11
	vmmov mr2, r1
	addli r1, zero, 256
	vor.u.mh vr11{mr3}, r11, vr11
	vor.u.mh vr11{mr2}, r12, vr11
	vmmov mr2, r1
	addli r1, zero, 512
	vor.u.mh vr11{mr2}, r13, vr11
	vmmov mr2, r1
	addli r1, zero, 1024
	vor.u.mh vr11{mr2}, r14, vr11
	vmmov mr2, r1
	addli r1, zero, 2048
	vor.u.mh vr11{mr2}, r15, vr11
	vmmov mr2, r1
	addli r1, zero, 4096
	vor.u.mh vr11{mr2}, r16, vr11
	vmmov mr2, r1
	addli r1, zero, 8192
	vor.u.mh vr11{mr2}, r17, vr11
	vmmov mr2, r1
	lui r1, 4
	vor.u.mh vr11{mr2}, r18, vr11
	vmmov mr2, r1
	addli r1, zero, 1
	addli r18, r19, 0
	vor.u.mh vr11{mr2}, r20, vr11
	vor.u.mh vr11{mr0}, r21, vr11
	vmmov mr0, r1
	addli r1, zero, 2
	vor.u.mh vr3{mr0}, r22, vr3
	vmmov mr0, r1
	addli r1, zero, 4
	vadd.f.mz.rn vr10{mr1}, vr6, vr11
	vor.u.mh vr3{mr0}, r23, vr3
	vmmov mr0, r1
	addli r1, zero, 8
	vor.u.mh vr3{mr0}, r24, vr3
	vmmov mr0, r1
	addli r1, zero, 16
	vor.u.mh vr3{mr0}, r25, vr3
	vmmov mr0, r1
	addli r1, zero, 32
	vor.u.mh vr3{mr0}, r26, vr3
	vmmov mr0, r1
	vor.u.mh vr3{mr0}, r27, vr3
	loadli.w r1,  -2008(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr3{mr3}, r1, vr3
	loadli.w r1,  -2004(r30)                # 4-byte Folded Reload
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -2000(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1996(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1992(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1988(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1984(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1980(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1976(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1
	vor.u.mh vr3{mr2}, r1, vr3
	loadli.w r1,  -1972(r30)                # 4-byte Folded Reload
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1968(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1964(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4
	vadd.f.mz.rn vr6{mr1}, vr7, vr3
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1960(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1956(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1952(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1948(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1944(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr2{mr3}, r1, vr2
	loadli.w r1,  -1940(r30)                # 4-byte Folded Reload
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1936(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1932(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1928(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1924(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1920(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1912(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1
	vor.u.mh vr2{mr2}, r1, vr2
	loadli.w r1,  -1908(r30)                # 4-byte Folded Reload
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1904(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1900(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1896(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1892(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1888(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1884(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1880(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr8{mr3}, r1, vr8
	loadli.w r1,  -1876(r30)                # 4-byte Folded Reload
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1872(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1868(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1860(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1856(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1852(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	vor.u.mh vr8{mr2}, r1, vr8
	vmmov mr3, mr2
	loadli.w r1,  -1844(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 1
	vmmov mr0, r2
	addli r2, zero, 2
	vor.u.mh vr8{mr2}, r1, vr8
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1836(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1828(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1824(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1820(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1812(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1804(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1788(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1780(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1772(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1764(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1756(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2
	vor.u.mh vr1{mr3}, r1, vr1
	loadli.w r1,  -1740(r30)                # 4-byte Folded Reload
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1732(r30)                # 4-byte Folded Reload
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1724(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1716(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1708(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1700(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1692(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1684(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1676(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1668(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1660(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1652(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1644(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1636(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1628(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	vor.u.mh vr0{mr0}, r1, vr0
	loadli.w r1,  -1608(r30)                # 4-byte Folded Reload
	vor.u.mh vr0{mr3}, r1, vr0
	loadli.w r1,  -1604(r30)                # 4-byte Folded Reload
	vor.u.mh vr0{mr2}, r1, vr0
	addli r1, r30, -1408
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1472
	vadd.f.mz.rn vr7{mr1}, vr3, vr2
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1536
	vadd.f.mz.rn vr5{mr1}, vr2, vr8
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1600
	vadd.f.mz.rn vr2{mr1}, vr2, vr1
	vload_mask16.mz vr1{mr1}, 0(r1)         # 64-byte Folded Reload
	vadd.f.mz.rn vr0{mr1}, vr1, vr0
	#APP
	vmax.f.mz vr1{mr1}, vr4, vr9
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr10
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr6
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr7
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr5
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr2
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr0
	#NO_APP
	vextracti.f r1, 0(vr1)
	vextracti.f r2, 1(vr1)
	vextracti.f r3, 2(vr1)
	vextracti.f r4, 3(vr1)
	vextracti.f r5, 4(vr1)
	vextracti.f r6, 5(vr1)
	vextracti.f r7, 6(vr1)
	vextracti.f r8, 7(vr1)
	vextracti.f r9, 8(vr1)
	vextracti.f r10, 9(vr1)
	vextracti.f r11, 10(vr1)
	vextracti.f r12, 11(vr1)
	vextracti.f r13, 12(vr1)
	vextracti.f r14, 13(vr1)
	vextracti.f r15, 14(vr1)
	vextracti.f r16, 15(vr1)
	#APP
	max.f r1, r1, r2
	#NO_APP
	loadli.w r2,  -2024(r30)                # 4-byte Folded Reload
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r4
	#NO_APP
	#APP
	max.f r1, r1, r5
	#NO_APP
	#APP
	max.f r1, r1, r6
	#NO_APP
	#APP
	max.f r1, r1, r7
	#NO_APP
	#APP
	max.f r1, r1, r8
	#NO_APP
	#APP
	max.f r1, r1, r9
	#NO_APP
	#APP
	max.f r1, r1, r10
	#NO_APP
	#APP
	max.f r1, r1, r11
	#NO_APP
	#APP
	max.f r1, r1, r12
	#NO_APP
	#APP
	max.f r1, r1, r13
	#NO_APP
	#APP
	max.f r1, r1, r14
	#NO_APP
	#APP
	max.f r1, r1, r15
	#NO_APP
	#APP
	max.f r1, r1, r16
	#NO_APP
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r19,  -2044(r30)               # 4-byte Folded Reload
	bneq r19, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 18 is_stmt 0                # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:0:18
	loadli.w r13,  -2012(r30)               # 4-byte Folded Reload
	loads.w r1, 0(r13)
	loads.w r2, 4(r13)
	loads.w r3, 8(r13)
	loads.w r4, 12(r13)
	loads.w r5, 16(r13)
	loads.w r6, 20(r13)
	loads.w r7, 24(r13)
	loads.w r8, 28(r13)
	loads.w r9, 32(r13)
	loads.w r10, 36(r13)
	loads.w r11, 40(r13)
	loads.w r12, 60(r13)
	#APP
	max.f r1, r1, r2
	#NO_APP
	loads.w r2, 44(r13)
	#APP
	max.f r1, r1, r3
	#NO_APP
	loads.w r3, 48(r13)
	#APP
	max.f r1, r1, r4
	#NO_APP
	loads.w r4, 52(r13)
	#APP
	max.f r1, r1, r5
	#NO_APP
	loads.w r5, 56(r13)
	#APP
	max.f r1, r1, r6
	#NO_APP
	#APP
	max.f r1, r1, r7
	#NO_APP
	#APP
	max.f r1, r1, r8
	#NO_APP
	#APP
	max.f r1, r1, r9
	#NO_APP
	#APP
	max.f r1, r1, r10
	#NO_APP
	#APP
	max.f r1, r1, r11
	#NO_APP
	#APP
	max.f r1, r1, r2
	#NO_APP
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r4
	#NO_APP
	#APP
	max.f r1, r1, r5
	#NO_APP
	#APP
	max.f r1, r1, r12
	#NO_APP
	stores.w r1, 0(r13)
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -2012(r30)                # 4-byte Folded Reload
	.loc	1 42 18 is_stmt 1               # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:42:18
	lui r2, 524288
	addli r20, r30, -256
	loads.w r1, 0(r1)
	xor r1, r1, r2
	#APP
	vadd.f.mz.rn vr3{mr1}, r1, vr4
	#NO_APP
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr9
	#NO_APP
	.loc	1 43 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:43:25
	vstore_mask16.mz vr3{mr1}, -256(r30)
	.loc	1 42 18                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:42:18
	#APP
	vadd.f.mz.rn vr8{mr1}, r1, vr10
	#NO_APP
	.loc	1 43 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:43:25
	vstore_mask16.mz vr4{mr1}, -192(r30)
	.loc	1 42 18                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:42:18
	#APP
	vadd.f.mz.rn vr6{mr1}, r1, vr6
	#NO_APP
	.loc	1 43 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:43:25
	vstore_mask16.mz vr8{mr1}, -128(r30)
	vstore_mask16.mz vr6{mr1}, -64(r30)
	.loc	1 42 18                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:42:18
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr5
	#NO_APP
	#APP
	vadd.f.mz.rn vr5{mr1}, r1, vr2
	#NO_APP
	#APP
	vadd.f.mz.rn vr7{mr1}, r1, vr7
	#NO_APP
	.loc	1 43 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:43:25
	#APP
	mfence { lm }
	loadli.w r2,  0(r20)
	loadli.w r3,  4(r20)
	loadli.w r4,  8(r20)
	loadli.w r5,  12(r20)
	loadli.w r6,  16(r20)
	loadli.w r7,  20(r20)
	loadli.w r8,  24(r20)
	loadli.w r9,  28(r20)
	loadli.w r10,  32(r20)
	loadli.w r11,  36(r20)
	loadli.w r12,  40(r20)
	loadli.w r13,  44(r20)
	loadli.w r14,  48(r20)
	loadli.w r15,  52(r20)
	loadli.w r16,  56(r20)
	loadli.w r17,  60(r20)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r17, r17
	storeli.w r2, 0(r20)
	storeli.w r3, 4(r20)
	storeli.w r4, 8(r20)
	storeli.w r5, 12(r20)
	storeli.w r6, 16(r20)
	storeli.w r7, 20(r20)
	storeli.w r8, 24(r20)
	storeli.w r9, 28(r20)
	storeli.w r10, 32(r20)
	storeli.w r11, 36(r20)
	storeli.w r12, 40(r20)
	storeli.w r13, 44(r20)
	storeli.w r14, 48(r20)
	storeli.w r15, 52(r20)
	storeli.w r16, 56(r20)
	storeli.w r17, 60(r20)
	loadli.w r2,  64(r20)
	loadli.w r3,  68(r20)
	loadli.w r4,  72(r20)
	loadli.w r5,  76(r20)
	loadli.w r6,  80(r20)
	loadli.w r7,  84(r20)
	loadli.w r8,  88(r20)
	loadli.w r9,  92(r20)
	loadli.w r10,  96(r20)
	loadli.w r11,  100(r20)
	loadli.w r12,  104(r20)
	loadli.w r13,  108(r20)
	loadli.w r14,  112(r20)
	loadli.w r15,  116(r20)
	loadli.w r16,  120(r20)
	loadli.w r17,  124(r20)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r17, r17
	storeli.w r2, 64(r20)
	storeli.w r3, 68(r20)
	storeli.w r4, 72(r20)
	storeli.w r5, 76(r20)
	storeli.w r6, 80(r20)
	storeli.w r7, 84(r20)
	storeli.w r8, 88(r20)
	storeli.w r9, 92(r20)
	storeli.w r10, 96(r20)
	storeli.w r11, 100(r20)
	storeli.w r12, 104(r20)
	storeli.w r13, 108(r20)
	storeli.w r14, 112(r20)
	storeli.w r15, 116(r20)
	storeli.w r16, 120(r20)
	storeli.w r17, 124(r20)
	loadli.w r2,  128(r20)
	loadli.w r3,  132(r20)
	loadli.w r4,  136(r20)
	loadli.w r5,  140(r20)
	loadli.w r6,  144(r20)
	loadli.w r7,  148(r20)
	loadli.w r8,  152(r20)
	loadli.w r9,  156(r20)
	loadli.w r10,  160(r20)
	loadli.w r11,  164(r20)
	loadli.w r12,  168(r20)
	loadli.w r13,  172(r20)
	loadli.w r14,  176(r20)
	loadli.w r15,  180(r20)
	loadli.w r16,  184(r20)
	loadli.w r17,  188(r20)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r17, r17
	storeli.w r2, 128(r20)
	storeli.w r3, 132(r20)
	storeli.w r4, 136(r20)
	storeli.w r5, 140(r20)
	storeli.w r6, 144(r20)
	storeli.w r7, 148(r20)
	storeli.w r8, 152(r20)
	storeli.w r9, 156(r20)
	storeli.w r10, 160(r20)
	storeli.w r11, 164(r20)
	storeli.w r12, 168(r20)
	storeli.w r13, 172(r20)
	storeli.w r14, 176(r20)
	storeli.w r15, 180(r20)
	storeli.w r16, 184(r20)
	storeli.w r17, 188(r20)
	loadli.w r2,  192(r20)
	loadli.w r3,  196(r20)
	loadli.w r4,  200(r20)
	loadli.w r5,  204(r20)
	loadli.w r6,  208(r20)
	loadli.w r7,  212(r20)
	loadli.w r8,  216(r20)
	loadli.w r9,  220(r20)
	loadli.w r10,  224(r20)
	loadli.w r11,  228(r20)
	loadli.w r12,  232(r20)
	loadli.w r13,  236(r20)
	loadli.w r14,  240(r20)
	loadli.w r15,  244(r20)
	loadli.w r16,  248(r20)
	loadli.w r17,  252(r20)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r17, r17
	storeli.w r2, 192(r20)
	storeli.w r3, 196(r20)
	storeli.w r4, 200(r20)
	storeli.w r5, 204(r20)
	storeli.w r6, 208(r20)
	storeli.w r7, 212(r20)
	storeli.w r8, 216(r20)
	storeli.w r9, 220(r20)
	storeli.w r10, 224(r20)
	storeli.w r11, 228(r20)
	storeli.w r12, 232(r20)
	storeli.w r13, 236(r20)
	storeli.w r14, 240(r20)
	storeli.w r15, 244(r20)
	storeli.w r16, 248(r20)
	storeli.w r17, 252(r20)
	mfence { lm }
	#NO_APP
	.loc	1 42 18                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:42:18
	#APP
	vadd.f.mz.rn vr6{mr1}, r1, vr0
	#NO_APP
	.loc	1 43 25                         # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:43:25
	vload_mask16.mz vr2{mr1}, -256(r30)
	vload_mask16.mz vr0{mr1}, -192(r30)
	vload_mask16.mz vr3{mr1}, -128(r30)
	vload_mask16.mz vr4{mr1}, -64(r30)
	vstore_mask16.mz vr7{mr1}, -256(r30)
	vstore_mask16.mz vr1{mr1}, -192(r30)
	vstore_mask16.mz vr5{mr1}, -128(r30)
	vstore_mask16.mz vr6{mr1}, -64(r30)
	#APP
	mfence { lm }
	loadli.w r1,  0(r20)
	loadli.w r2,  4(r20)
	loadli.w r3,  8(r20)
	loadli.w r4,  12(r20)
	loadli.w r5,  16(r20)
	loadli.w r6,  20(r20)
	loadli.w r7,  24(r20)
	loadli.w r8,  28(r20)
	loadli.w r9,  32(r20)
	loadli.w r10,  36(r20)
	loadli.w r11,  40(r20)
	loadli.w r12,  44(r20)
	loadli.w r13,  48(r20)
	loadli.w r14,  52(r20)
	loadli.w r15,  56(r20)
	loadli.w r16,  60(r20)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	storeli.w r1, 0(r20)
	storeli.w r2, 4(r20)
	storeli.w r3, 8(r20)
	storeli.w r4, 12(r20)
	storeli.w r5, 16(r20)
	storeli.w r6, 20(r20)
	storeli.w r7, 24(r20)
	storeli.w r8, 28(r20)
	storeli.w r9, 32(r20)
	storeli.w r10, 36(r20)
	storeli.w r11, 40(r20)
	storeli.w r12, 44(r20)
	storeli.w r13, 48(r20)
	storeli.w r14, 52(r20)
	storeli.w r15, 56(r20)
	storeli.w r16, 60(r20)
	loadli.w r1,  64(r20)
	loadli.w r2,  68(r20)
	loadli.w r3,  72(r20)
	loadli.w r4,  76(r20)
	loadli.w r5,  80(r20)
	loadli.w r6,  84(r20)
	loadli.w r7,  88(r20)
	loadli.w r8,  92(r20)
	loadli.w r9,  96(r20)
	loadli.w r10,  100(r20)
	loadli.w r11,  104(r20)
	loadli.w r12,  108(r20)
	loadli.w r13,  112(r20)
	loadli.w r14,  116(r20)
	loadli.w r15,  120(r20)
	loadli.w r16,  124(r20)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	storeli.w r1, 64(r20)
	storeli.w r2, 68(r20)
	storeli.w r3, 72(r20)
	storeli.w r4, 76(r20)
	storeli.w r5, 80(r20)
	storeli.w r6, 84(r20)
	storeli.w r7, 88(r20)
	storeli.w r8, 92(r20)
	storeli.w r9, 96(r20)
	storeli.w r10, 100(r20)
	storeli.w r11, 104(r20)
	storeli.w r12, 108(r20)
	storeli.w r13, 112(r20)
	storeli.w r14, 116(r20)
	storeli.w r15, 120(r20)
	storeli.w r16, 124(r20)
	loadli.w r1,  128(r20)
	loadli.w r2,  132(r20)
	loadli.w r3,  136(r20)
	loadli.w r4,  140(r20)
	loadli.w r5,  144(r20)
	loadli.w r6,  148(r20)
	loadli.w r7,  152(r20)
	loadli.w r8,  156(r20)
	loadli.w r9,  160(r20)
	loadli.w r10,  164(r20)
	loadli.w r11,  168(r20)
	loadli.w r12,  172(r20)
	loadli.w r13,  176(r20)
	loadli.w r14,  180(r20)
	loadli.w r15,  184(r20)
	loadli.w r16,  188(r20)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	storeli.w r1, 128(r20)
	storeli.w r2, 132(r20)
	storeli.w r3, 136(r20)
	storeli.w r4, 140(r20)
	storeli.w r5, 144(r20)
	storeli.w r6, 148(r20)
	storeli.w r7, 152(r20)
	storeli.w r8, 156(r20)
	storeli.w r9, 160(r20)
	storeli.w r10, 164(r20)
	storeli.w r11, 168(r20)
	storeli.w r12, 172(r20)
	storeli.w r13, 176(r20)
	storeli.w r14, 180(r20)
	storeli.w r15, 184(r20)
	storeli.w r16, 188(r20)
	loadli.w r1,  192(r20)
	loadli.w r2,  196(r20)
	loadli.w r3,  200(r20)
	loadli.w r4,  204(r20)
	loadli.w r5,  208(r20)
	loadli.w r6,  212(r20)
	loadli.w r7,  216(r20)
	loadli.w r8,  220(r20)
	loadli.w r9,  224(r20)
	loadli.w r10,  228(r20)
	loadli.w r11,  232(r20)
	loadli.w r12,  236(r20)
	loadli.w r13,  240(r20)
	loadli.w r14,  244(r20)
	loadli.w r15,  248(r20)
	loadli.w r16,  252(r20)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r13, r13
	exp.f.rn r14, r14
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	storeli.w r1, 192(r20)
	storeli.w r2, 196(r20)
	storeli.w r3, 200(r20)
	storeli.w r4, 204(r20)
	storeli.w r5, 208(r20)
	storeli.w r6, 212(r20)
	storeli.w r7, 216(r20)
	storeli.w r8, 220(r20)
	storeli.w r9, 224(r20)
	storeli.w r10, 228(r20)
	storeli.w r11, 232(r20)
	storeli.w r12, 236(r20)
	storeli.w r13, 240(r20)
	storeli.w r14, 244(r20)
	storeli.w r15, 248(r20)
	storeli.w r16, 252(r20)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr1{mr1}, -256(r30)
	vadd.f.mz.rn vr7{mr1}, vr2, vr0
	vadd.f.mz.rn vr5{mr1}, vr7, vr3
	vadd.f.mz.rn vr5{mr1}, vr5, vr4
	vadd.f.mz.rn vr6{mr1}, vr5, vr1
	vload_mask16.mz vr5{mr1}, -192(r30)
	vadd.f.mz.rn vr7{mr1}, vr6, vr5
	vload_mask16.mz vr6{mr1}, -128(r30)
	vadd.f.mz.rn vr8{mr1}, vr7, vr6
	vload_mask16.mz vr7{mr1}, -64(r30)
	vadd.f.mz.rn vr8{mr1}, vr8, vr7
	vextracti.f r1, 0(vr8)
	vextracti.f r2, 1(vr8)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr8)
	add.f.rn r1, r2, r1
	loadli.w r2,  -2028(r30)                # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	bneq r19, zero, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 25 is_stmt 0                # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:0:25
	loadli.w r4,  -2016(r30)                # 4-byte Folded Reload
	loads.w r1, 0(r4)
	loads.w r2, 4(r4)
	loads.w r3, 8(r4)
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
	loads.w r3, 32(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 40(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 48(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 56(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r4)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r4)
	j .LBB0_4
.LBB0_9:                                # %._crit_edge
	.loc	1 49 4 epilogue_begin is_stmt 1 # ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py:49:4
	addli sp, r30, -2176
	addli sp, sp, 2176
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused__softmax_add_0, .Lfunc_end0-triton_unk_fused__softmax_add_0
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused__softmax_add_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused__softmax_add_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused__softmax_add_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused__softmax_add_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused__softmax_add_0:
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused__softmax_add_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused__softmax_add_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused__softmax_add_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused__softmax_add_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused__softmax_add_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused__softmax_add_0:
	.long	2240                            # 0x8c0
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused__softmax_add_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused__softmax_add_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused__softmax_add_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused__softmax_add_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused__softmax_add_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused__softmax_add_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused__softmax_add_0, 4

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
.asciz	"ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py" # string offset=7
.Linfo_string2:
.asciz	"/tmp/b2-product-inductor/a4"   # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
