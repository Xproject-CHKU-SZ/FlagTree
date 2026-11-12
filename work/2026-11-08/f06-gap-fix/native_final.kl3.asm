	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused__softmax_add_0,"ax",@progbits
	.globl	triton_unk_fused__softmax_add_0 # -- Begin function triton_unk_fused__softmax_add_0
	.type	triton_unk_fused__softmax_add_0,@function
triton_unk_fused__softmax_add_0:        # @triton_unk_fused__softmax_add_0
.Lfunc_begin0:
	.file	1 "/tmp/b2_stages_inductor/uj" "cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py"
	.loc	1 21 0                          # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:21:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1984
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1920
	lui r5, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r6,  40(r30)
	ori r13, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	addli r9, r8, 4112
	mul.s r4, r4, r6
	storeli.w r9, -1832(r30)                # 4-byte Folded Spill
	stores.w zero, 0(r9)
	load_param_i r9, 0
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	storeli.w r8, -1828(r30)                # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	storeli.w r4, -1860(r30)                # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r4, zero, 16
	load_param_i r7, 1
	addli r10, zero, 2
	load.d r[5:6], 8(r30)
	vxor.u.mz vr10{mr1}, vr10, vr10
	storeli.w r13, -1836(r30)               # 4-byte Folded Spill
	div.s r4, r1, r4
	storeli.w r7, -1864(r30)                # 4-byte Folded Spill
	lui r7, 1048575
	ori r7, r7, 4032
	and r3, r3, r7
	slli r8, r4, 4
	slli r4, r4, 11
	sub.s r8, r1, r8
	andi r1, r1, 15
	slli r7, r8, 7
	add.s r8, r3, r2
	storeli.w r1, -1852(r30)                # 4-byte Folded Spill
	sext_int2long r[2:3], r7
	add.s r4, r7, r4
	addli r1, r8, 4112
	addli r7, zero, 512
	storeli.w r8, -1816(r30)                # 4-byte Folded Spill
	sll.d r[2:3], r[2:3], r10
	storeli.w r4, -1868(r30)                # 4-byte Folded Spill
	storeli.w r1, -1820(r30)                # 4-byte Folded Spill
	add.ul r[2:3], r[5:6], r[2:3]
	addli r6, r30, -1024
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	loadli.w r9,  -1856(r30)                # 4-byte Folded Reload
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	add.s r9, r9, r1
	loadli.w r1,  -1860(r30)                # 4-byte Folded Reload
	blt.s r9, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	addli r3, zero, 1
	storeli.w r9, -1856(r30)                # 4-byte Folded Spill
	div.s r1, r9, r1
	div.s r1, r1, r2
	loadli.w r2,  -1868(r30)                # 4-byte Folded Reload
	slli r1, r1, 14
	add.s r1, r2, r1
	storeli.w r1, -1824(r30)                # 4-byte Folded Spill
	addli r1, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	loadli.w r1,  -1820(r30)                # 4-byte Folded Reload
.Ltmp0:
	.loc	1 47 21 prologue_end            # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:47:21
	lui r2, 260096
	.loc	1 49 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:49:25
	load.d r[4:5], -1040(r30)               # 8-byte Folded Reload
	addli r7, zero, 512
	addli r6, r30, -1024
	loads.w r1, 0(r1)
	.loc	1 47 21                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:47:21
	div.f.rn r1, r2, r1
	.loc	1 49 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:49:25
	load.d r[2:3], 16(r30)
	.loc	1 48 19                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:48:19
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr1
	#NO_APP
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr3
	#NO_APP
	#APP
	vmul.f.mz.rn vr3{mr1}, r1, vr5
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r1, vr7
	#NO_APP
	#APP
	vmul.f.mz.rn vr7{mr1}, r1, vr8
	#NO_APP
	#APP
	vmul.f.mz.rn vr6{mr1}, r1, vr6
	#NO_APP
	#APP
	vmul.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 49 49                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:49:49
	vstore_mask16.mz vr0{mr1}, -1024(r30)
	vstore_mask16.mz vr1{mr1}, -960(r30)
	vstore_mask16.mz vr3{mr1}, -896(r30)
	vstore_mask16.mz vr5{mr1}, -832(r30)
	vstore_mask16.mz vr7{mr1}, -768(r30)
	vstore_mask16.mz vr6{mr1}, -704(r30)
	vstore_mask16.mz vr4{mr1}, -640(r30)
	vstore_mask16.mz vr2{mr1}, -576(r30)
	lui r1, 983040
	mfence { lm }
	.loc	1 49 25 is_stmt 0               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:49:25
	add.ul r[2:3], r[2:3], r[4:5]
	.loc	1 49 49                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:49:49
	or r1, r7, r1
	s_lm2gm r1, r6, 0(r[2:3])
	addli r3, zero, 0
	mfence { lm }
	loadli.w r1,  -1028(r30)                # 4-byte Folded Reload
	andi r2, r1, 1
	addli r1, zero, 8192
	beq r2, zero, .LBB0_2
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 37 37 is_stmt 1               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:37
	loadli.w r2,  -1824(r30)                # 4-byte Folded Reload
	storeli.w r3, -1028(r30)                # 4-byte Folded Spill
	.loc	1 37 30 is_stmt 0               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:30
	addli r5, zero, 2
	.loc	1 39 18 is_stmt 1               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:39:18
	vadd.s.mz vr9{mr1}, zero, vr10
	.loc	1 37 37                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:37
	add.s r1, r2, r1
	.loc	1 37 47 is_stmt 0               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:47
	lui r2, 983040
	.loc	1 37 30                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:30
	sext_int2long r[3:4], r1
	.loc	1 37 47                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:47
	or r2, r7, r2
	.loc	1 38 37 is_stmt 1               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:38:37
	lui r1, 983040
	.loc	1 37 30                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:30
	sll.d r[8:9], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 38 37                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:38:37
	or r1, r7, r1
	store.d r[8:9], -1040(r30)              # 8-byte Folded Spill
	.loc	1 37 30                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:30
	add.ul r[3:4], r[3:4], r[8:9]
	.loc	1 37 47 is_stmt 0               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:47
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 38 37 is_stmt 1               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:38:37
	load.d r[2:3], -1848(r30)               # 8-byte Folded Reload
	addli r4, r30, -512
	l_gm2lm r1, r4, 0(r[2:3])
	.loc	1 37 47                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:47
	addli r1, r30, -1408
	mfence { lm }
	vload_mask16.mz vr4{mr1}, -1024(r30)
	vload_mask16.mz vr5{mr1}, -960(r30)
	vload_mask16.mz vr0{mr1}, -896(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1152
	vload_mask16.mz vr7{mr1}, -832(r30)
	vload_mask16.mz vr0{mr1}, -768(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1216
	vload_mask16.mz vr0{mr1}, -704(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1280
	vload_mask16.mz vr0{mr1}, -640(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 38 37                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:38:37
	addli r1, r30, -1344
	.loc	1 37 47                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:37:47
	vload_mask16.mz vr0{mr1}, -576(r30)
	.loc	1 38 37                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:38:37
	loadli.w r28,  -292(r30)
	loadli.w r2,  -396(r30)
	loadli.w r3,  -392(r30)
	loadli.w r4,  -388(r30)
	loadli.w r5,  -384(r30)
	loadli.w r6,  -380(r30)
	loadli.w r7,  -376(r30)
	loadli.w r8,  -372(r30)
	loadli.w r9,  -368(r30)
	loadli.w r10,  -364(r30)
	loadli.w r11,  -360(r30)
	loadli.w r12,  -356(r30)
	loadli.w r13,  -352(r30)
	loadli.w r14,  -348(r30)
	loadli.w r15,  -344(r30)
	loadli.w r16,  -340(r30)
	loadli.w r17,  -336(r30)
	loadli.w r18,  -332(r30)
	loadli.w r19,  -328(r30)
	loadli.w r20,  -324(r30)
	loadli.w r21,  -320(r30)
	loadli.w r22,  -316(r30)
	loadli.w r23,  -312(r30)
	loadli.w r24,  -308(r30)
	loadli.w r25,  -304(r30)
	loadli.w r26,  -300(r30)
	loadli.w r27,  -296(r30)
	storeli.w r28, -1812(r30)               # 4-byte Folded Spill
	loadli.w r28,  -288(r30)
	storeli.w r28, -1808(r30)               # 4-byte Folded Spill
	loadli.w r28,  -284(r30)
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	loadli.w r1,  -512(r30)
	vadd.s.mz vr0{mr1}, zero, vr10
	storeli.w r28, -1804(r30)               # 4-byte Folded Spill
	loadli.w r28,  -280(r30)
	storeli.w r1, -1624(r30)                # 4-byte Folded Spill
	loadli.w r1,  -508(r30)
	storeli.w r28, -1800(r30)               # 4-byte Folded Spill
	loadli.w r28,  -276(r30)
	storeli.w r1, -1616(r30)                # 4-byte Folded Spill
	loadli.w r1,  -504(r30)
	storeli.w r28, -1796(r30)               # 4-byte Folded Spill
	loadli.w r28,  -272(r30)
	storeli.w r1, -1608(r30)                # 4-byte Folded Spill
	loadli.w r1,  -500(r30)
	storeli.w r28, -1792(r30)               # 4-byte Folded Spill
	loadli.w r28,  -268(r30)
	storeli.w r1, -1600(r30)                # 4-byte Folded Spill
	loadli.w r1,  -496(r30)
	storeli.w r28, -1788(r30)               # 4-byte Folded Spill
	loadli.w r28,  -264(r30)
	storeli.w r1, -1592(r30)                # 4-byte Folded Spill
	loadli.w r1,  -492(r30)
	storeli.w r28, -1784(r30)               # 4-byte Folded Spill
	loadli.w r28,  -260(r30)
	storeli.w r1, -1584(r30)                # 4-byte Folded Spill
	loadli.w r1,  -488(r30)
	storeli.w r28, -1780(r30)               # 4-byte Folded Spill
	loadli.w r28,  -256(r30)
	storeli.w r1, -1576(r30)                # 4-byte Folded Spill
	loadli.w r1,  -484(r30)
	storeli.w r28, -1776(r30)               # 4-byte Folded Spill
	loadli.w r28,  -252(r30)
	storeli.w r1, -1568(r30)                # 4-byte Folded Spill
	loadli.w r1,  -480(r30)
	storeli.w r28, -1772(r30)               # 4-byte Folded Spill
	loadli.w r28,  -248(r30)
	storeli.w r1, -1560(r30)                # 4-byte Folded Spill
	loadli.w r1,  -476(r30)
	storeli.w r28, -1768(r30)               # 4-byte Folded Spill
	loadli.w r28,  -244(r30)
	storeli.w r1, -1552(r30)                # 4-byte Folded Spill
	loadli.w r1,  -472(r30)
	storeli.w r28, -1764(r30)               # 4-byte Folded Spill
	loadli.w r28,  -240(r30)
	storeli.w r1, -1544(r30)                # 4-byte Folded Spill
	loadli.w r1,  -468(r30)
	storeli.w r28, -1760(r30)               # 4-byte Folded Spill
	loadli.w r28,  -236(r30)
	storeli.w r1, -1536(r30)                # 4-byte Folded Spill
	loadli.w r1,  -464(r30)
	storeli.w r28, -1756(r30)               # 4-byte Folded Spill
	loadli.w r28,  -232(r30)
	storeli.w r1, -1528(r30)                # 4-byte Folded Spill
	loadli.w r1,  -460(r30)
	storeli.w r28, -1752(r30)               # 4-byte Folded Spill
	loadli.w r28,  -228(r30)
	storeli.w r1, -1520(r30)                # 4-byte Folded Spill
	loadli.w r1,  -456(r30)
	storeli.w r28, -1748(r30)               # 4-byte Folded Spill
	loadli.w r28,  -224(r30)
	storeli.w r1, -1512(r30)                # 4-byte Folded Spill
	loadli.w r1,  -452(r30)
	storeli.w r28, -1744(r30)               # 4-byte Folded Spill
	loadli.w r28,  -220(r30)
	storeli.w r1, -1504(r30)                # 4-byte Folded Spill
	loadli.w r1,  -448(r30)
	storeli.w r28, -1740(r30)               # 4-byte Folded Spill
	loadli.w r28,  -216(r30)
	storeli.w r1, -1496(r30)                # 4-byte Folded Spill
	loadli.w r1,  -444(r30)
	storeli.w r28, -1736(r30)               # 4-byte Folded Spill
	loadli.w r28,  -212(r30)
	storeli.w r1, -1488(r30)                # 4-byte Folded Spill
	loadli.w r1,  -440(r30)
	storeli.w r28, -1732(r30)               # 4-byte Folded Spill
	loadli.w r28,  -208(r30)
	storeli.w r1, -1480(r30)                # 4-byte Folded Spill
	loadli.w r1,  -436(r30)
	storeli.w r28, -1728(r30)               # 4-byte Folded Spill
	loadli.w r28,  -204(r30)
	storeli.w r1, -1472(r30)                # 4-byte Folded Spill
	loadli.w r1,  -432(r30)
	storeli.w r28, -1724(r30)               # 4-byte Folded Spill
	loadli.w r28,  -200(r30)
	storeli.w r1, -1464(r30)                # 4-byte Folded Spill
	loadli.w r1,  -428(r30)
	storeli.w r28, -1720(r30)               # 4-byte Folded Spill
	loadli.w r28,  -196(r30)
	storeli.w r1, -1456(r30)                # 4-byte Folded Spill
	loadli.w r1,  -424(r30)
	storeli.w r28, -1716(r30)               # 4-byte Folded Spill
	loadli.w r28,  -192(r30)
	storeli.w r1, -1448(r30)                # 4-byte Folded Spill
	loadli.w r1,  -420(r30)
	storeli.w r28, -1712(r30)               # 4-byte Folded Spill
	loadli.w r28,  -188(r30)
	storeli.w r1, -1440(r30)                # 4-byte Folded Spill
	loadli.w r1,  -416(r30)
	storeli.w r28, -1708(r30)               # 4-byte Folded Spill
	loadli.w r28,  -184(r30)
	storeli.w r1, -1432(r30)                # 4-byte Folded Spill
	loadli.w r1,  -412(r30)
	storeli.w r28, -1704(r30)               # 4-byte Folded Spill
	loadli.w r28,  -180(r30)
	storeli.w r1, -1428(r30)                # 4-byte Folded Spill
	loadli.w r1,  -408(r30)
	storeli.w r28, -1700(r30)               # 4-byte Folded Spill
	loadli.w r28,  -176(r30)
	storeli.w r1, -1424(r30)                # 4-byte Folded Spill
	loadli.w r1,  -404(r30)
	storeli.w r28, -1696(r30)               # 4-byte Folded Spill
	loadli.w r28,  -172(r30)
	.loc	1 39 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:39:18
	storeli.w r1, -1420(r30)                # 4-byte Folded Spill
	.loc	1 38 37                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:38:37
	loadli.w r1,  -400(r30)
	storeli.w r28, -1692(r30)               # 4-byte Folded Spill
	loadli.w r28,  -168(r30)
	storeli.w r28, -1688(r30)               # 4-byte Folded Spill
	loadli.w r28,  -164(r30)
	storeli.w r28, -1684(r30)               # 4-byte Folded Spill
	loadli.w r28,  -160(r30)
	storeli.w r28, -1680(r30)               # 4-byte Folded Spill
	loadli.w r28,  -156(r30)
	storeli.w r28, -1676(r30)               # 4-byte Folded Spill
	loadli.w r28,  -152(r30)
	storeli.w r28, -1672(r30)               # 4-byte Folded Spill
	loadli.w r28,  -148(r30)
	storeli.w r28, -1668(r30)               # 4-byte Folded Spill
	loadli.w r28,  -144(r30)
	storeli.w r28, -1664(r30)               # 4-byte Folded Spill
	loadli.w r28,  -140(r30)
	storeli.w r28, -1660(r30)               # 4-byte Folded Spill
	loadli.w r28,  -136(r30)
	storeli.w r28, -1656(r30)               # 4-byte Folded Spill
	loadli.w r28,  -132(r30)
	storeli.w r28, -1652(r30)               # 4-byte Folded Spill
	loadli.w r28,  -128(r30)
	storeli.w r28, -1648(r30)               # 4-byte Folded Spill
	loadli.w r28,  -124(r30)
	storeli.w r28, -1644(r30)               # 4-byte Folded Spill
	loadli.w r28,  -120(r30)
	storeli.w r28, -1640(r30)               # 4-byte Folded Spill
	loadli.w r28,  -116(r30)
	storeli.w r28, -1636(r30)               # 4-byte Folded Spill
	loadli.w r28,  -112(r30)
	storeli.w r28, -1632(r30)               # 4-byte Folded Spill
	loadli.w r28,  -108(r30)
	storeli.w r28, -1628(r30)               # 4-byte Folded Spill
	loadli.w r28,  -104(r30)
	storeli.w r28, -1620(r30)               # 4-byte Folded Spill
	loadli.w r28,  -100(r30)
	storeli.w r28, -1612(r30)               # 4-byte Folded Spill
	loadli.w r28,  -96(r30)
	storeli.w r28, -1604(r30)               # 4-byte Folded Spill
	loadli.w r28,  -92(r30)
	storeli.w r28, -1596(r30)               # 4-byte Folded Spill
	loadli.w r28,  -88(r30)
	storeli.w r28, -1588(r30)               # 4-byte Folded Spill
	loadli.w r28,  -84(r30)
	storeli.w r28, -1580(r30)               # 4-byte Folded Spill
	loadli.w r28,  -80(r30)
	storeli.w r28, -1572(r30)               # 4-byte Folded Spill
	loadli.w r28,  -76(r30)
	storeli.w r28, -1564(r30)               # 4-byte Folded Spill
	loadli.w r28,  -72(r30)
	storeli.w r28, -1556(r30)               # 4-byte Folded Spill
	loadli.w r28,  -68(r30)
	storeli.w r28, -1548(r30)               # 4-byte Folded Spill
	loadli.w r28,  -64(r30)
	storeli.w r28, -1540(r30)               # 4-byte Folded Spill
	loadli.w r28,  -60(r30)
	storeli.w r28, -1532(r30)               # 4-byte Folded Spill
	loadli.w r28,  -56(r30)
	storeli.w r28, -1524(r30)               # 4-byte Folded Spill
	loadli.w r28,  -52(r30)
	storeli.w r28, -1516(r30)               # 4-byte Folded Spill
	loadli.w r28,  -48(r30)
	storeli.w r28, -1508(r30)               # 4-byte Folded Spill
	loadli.w r28,  -44(r30)
	storeli.w r28, -1500(r30)               # 4-byte Folded Spill
	loadli.w r28,  -40(r30)
	storeli.w r28, -1492(r30)               # 4-byte Folded Spill
	loadli.w r28,  -36(r30)
	storeli.w r28, -1484(r30)               # 4-byte Folded Spill
	loadli.w r28,  -32(r30)
	storeli.w r28, -1476(r30)               # 4-byte Folded Spill
	loadli.w r28,  -28(r30)
	storeli.w r28, -1468(r30)               # 4-byte Folded Spill
	loadli.w r28,  -24(r30)
	storeli.w r28, -1460(r30)               # 4-byte Folded Spill
	loadli.w r28,  -20(r30)
	storeli.w r28, -1452(r30)               # 4-byte Folded Spill
	loadli.w r28,  -16(r30)
	storeli.w r28, -1444(r30)               # 4-byte Folded Spill
	loadli.w r28,  -12(r30)
	storeli.w r28, -1436(r30)               # 4-byte Folded Spill
	loadli.w r28,  -8(r30)
	storeli.w r28, -1416(r30)               # 4-byte Folded Spill
	loadli.w r28,  -4(r30)
	storeli.w r28, -1412(r30)               # 4-byte Folded Spill
	addli r28, zero, 1
	vmmov mr2, r28
	.loc	1 39 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:39:18
	loadli.w r28,  -1624(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr2}, r28, vr9
	addli r28, zero, 2
	vmmov mr3, r28
	loadli.w r28,  -1616(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr3}, r28, vr9
	addli r28, zero, 4
	vmmov mr0, r28
	loadli.w r28,  -1608(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 8
	vmmov mr0, r28
	loadli.w r28,  -1600(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 16
	vmmov mr0, r28
	loadli.w r28,  -1592(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 32
	vmmov mr0, r28
	loadli.w r28,  -1584(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 64
	vmmov mr0, r28
	loadli.w r28,  -1576(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 128
	vmmov mr0, r28
	loadli.w r28,  -1568(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 256
	vmmov mr0, r28
	loadli.w r28,  -1560(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 512
	vmmov mr0, r28
	loadli.w r28,  -1552(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 1024
	vmmov mr0, r28
	loadli.w r28,  -1544(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 2048
	vmmov mr2, mr0
	vmmov mr0, r28
	loadli.w r28,  -1536(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 4096
	vmmov mr0, r28
	loadli.w r28,  -1528(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	addli r28, zero, 8192
	addli zero, zero, 1
	vmmov mr0, r28
	loadli.w r28,  -1520(r30)               # 4-byte Folded Reload
	vmmov mr3, zero
	xor zero, zero, zero
	addli zero, zero, 2
	vor.u.mh vr9{mr0}, r28, vr9
	lui r28, 4
	vmmov mr0, r28
	loadli.w r28,  -1512(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	lui r28, 8
	vmmov mr0, r28
	loadli.w r28,  -1504(r30)               # 4-byte Folded Reload
	vor.u.mh vr9{mr0}, r28, vr9
	loadli.w r28,  -1496(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 4
	vor.u.mh vr10{mr3}, r28, vr10
	loadli.w r28,  -1488(r30)               # 4-byte Folded Reload
	vadd.f.mz.rn vr4{mr1}, vr4, vr9
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1480(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 8
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1472(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 16
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1464(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 32
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1456(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 64
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1448(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 128
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1440(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 256
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1432(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 512
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1428(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	addli zero, zero, 2048
	vor.u.mh vr10{mr0}, r28, vr10
	loadli.w r28,  -1424(r30)               # 4-byte Folded Reload
	vmmov mr0, zero
	xor zero, zero, zero
	vadd.s.mz vr11{mr1}, zero, vr0
	vadd.s.mz vr3{mr1}, zero, vr0
	vadd.s.mz vr8{mr1}, zero, vr0
	vadd.s.mz vr2{mr1}, zero, vr0
	vadd.s.mz vr1{mr1}, zero, vr0
	vadd.s.mz vr6{mr1}, zero, vr0
	vor.u.mh vr10{mr2}, r28, vr10
	loadli.w r28,  -1420(r30)               # 4-byte Folded Reload
	vor.u.mh vr10{mr0}, r28, vr10
	addli r28, zero, 4096
	vmmov mr2, r28
	vmmov mr0, mr2
	vor.u.mh vr10{mr0}, r1, vr10
	addli r1, zero, 8192
	vmmov mr2, r1
	lui r1, 4
	vor.u.mh vr10{mr2}, r2, vr10
	vmmov mr0, r1
	lui r1, 8
	addli r2, zero, 128
	vor.u.mh vr10{mr0}, r3, vr10
	vmmov mr0, r1
	addli r1, zero, 2
	vor.u.mh vr10{mr0}, r4, vr10
	vor.u.mh vr11{mr3}, r5, vr11
	vmmov mr0, r1
	addli r1, zero, 4
	vor.u.mh vr11{mr0}, r6, vr11
	vmmov mr0, r1
	addli r1, zero, 8
	vadd.f.mz.rn vr5{mr1}, vr5, vr10
	vor.u.mh vr11{mr0}, r7, vr11
	vmmov mr0, r1
	addli r1, zero, 16
	vor.u.mh vr11{mr0}, r8, vr11
	vmmov mr0, r1
	addli r1, zero, 32
	vor.u.mh vr11{mr0}, r9, vr11
	vmmov mr0, r1
	addli r1, zero, 64
	vor.u.mh vr11{mr0}, r10, vr11
	vmmov mr0, r1
	addli r1, zero, 128
	vor.u.mh vr11{mr0}, r11, vr11
	vmmov mr0, r1
	addli r1, zero, 256
	vor.u.mh vr11{mr0}, r12, vr11
	vmmov mr0, r1
	addli r1, zero, 512
	vor.u.mh vr11{mr0}, r13, vr11
	vmmov mr0, r1
	addli r1, zero, 1024
	vor.u.mh vr11{mr0}, r14, vr11
	vmmov mr0, r1
	addli r1, zero, 2048
	vor.u.mh vr11{mr0}, r15, vr11
	vmmov mr0, r1
	addli r1, zero, 4096
	vmmov mr3, r1
	lui r1, 4
	vor.u.mh vr11{mr0}, r16, vr11
	vmmov mr0, r1
	lui r1, 8
	vor.u.mh vr11{mr3}, r17, vr11
	vor.u.mh vr11{mr2}, r18, vr11
	vor.u.mh vr11{mr0}, r19, vr11
	vmmov mr0, r1
	lui r1, 8
	vmmov mr2, r1
	addli r1, zero, 1
	vor.u.mh vr11{mr0}, r20, vr11
	vmmov mr0, r1
	addli r1, zero, 2
	vor.u.mh vr3{mr0}, r21, vr3
	vmmov mr0, r1
	addli r1, zero, 4
	vor.u.mh vr3{mr0}, r22, vr3
	vmmov mr0, r1
	addli r1, zero, 8
	vor.u.mh vr3{mr0}, r23, vr3
	vmmov mr0, r1
	addli r1, zero, 16
	vor.u.mh vr3{mr0}, r24, vr3
	vmmov mr0, r1
	addli r1, zero, 32
	vor.u.mh vr3{mr0}, r25, vr3
	vmmov mr0, r1
	addli r1, zero, 64
	vor.u.mh vr3{mr0}, r26, vr3
	vmmov mr0, r1
	vor.u.mh vr3{mr0}, r27, vr3
	loadli.w r1,  -1812(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1808(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1804(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1800(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1792(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr3{mr3}, r1, vr3
	loadli.w r1,  -1788(r30)                # 4-byte Folded Reload
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1784(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1
	vor.u.mh vr3{mr0}, r1, vr3
	loadli.w r1,  -1780(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2
	vor.u.mh vr3{mr2}, r1, vr3
	loadli.w r1,  -1776(r30)                # 4-byte Folded Reload
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1772(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4
	vadd.f.mz.rn vr7{mr1}, vr7, vr3
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1768(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1764(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1756(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1752(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1740(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1736(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1732(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1728(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr8{mr3}, r1, vr8
	loadli.w r1,  -1724(r30)                # 4-byte Folded Reload
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1720(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1
	vor.u.mh vr8{mr0}, r1, vr8
	loadli.w r1,  -1716(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2
	vor.u.mh vr8{mr2}, r1, vr8
	loadli.w r1,  -1712(r30)                # 4-byte Folded Reload
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1708(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 4
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1704(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1700(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1696(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1692(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1688(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1684(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1680(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1676(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1672(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1668(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1664(r30)                # 4-byte Folded Reload
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr2{mr3}, r1, vr2
	loadli.w r1,  -1660(r30)                # 4-byte Folded Reload
	vmmov mr3, r2
	addli r2, zero, 1
	vor.u.mh vr2{mr0}, r1, vr2
	loadli.w r1,  -1656(r30)                # 4-byte Folded Reload
	vor.u.mh vr2{mr3}, r1, vr2
	loadli.w r1,  -1652(r30)                # 4-byte Folded Reload
	vor.u.mh vr2{mr2}, r1, vr2
	vmmov mr0, mr2
	loadli.w r1,  -1648(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 2
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1644(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 4
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1640(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 8
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1636(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 16
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1632(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 32
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1628(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 64
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1620(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 128
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1612(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 256
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1604(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 512
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1596(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 1024
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1588(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 2048
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1580(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 4096
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1572(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 8192
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1564(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 1
	vor.u.mh vr1{mr2}, r1, vr1
	loadli.w r1,  -1556(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 2
	vor.u.mh vr1{mr3}, r1, vr1
	loadli.w r1,  -1548(r30)                # 4-byte Folded Reload
	vor.u.mh vr1{mr0}, r1, vr1
	loadli.w r1,  -1540(r30)                # 4-byte Folded Reload
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1532(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 4
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1524(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 8
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1516(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 16
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1508(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 32
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1500(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 64
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1492(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 128
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1484(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 256
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1476(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 512
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1468(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 1024
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1460(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 2048
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1452(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 4096
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1444(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	addli r2, zero, 8192
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1436(r30)                # 4-byte Folded Reload
	vmmov mr2, r2
	vor.u.mh vr0{mr2}, r1, vr0
	loadli.w r1,  -1416(r30)                # 4-byte Folded Reload
	vor.u.mh vr0{mr3}, r1, vr0
	addli r1, r30, -1408
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	loadli.w r1,  -1412(r30)                # 4-byte Folded Reload
	vor.u.mh vr0{mr0}, r1, vr0
	addli r1, r30, -1152
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1216
	vadd.f.mz.rn vr9{mr1}, vr9, vr11
	vadd.f.mz.rn vr8{mr1}, vr3, vr8
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1280
	vadd.f.mz.rn vr11{mr1}, vr3, vr2
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1344
	vadd.f.mz.rn vr2{mr1}, vr2, vr1
	vload_mask16.mz vr1{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1216
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1152
	vadd.f.mz.rn vr1{mr1}, vr1, vr0
	#APP
	vmax.f.mz vr0{mr1}, vr4, vr5
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr9
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr7
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vextracti.f r1, 0(vr0)
	vextracti.f r2, 1(vr0)
	vextracti.f r3, 2(vr0)
	vextracti.f r4, 3(vr0)
	vextracti.f r5, 4(vr0)
	vextracti.f r6, 5(vr0)
	vextracti.f r7, 6(vr0)
	vextracti.f r8, 7(vr0)
	vextracti.f r9, 8(vr0)
	vextracti.f r10, 9(vr0)
	vextracti.f r11, 10(vr0)
	vextracti.f r12, 11(vr0)
	vextracti.f r13, 12(vr0)
	vextracti.f r14, 13(vr0)
	vextracti.f r15, 14(vr0)
	vextracti.f r16, 15(vr0)
	#APP
	max.f r1, r1, r2
	#NO_APP
	loadli.w r2,  -1828(r30)                # 4-byte Folded Reload
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
	loadli.w r13,  -1836(r30)               # 4-byte Folded Reload
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
	csr_set csr3, r13
	sync_group
	loadli.w r15,  -1852(r30)               # 4-byte Folded Reload
	bneq r15, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 18 is_stmt 0                # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:0:18
	loadli.w r14,  -1816(r30)               # 4-byte Folded Reload
	loads.w r1, 0(r14)
	loads.w r2, 4(r14)
	loads.w r3, 8(r14)
	loads.w r4, 12(r14)
	loads.w r5, 16(r14)
	loads.w r6, 20(r14)
	loads.w r7, 24(r14)
	loads.w r8, 28(r14)
	loads.w r9, 32(r14)
	loads.w r10, 36(r14)
	loads.w r11, 40(r14)
	loads.w r12, 60(r14)
	#APP
	max.f r1, r1, r2
	#NO_APP
	loads.w r2, 44(r14)
	#APP
	max.f r1, r1, r3
	#NO_APP
	loads.w r3, 48(r14)
	#APP
	max.f r1, r1, r4
	#NO_APP
	loads.w r4, 52(r14)
	#APP
	max.f r1, r1, r5
	#NO_APP
	loads.w r5, 56(r14)
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
	stores.w r1, 0(r14)
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	loadli.w r1,  -1816(r30)                # 4-byte Folded Reload
	.loc	1 42 18 is_stmt 1               # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	lui r2, 524288
	vadd.s.mz vr10{mr1}, zero, vr6
	addli r5, zero, 1
	addli r6, zero, 8192
	vmmov mr2, r5
	addli r5, zero, 2
	loads.w r1, 0(r1)
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vadd.s.mz vr1{mr1}, zero, vr10
	vadd.s.mz vr3{mr1}, zero, vr10
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	xor r1, r1, r2
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr4
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vextracti.f r2, 0(vr0)
	vextracti.f r3, 1(vr0)
	vextracti.f r4, 2(vr0)
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr5
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vadd.s.mz vr5{mr1}, zero, vr10
	vadd.s.mz vr4{mr1}, zero, vr10
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 3(vr0)
	vmmov mr2, r5
	addli r5, zero, 4
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 4(vr0)
	vmmov mr2, r5
	addli r5, zero, 8
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 5(vr0)
	vmmov mr2, r5
	addli r5, zero, 16
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 6(vr0)
	vmmov mr2, r5
	addli r5, zero, 32
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 7(vr0)
	vmmov mr2, r5
	addli r5, zero, 64
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 8(vr0)
	vmmov mr2, r5
	addli r5, zero, 128
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 9(vr0)
	vmmov mr2, r5
	addli r5, zero, 256
	vmmov mr3, r5
	addli r5, zero, 512
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 10(vr0)
	vmmov mr0, r5
	addli r5, zero, 1024
	vmmov mr2, r5
	addli r5, zero, 2048
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 11(vr0)
	vor.u.mh vr1{mr0}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 12(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 13(vr0)
	vmmov mr2, r5
	addli r5, zero, 4096
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vextracti.f r4, 14(vr0)
	vmmov mr2, r5
	vextracti.f r5, 0(vr2)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r4
	vextracti.f r4, 15(vr0)
	vmmov mr2, r6
	lui r6, 4
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr9
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vor.u.mh vr1{mr2}, r3, vr1
	exp.f.rn r3, r4
	vmmov mr2, r6
	exp.f.rn r4, r5
	vextracti.f r5, 1(vr2)
	lui r6, 8
	vor.u.mh vr1{mr2}, r2, vr1
	vmmov mr2, r6
	exp.f.rn r2, r5
	vextracti.f r5, 2(vr2)
	addli r6, zero, 8192
	vor.u.mh vr1{mr2}, r3, vr1
	addli r3, zero, 1
	vmmov mr2, r3
	exp.f.rn r3, r5
	addli r5, zero, 2
	vor.u.mh vr3{mr2}, r4, vr3
	vextracti.f r4, 3(vr2)
	vmmov mr2, r5
	addli r5, zero, 4
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r4
	vextracti.f r4, 4(vr2)
	vmmov mr2, r5
	addli r5, zero, 8
	vor.u.mh vr3{mr2}, r3, vr3
	exp.f.rn r3, r4
	vextracti.f r4, 5(vr2)
	vmmov mr2, r5
	addli r5, zero, 16
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r4
	vextracti.f r4, 6(vr2)
	vmmov mr2, r5
	addli r5, zero, 32
	vor.u.mh vr3{mr2}, r3, vr3
	exp.f.rn r3, r4
	vextracti.f r4, 7(vr2)
	vmmov mr2, r5
	addli r5, zero, 64
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r4
	vextracti.f r4, 8(vr2)
	vmmov mr2, r5
	addli r5, zero, 128
	vor.u.mh vr3{mr2}, r3, vr3
	exp.f.rn r3, r4
	vextracti.f r4, 9(vr2)
	vmmov mr2, r5
	addli r5, zero, 1024
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r4
	vextracti.f r4, 10(vr2)
	vor.u.mh vr3{mr3}, r3, vr3
	exp.f.rn r3, r4
	vextracti.f r4, 11(vr2)
	vmmov mr3, r5
	addli r5, zero, 2048
	vor.u.mh vr3{mr0}, r2, vr3
	exp.f.rn r2, r4
	vextracti.f r4, 12(vr2)
	vmmov mr0, r5
	addli r5, zero, 4096
	vmmov mr2, r5
	vextracti.f r5, 0(vr0)
	vor.u.mh vr3{mr3}, r3, vr3
	exp.f.rn r3, r4
	vextracti.f r4, 13(vr2)
	vor.u.mh vr3{mr0}, r2, vr3
	exp.f.rn r2, r4
	vextracti.f r4, 14(vr2)
	vmmov mr0, r6
	lui r6, 4
	vor.u.mh vr3{mr2}, r3, vr3
	exp.f.rn r3, r4
	vextracti.f r4, 15(vr2)
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr7
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vadd.s.mz vr7{mr1}, zero, vr10
	vor.u.mh vr3{mr0}, r2, vr3
	exp.f.rn r2, r4
	vmmov mr0, r6
	exp.f.rn r4, r5
	vextracti.f r5, 1(vr0)
	lui r6, 8
	vor.u.mh vr3{mr0}, r3, vr3
	vmmov mr0, r6
	exp.f.rn r3, r5
	vextracti.f r5, 2(vr0)
	addli r6, zero, 8192
	vor.u.mh vr3{mr0}, r2, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r5
	addli r5, zero, 2
	vor.u.mh vr5{mr0}, r4, vr5
	vextracti.f r4, 3(vr0)
	vmmov mr0, r5
	addli r5, zero, 4
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vextracti.f r4, 4(vr0)
	vmmov mr0, r5
	addli r5, zero, 8
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r4
	vextracti.f r4, 5(vr0)
	vmmov mr0, r5
	addli r5, zero, 16
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vextracti.f r4, 6(vr0)
	vmmov mr0, r5
	addli r5, zero, 32
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r4
	vextracti.f r4, 7(vr0)
	vmmov mr0, r5
	addli r5, zero, 64
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vextracti.f r4, 8(vr0)
	vmmov mr0, r5
	addli r5, zero, 128
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r4
	vextracti.f r4, 9(vr0)
	vmmov mr0, r5
	addli r5, zero, 256
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vextracti.f r4, 10(vr0)
	vmmov mr0, r5
	addli r5, zero, 512
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r4
	vextracti.f r4, 11(vr0)
	vmmov mr0, r5
	addli r5, zero, 2048
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vextracti.f r4, 12(vr0)
	vmmov mr0, r5
	vextracti.f r5, 0(vr2)
	vor.u.mh vr5{mr3}, r2, vr5
	exp.f.rn r2, r4
	vextracti.f r4, 13(vr0)
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vextracti.f r4, 14(vr0)
	vmmov mr0, r6
	lui r6, 4
	vor.u.mh vr5{mr2}, r2, vr5
	exp.f.rn r2, r4
	vextracti.f r4, 15(vr0)
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr8
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vadd.s.mz vr8{mr1}, zero, vr10
	vor.u.mh vr5{mr0}, r3, vr5
	exp.f.rn r3, r4
	vmmov mr0, r6
	exp.f.rn r4, r5
	vextracti.f r5, 1(vr2)
	lui r6, 8
	vor.u.mh vr5{mr0}, r2, vr5
	vmmov mr0, r6
	exp.f.rn r2, r5
	vextracti.f r5, 2(vr2)
	addli r6, zero, 8192
	vor.u.mh vr5{mr0}, r3, vr5
	addli r3, zero, 1
	vmmov mr0, r3
	exp.f.rn r3, r5
	addli r5, zero, 2
	vor.u.mh vr7{mr0}, r4, vr7
	vextracti.f r4, 3(vr2)
	vmmov mr0, r5
	addli r5, zero, 4
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r4
	vextracti.f r4, 4(vr2)
	vmmov mr0, r5
	addli r5, zero, 8
	vor.u.mh vr7{mr0}, r3, vr7
	exp.f.rn r3, r4
	vextracti.f r4, 5(vr2)
	vmmov mr0, r5
	addli r5, zero, 16
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r4
	vextracti.f r4, 6(vr2)
	vmmov mr0, r5
	addli r5, zero, 32
	vor.u.mh vr7{mr0}, r3, vr7
	exp.f.rn r3, r4
	vextracti.f r4, 7(vr2)
	vmmov mr0, r5
	addli r5, zero, 64
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r4
	vextracti.f r4, 8(vr2)
	vmmov mr0, r5
	addli r5, zero, 128
	vor.u.mh vr7{mr0}, r3, vr7
	exp.f.rn r3, r4
	vextracti.f r4, 9(vr2)
	vmmov mr0, r5
	addli r5, zero, 256
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r4
	vextracti.f r4, 10(vr2)
	vmmov mr0, r5
	addli r5, zero, 512
	vor.u.mh vr7{mr0}, r3, vr7
	exp.f.rn r3, r4
	vextracti.f r4, 11(vr2)
	vmmov mr0, r5
	addli r5, zero, 2048
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r4
	vextracti.f r4, 12(vr2)
	vmmov mr0, r5
	vextracti.f r5, 0(vr0)
	vor.u.mh vr7{mr3}, r3, vr7
	exp.f.rn r3, r4
	vextracti.f r4, 13(vr2)
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r4
	vextracti.f r4, 14(vr2)
	vor.u.mh vr7{mr2}, r3, vr7
	exp.f.rn r3, r4
	vextracti.f r4, 15(vr2)
	vmmov mr2, r6
	lui r6, 4
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr11
	#NO_APP
	vmmov mr0, r6
	lui r6, 8
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vor.u.mh vr7{mr2}, r2, vr7
	exp.f.rn r2, r4
	exp.f.rn r4, r5
	vextracti.f r5, 1(vr0)
	vor.u.mh vr7{mr0}, r3, vr7
	vmmov mr0, r6
	exp.f.rn r3, r5
	vextracti.f r5, 2(vr0)
	lui r6, 4
	vor.u.mh vr7{mr0}, r2, vr7
	addli r2, zero, 1
	vmmov mr3, r2
	exp.f.rn r2, r5
	addli r5, zero, 2
	vor.u.mh vr8{mr3}, r4, vr8
	vextracti.f r4, 3(vr0)
	vmmov mr3, r5
	addli r5, zero, 4
	vor.u.mh vr8{mr3}, r3, vr8
	exp.f.rn r3, r4
	vextracti.f r4, 4(vr0)
	vmmov mr3, r5
	addli r5, zero, 8
	vor.u.mh vr8{mr3}, r2, vr8
	exp.f.rn r2, r4
	vextracti.f r4, 5(vr0)
	vmmov mr3, r5
	addli r5, zero, 16
	vor.u.mh vr8{mr3}, r3, vr8
	exp.f.rn r3, r4
	vextracti.f r4, 6(vr0)
	vmmov mr3, r5
	addli r5, zero, 32
	vor.u.mh vr8{mr3}, r2, vr8
	exp.f.rn r2, r4
	vextracti.f r4, 7(vr0)
	vmmov mr3, r5
	addli r5, zero, 64
	vmmov mr0, r5
	addli r5, zero, 128
	vor.u.mh vr8{mr3}, r3, vr8
	exp.f.rn r3, r4
	vextracti.f r4, 8(vr0)
	vmmov mr3, r5
	addli r5, zero, 256
	vor.u.mh vr8{mr0}, r2, vr8
	exp.f.rn r2, r4
	vextracti.f r4, 9(vr0)
	vmmov mr0, r5
	addli r5, zero, 512
	vor.u.mh vr8{mr3}, r3, vr8
	exp.f.rn r3, r4
	vextracti.f r4, 10(vr0)
	vor.u.mh vr8{mr0}, r2, vr8
	exp.f.rn r2, r4
	vextracti.f r4, 11(vr0)
	vmmov mr0, r5
	addli r5, zero, 1024
	vor.u.mh vr8{mr0}, r3, vr8
	exp.f.rn r3, r4
	vextracti.f r4, 12(vr0)
	vmmov mr0, r5
	addli r5, zero, 2048
	vor.u.mh vr8{mr0}, r2, vr8
	exp.f.rn r2, r4
	vextracti.f r4, 13(vr0)
	vmmov mr0, r5
	addli r5, zero, 4096
	vor.u.mh vr8{mr0}, r3, vr8
	exp.f.rn r3, r4
	vextracti.f r4, 14(vr0)
	vmmov mr0, r5
	vextracti.f r5, 0(vr2)
	vor.u.mh vr8{mr0}, r2, vr8
	exp.f.rn r2, r4
	vextracti.f r4, 15(vr0)
	vmmov mr0, r6
	lui r6, 8
	vor.u.mh vr8{mr2}, r3, vr8
	exp.f.rn r3, r4
	exp.f.rn r4, r5
	vextracti.f r5, 1(vr2)
	vmmov mr2, r6
	addli r6, zero, 8192
	vor.u.mh vr8{mr0}, r2, vr8
	exp.f.rn r2, r5
	vextracti.f r5, 2(vr2)
	vor.u.mh vr8{mr2}, r3, vr8
	addli r3, zero, 1
	vmmov mr0, r3
	exp.f.rn r3, r5
	addli r5, zero, 2
	vor.u.mh vr6{mr0}, r4, vr6
	vextracti.f r4, 3(vr2)
	vmmov mr0, r5
	addli r5, zero, 4
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r4
	vextracti.f r4, 4(vr2)
	vmmov mr0, r5
	addli r5, zero, 8
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r4
	vextracti.f r4, 5(vr2)
	vmmov mr0, r5
	addli r5, zero, 16
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r4
	vextracti.f r4, 6(vr2)
	vmmov mr0, r5
	addli r5, zero, 32
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r4
	vextracti.f r4, 7(vr2)
	vmmov mr0, r5
	addli r5, zero, 64
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r4
	vextracti.f r4, 8(vr2)
	vmmov mr0, r5
	addli r5, zero, 256
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r4
	vextracti.f r4, 9(vr2)
	vmmov mr0, r5
	addli r5, zero, 512
	vor.u.mh vr6{mr3}, r2, vr6
	exp.f.rn r2, r4
	vextracti.f r4, 10(vr2)
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r4
	vextracti.f r4, 11(vr2)
	vmmov mr0, r5
	addli r5, zero, 1024
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r4
	vextracti.f r4, 12(vr2)
	vmmov mr0, r5
	addli r5, zero, 2048
	vmmov mr3, r5
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	addli r5, r30, -1216
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r4
	vextracti.f r4, 13(vr2)
	vor.u.mh vr6{mr3}, r2, vr6
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	vload_mask16.mz vr0{mr1}, 0(r5)         # 64-byte Folded Reload
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	exp.f.rn r2, r4
	addli r5, zero, 4096
	vextracti.f r4, 14(vr2)
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr9{mr1}, r1, vr0
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vmmov mr0, r5
	vextracti.f r5, 0(vr9)
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r4
	vextracti.f r4, 15(vr2)
	vmmov mr0, r6
	lui r6, 4
	vadd.s.mz vr2{mr1}, zero, vr10
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r4
	vmmov mr0, r6
	exp.f.rn r4, r5
	vextracti.f r5, 1(vr9)
	vor.u.mh vr6{mr0}, r3, vr6
	exp.f.rn r3, r5
	vextracti.f r5, 2(vr9)
	vor.u.mh vr6{mr2}, r2, vr6
	addli r2, zero, 1
	vmmov mr2, r2
	exp.f.rn r2, r5
	addli r5, zero, 2
	vor.u.mh vr4{mr2}, r4, vr4
	vextracti.f r4, 3(vr9)
	vmmov mr2, r5
	addli r5, zero, 4
	vor.u.mh vr4{mr2}, r3, vr4
	exp.f.rn r3, r4
	vextracti.f r4, 4(vr9)
	vmmov mr2, r5
	addli r5, zero, 8
	vor.u.mh vr4{mr2}, r2, vr4
	exp.f.rn r2, r4
	vextracti.f r4, 5(vr9)
	vmmov mr2, r5
	addli r5, zero, 16
	vor.u.mh vr4{mr2}, r3, vr4
	exp.f.rn r3, r4
	vextracti.f r4, 6(vr9)
	vmmov mr2, r5
	addli r5, zero, 32
	vor.u.mh vr4{mr2}, r2, vr4
	exp.f.rn r2, r4
	vextracti.f r4, 7(vr9)
	vmmov mr2, r5
	addli r5, zero, 64
	vor.u.mh vr4{mr2}, r3, vr4
	exp.f.rn r3, r4
	vextracti.f r4, 8(vr9)
	vmmov mr2, r5
	addli r5, zero, 128
	vor.u.mh vr4{mr2}, r2, vr4
	exp.f.rn r2, r4
	vextracti.f r4, 9(vr9)
	vmmov mr2, r5
	addli r5, zero, 256
	vor.u.mh vr4{mr2}, r3, vr4
	exp.f.rn r3, r4
	vextracti.f r4, 10(vr9)
	vmmov mr2, r5
	addli r5, zero, 512
	vor.u.mh vr4{mr2}, r2, vr4
	exp.f.rn r2, r4
	vextracti.f r4, 11(vr9)
	vmmov mr2, r5
	addli r5, zero, 1024
	vmmov mr0, r5
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	addli r5, r30, -1152
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	vor.u.mh vr4{mr2}, r3, vr4
	exp.f.rn r3, r4
	vextracti.f r4, 12(vr9)
	vor.u.mh vr4{mr0}, r2, vr4
	exp.f.rn r2, r4
	vextracti.f r4, 13(vr9)
	vor.u.mh vr4{mr3}, r3, vr4
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	vload_mask16.mz vr0{mr1}, 0(r5)         # 64-byte Folded Reload
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	exp.f.rn r3, r4
	vextracti.f r4, 14(vr9)
	addli r5, zero, 8192
	.loc	1 42 18                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:42:18
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 43 25                         # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:43:25
	addli r1, zero, 4096
	vmmov mr2, r5
	lui r5, 4
	vmmov mr0, r1
	exp.f.rn r1, r4
	vextracti.f r4, 0(vr0)
	vor.u.mh vr4{mr0}, r2, vr4
	vextracti.f r2, 15(vr9)
	vmmov mr0, mr2
	vmmov mr2, r5
	lui r5, 8
	vadd.f.mz.rn vr9{mr1}, vr1, vr3
	exp.f.rn r2, r2
	vor.u.mh vr4{mr0}, r3, vr4
	exp.f.rn r3, r4
	vextracti.f r4, 1(vr0)
	vmmov mr0, r5
	vadd.f.mz.rn vr9{mr1}, vr9, vr5
	vor.u.mh vr4{mr2}, r1, vr4
	exp.f.rn r1, r4
	vextracti.f r4, 2(vr0)
	vadd.f.mz.rn vr9{mr1}, vr9, vr7
	vor.u.mh vr4{mr0}, r2, vr4
	addli r2, zero, 1
	vmmov mr3, r2
	exp.f.rn r2, r4
	addli r4, zero, 2
	vor.u.mh vr2{mr3}, r3, vr2
	vextracti.f r3, 3(vr0)
	vmmov mr3, r4
	addli r4, zero, 4
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vextracti.f r3, 4(vr0)
	vmmov mr3, r4
	addli r4, zero, 8
	vor.u.mh vr2{mr3}, r2, vr2
	exp.f.rn r2, r3
	vextracti.f r3, 5(vr0)
	vmmov mr3, r4
	addli r4, zero, 16
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vextracti.f r3, 6(vr0)
	vmmov mr3, r4
	addli r4, zero, 32
	vor.u.mh vr2{mr3}, r2, vr2
	exp.f.rn r2, r3
	vextracti.f r3, 7(vr0)
	vmmov mr3, r4
	addli r4, zero, 64
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vextracti.f r3, 8(vr0)
	vmmov mr3, r4
	addli r4, zero, 128
	vor.u.mh vr2{mr3}, r2, vr2
	exp.f.rn r2, r3
	vextracti.f r3, 9(vr0)
	vmmov mr3, r4
	addli r4, zero, 256
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vextracti.f r3, 10(vr0)
	vmmov mr3, r4
	addli r4, zero, 512
	vor.u.mh vr2{mr3}, r2, vr2
	exp.f.rn r2, r3
	vextracti.f r3, 11(vr0)
	vmmov mr3, r4
	addli r4, zero, 1024
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vextracti.f r3, 12(vr0)
	vmmov mr3, r4
	addli r4, zero, 2048
	vor.u.mh vr2{mr3}, r2, vr2
	exp.f.rn r2, r3
	vextracti.f r3, 13(vr0)
	vmmov mr3, r4
	addli r4, zero, 4096
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vextracti.f r3, 14(vr0)
	vmmov mr3, r4
	addli r4, zero, 8192
	vor.u.mh vr2{mr3}, r2, vr2
	exp.f.rn r2, r3
	vextracti.f r3, 15(vr0)
	vmmov mr3, r4
	vadd.f.mz.rn vr0{mr1}, vr9, vr8
	vor.u.mh vr2{mr3}, r1, vr2
	exp.f.rn r1, r3
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
	vor.u.mh vr2{mr2}, r2, vr2
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
	vor.u.mh vr2{mr0}, r1, vr2
	vadd.f.mz.rn vr0{mr1}, vr0, vr2
	vextracti.f r1, 0(vr0)
	vextracti.f r2, 1(vr0)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr0)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr0)
	add.f.rn r1, r2, r1
	loadli.w r2,  -1832(r30)                # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	bneq r15, zero, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 25 is_stmt 0                # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:0:25
	loadli.w r4,  -1820(r30)                # 4-byte Folded Reload
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
	.loc	1 49 4 epilogue_begin is_stmt 1 # cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py:49:4
	addli sp, r30, -1920
	addli sp, sp, 1920
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
	.long	1984                            # 0x7c0
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
.asciz	"cuj3wtax4ky4rytcdndsxk6sj4z4gx4xxmxed7xqpmsye5cqboah.py" # string offset=7
.Linfo_string2:
.asciz	"/tmp/b2_stages_inductor/uj"    # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
