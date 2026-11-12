	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/ru" "cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py"
	.loc	1 22 0                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1792
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1728
	lui r6, 260096
	load_param_i r15, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r14,  52(r30)
	loadli.w r4,  48(r30)
	loadli.w r13,  56(r30)
	add.s r5, r3, r2
	mul.s r4, r14, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -720(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r4, r4, r13
	mfence { lm, sm, gm }
	ori r5, r5, 4095
	storeli.w r5, -700(r30)                 # 4-byte Folded Spill
	csr_set csr3, r5
	sync_group
	storeli.w r4, -664(r30)                 # 4-byte Folded Spill
	ble.s r4, r15, .LBB0_459
# %bb.1:                                # %.lr.ph
	addli r17, zero, 64
	loadli.w r10,  -720(r30)                # 4-byte Folded Reload
	addli r16, zero, 1
	load.d r[4:5], 24(r30)
	load.d r[6:7], 16(r30)
	load.d r[8:9], 8(r30)
	vxor.u.mz vr0{mr1}, vr0, vr0
	div.s r11, r1, r17
	addli r12, r10, 256
	addli r10, r10, 512
	storeli.w r10, -728(r30)                # 4-byte Folded Spill
	storeli.w r12, -724(r30)                # 4-byte Folded Spill
	slli r10, r11, 6
	storeli.w r11, -668(r30)                # 4-byte Folded Spill
	load_param_i r11, 1
	sub.s r10, r1, r10
	storeli.w r11, -672(r30)                # 4-byte Folded Spill
	andi r1, r1, 63
	slli r11, r10, 5
	lui r10, 1048575
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	ori r10, r10, 3840
	storeli.w r11, -732(r30)                # 4-byte Folded Spill
	sext_int2long r[11:12], r11
	and r3, r3, r10
	sll.d r[11:12], r[11:12], r16
	add.s r3, r3, r2
	lui r2, 522239
	add.ul r[6:7], r[6:7], r[11:12]
	add.ul r[4:5], r[4:5], r[11:12]
	add.ul r[8:9], r[8:9], r[11:12]
	addli r1, r3, 256
	store.d r[4:5], -760(r30)               # 8-byte Folded Spill
	store.d r[6:7], -752(r30)               # 8-byte Folded Spill
	storeli.w r3, -692(r30)                 # 4-byte Folded Spill
	addli r4, r30, -384
	addli r5, r30, -320
	addli r7, r30, -128
	store.d r[8:9], -744(r30)               # 8-byte Folded Spill
	storeli.w r1, -696(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r1, r1, 4095
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r25, r1, 4095
	ori r1, r2, 4095
	lui r2, 255180
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
	lui r1, 256682
	storeli.w r25, -520(r30)                # 4-byte Folded Spill
	ori r1, r1, 2731
	storeli.w r1, -768(r30)                 # 4-byte Folded Spill
	ori r1, r2, 3277
	lui r2, 254244
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	lui r1, 254634
	ori r1, r1, 2731
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2341
	lui r2, 253132
	storeli.w r1, -780(r30)                 # 4-byte Folded Spill
	lui r1, 253496
	ori r1, r1, 3641
	storeli.w r1, -784(r30)                 # 4-byte Folded Spill
	ori r1, r2, 3277
	lui r2, 252586
	storeli.w r1, -788(r30)                 # 4-byte Folded Spill
	lui r1, 252834
	ori r1, r1, 3724
	storeli.w r1, -792(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2731
	lui r2, 252196
	storeli.w r1, -796(r30)                 # 4-byte Folded Spill
	lui r1, 252376
	ori r1, r1, 2521
	storeli.w r1, -800(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2341
	lui r2, 239665
	storeli.w r1, -804(r30)                 # 4-byte Folded Spill
	lui r1, 252040
	ori r1, r1, 2185
	storeli.w r1, -808(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r1, -812(r30)                 # 4-byte Folded Spill
	addli r1, r3, 512
	addli r3, zero, 2047
	storeli.w r1, -816(r30)                 # 4-byte Folded Spill
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 93 29 prologue_end            # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:29
	load.d r[2:3], 32(r30)
	load.d r[4:5], -688(r30)                # 8-byte Folded Reload
	.loc	1 93 53 is_stmt 0               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r1, 983040
	or r1, r17, r1
	.loc	1 93 29                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:29
	add.ul r[2:3], r[2:3], r[4:5]
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	addli r4, r30, -64
	addli r5, r30, -320
	s_lm2gm r1, r4, 0(r[2:3])
	addli r3, zero, 2047
	addli r4, r30, -384
	mfence { lm }
	loadli.w r13,  56(r30)
	loadli.w r14,  52(r30)
	loadli.w r15,  -676(r30)                # 4-byte Folded Reload
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	loadli.w r1,  -672(r30)                 # 4-byte Folded Reload
	add.s r15, r15, r1
	loadli.w r1,  -664(r30)                 # 4-byte Folded Reload
	blt.s r15, r1, .LBB0_4
	j .LBB0_459
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_297 Depth 2
	div.s r1, r15, r13
	.loc	1 28 23 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:28:23
	loadli.w r2,  -668(r30)                 # 4-byte Folded Reload
	div.s r1, r1, r14
	add.s r1, r1, r2
	blt.s r3, r1, .LBB0_3
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	addli r2, zero, 0
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	add.s r3, r4, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r17, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 42 41 is_stmt 0               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:41
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	.loc	1 42 46                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:46
	slli r1, r1, 11
	.loc	1 42 34                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:34
	addli r3, zero, 1
	storeli.w r15, -676(r30)                # 4-byte Folded Spill
	.loc	1 42 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[8:9], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	lui r1, 983040
	or r1, r17, r1
	store.d r[8:9], -688(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:34
	add.ul r[2:3], r[2:3], r[8:9]
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	addli r1, zero, 0
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	add.s r2, r5, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r17, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	lui r1, 983040
	load.d r[2:3], -744(r30)                # 8-byte Folded Reload
	or r1, r17, r1
	l_gm2lm r1, r5, 0(r[2:3])
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	mfence { lm }
	vload_mask16.mz vr1{mr1}, -384(r30)
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	vload_mask16.mz vr2{mr1}, -320(r30)
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	vmerge_l.hf vr3, vr0, vr1
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	vmerge_l.hf vr4, vr0, vr2
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	vmerge_h.hf vr1, vr0, vr1
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	vmerge_h.hf vr2, vr0, vr2
	.loc	1 48 22                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:48:22
	vadd.f.mz.rn vr3{mr1}, vr3, vr4
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	vstore_mask16.mz vr3{mr1}, -256(r30)
	vstore_mask16.mz vr1{mr1}, -192(r30)
	mfence { lm }
	loadli.w r16,  -256(r30)
	loadli.w r4,  -252(r30)
	loadli.w r1,  -248(r30)
	loadli.w r15,  -244(r30)
	loadli.w r12,  -240(r30)
	loadli.w r14,  -236(r30)
	loadli.w r8,  -232(r30)
	loadli.w r22,  -228(r30)
	loadli.w r21,  -224(r30)
	loadli.w r20,  -220(r30)
	loadli.w r11,  -216(r30)
	loadli.w r19,  -212(r30)
	loadli.w r3,  -208(r30)
	loadli.w r6,  -204(r30)
	loadli.w r13,  -200(r30)
	loadli.w r2,  -196(r30)
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -192(r30)
	loadli.w r2,  -188(r30)
	loadli.w r2,  -184(r30)
	loadli.w r2,  -180(r30)
	loadli.w r2,  -176(r30)
	loadli.w r2,  -172(r30)
	loadli.w r2,  -168(r30)
	loadli.w r2,  -164(r30)
	loadli.w r2,  -160(r30)
	loadli.w r2,  -156(r30)
	loadli.w r2,  -152(r30)
	loadli.w r2,  -148(r30)
	loadli.w r2,  -144(r30)
	loadli.w r2,  -140(r30)
	loadli.w r2,  -136(r30)
	loadli.w r2,  -132(r30)
	addli r2, zero, 0
.LBB0_10:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 71 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	add.s r5, r7, r2
	addli r2, r2, 4
	store.h zero, 0(r5)
	store.h zero, 2(r5)
	mfence { lm }
	bneq r2, r17, .LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	lui r2, 983040
	load.d r[9:10], -752(r30)               # 8-byte Folded Reload
	or r2, r17, r2
	l_gm2lm r2, r7, 0(r[9:10])
	addli r2, zero, 0
	addli r7, r30, -64
.LBB0_12:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	add.s r5, r7, r2
	addli r2, r2, 4
	store.h zero, 0(r5)
	store.h zero, 2(r5)
	mfence { lm }
	bneq r2, r17, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	and r5, r16, r25
	lui r7, 522240
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	lui r2, 983040
	load.d r[9:10], -760(r30)               # 8-byte Folded Reload
	addli r18, r30, -64
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r7, r7, r5
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	or r2, r17, r2
	l_gm2lm r2, r18, 0(r[9:10])
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	bneq r7, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r16, -588(r30)                # 4-byte Folded Spill
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r2, 1024
	or r2, r16, r2
	storeli.w r2, -588(r30)                 # 4-byte Folded Spill
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	and r9, r4, r25
	lui r2, 522240
	setlt.u r2, r2, r9
	bneq r2, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r4, -592(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r2, 1024
	or r2, r4, r2
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	and r7, r1, r25
	lui r2, 522240
	setlt.u r2, r2, r7
	bneq r2, zero, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r2, 1024
	or r2, r1, r2
	storeli.w r2, -576(r30)                 # 4-byte Folded Spill
.LBB0_22:                               #   in Loop: Header=BB0_4 Depth=1
	and r2, r15, r25
	lui r10, 522240
	setlt.u r17, r10, r2
	bneq r17, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r15, -580(r30)                # 4-byte Folded Spill
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r15, r10
	storeli.w r10, -580(r30)                # 4-byte Folded Spill
.LBB0_25:                               #   in Loop: Header=BB0_4 Depth=1
	and r28, r12, r25
	lui r10, 522240
	setlt.u r17, r10, r28
	bneq r17, zero, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r12, -584(r30)                # 4-byte Folded Spill
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r12, r10
	storeli.w r10, -584(r30)                # 4-byte Folded Spill
.LBB0_28:                               #   in Loop: Header=BB0_4 Depth=1
	and r27, r14, r25
	lui r10, 522240
	setlt.u r17, r10, r27
	bneq r17, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r14, -572(r30)                # 4-byte Folded Spill
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r14, r10
	storeli.w r10, -572(r30)                # 4-byte Folded Spill
.LBB0_31:                               #   in Loop: Header=BB0_4 Depth=1
	and r26, r8, r25
	lui r10, 522240
	setlt.u r17, r10, r26
	bneq r17, zero, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r8, -568(r30)                 # 4-byte Folded Spill
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r8, r10
	storeli.w r10, -568(r30)                # 4-byte Folded Spill
.LBB0_34:                               #   in Loop: Header=BB0_4 Depth=1
	and r25, r22, r25
	lui r10, 522240
	setlt.u r17, r10, r25
	bneq r17, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r22, -564(r30)                # 4-byte Folded Spill
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r22, r10
	storeli.w r10, -564(r30)                # 4-byte Folded Spill
.LBB0_37:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	and r24, r21, r10
	lui r10, 522240
	setlt.u r17, r10, r24
	bneq r17, zero, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r21, -560(r30)                # 4-byte Folded Spill
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r21, r10
	storeli.w r10, -560(r30)                # 4-byte Folded Spill
.LBB0_40:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r22, -616(r30)                # 4-byte Folded Spill
	and r23, r20, r10
	lui r10, 522240
	setlt.u r17, r10, r23
	bneq r17, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r20, -556(r30)                # 4-byte Folded Spill
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r20, r10
	storeli.w r10, -556(r30)                # 4-byte Folded Spill
.LBB0_43:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r21, -612(r30)                # 4-byte Folded Spill
	and r22, r11, r10
	lui r10, 522240
	setlt.u r17, r10, r22
	bneq r17, zero, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r11, -552(r30)                # 4-byte Folded Spill
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r11, r10
	storeli.w r10, -552(r30)                # 4-byte Folded Spill
.LBB0_46:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r11, -604(r30)                # 4-byte Folded Spill
	lui r11, 1048560
	storeli.w r20, -608(r30)                # 4-byte Folded Spill
	and r21, r19, r10
	lui r10, 522240
	setlt.u r17, r10, r21
	bneq r17, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r19, -548(r30)                # 4-byte Folded Spill
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r19, r10
	storeli.w r10, -548(r30)                # 4-byte Folded Spill
.LBB0_49:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r19, -600(r30)                # 4-byte Folded Spill
	and r20, r3, r10
	lui r10, 522240
	setlt.u r17, r10, r20
	bneq r17, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r3, -544(r30)                 # 4-byte Folded Spill
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r3, r10
	storeli.w r10, -544(r30)                # 4-byte Folded Spill
.LBB0_52:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r3, -596(r30)                 # 4-byte Folded Spill
	and r19, r6, r10
	lui r10, 522240
	setlt.u r17, r10, r19
	bneq r17, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r6, -540(r30)                 # 4-byte Folded Spill
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r6, r10
	storeli.w r10, -540(r30)                # 4-byte Folded Spill
.LBB0_55:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	addli r3, r6, 0
	and r18, r13, r10
	lui r10, 522240
	setlt.u r17, r10, r18
	bneq r17, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	addli r6, r13, 0
	storeli.w r13, -536(r30)                # 4-byte Folded Spill
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	addli r6, r13, 0
	or r10, r13, r10
	storeli.w r10, -536(r30)                # 4-byte Folded Spill
.LBB0_58:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	loadli.w r13,  -528(r30)                # 4-byte Folded Reload
	and r17, r13, r10
	lui r10, 522240
	setlt.u r10, r10, r17
	bneq r10, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r13, -532(r30)                # 4-byte Folded Spill
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r13, r10
	storeli.w r10, -532(r30)                # 4-byte Folded Spill
.LBB0_61:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -516(r30)                # 4-byte Folded Reload
	addli r13, r6, 0
	setlt.u r5, r10, r5
	bneq r5, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r5, r16, 16
	loadli.w r10,  -524(r30)                # 4-byte Folded Reload
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r10
	and r5, r5, r11
	storeli.w r5, -588(r30)                 # 4-byte Folded Spill
.LBB0_63:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r5,  -516(r30)                 # 4-byte Folded Reload
	addli r6, r3, 0
	setlt.u r5, r5, r9
	bneq r5, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	loadli.w r5,  -524(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r5
	and r4, r4, r11
	storeli.w r4, -592(r30)                 # 4-byte Folded Spill
.LBB0_65:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r4,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r4, r4, r7
	bneq r4, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r4, r1, 16
	andi r4, r4, 1
	add.s r1, r1, r4
	loadli.w r4,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r4
	and r1, r1, r11
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
.LBB0_67:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -528(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r2
	bneq r1, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r15, 16
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -580(r30)                 # 4-byte Folded Spill
.LBB0_69:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r28
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r12, 16
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
.LBB0_71:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r27
	bneq r1, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r14, 16
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -572(r30)                 # 4-byte Folded Spill
.LBB0_73:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r26
	bneq r1, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r8, 16
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -568(r30)                 # 4-byte Folded Spill
.LBB0_75:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r25
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -616(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -564(r30)                 # 4-byte Folded Spill
.LBB0_77:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r24
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -612(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -560(r30)                 # 4-byte Folded Spill
.LBB0_79:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r23
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -608(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -556(r30)                 # 4-byte Folded Spill
.LBB0_81:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r3, r22
	bneq r1, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
.LBB0_83:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r3, r21
	bneq r1, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -600(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r11
	storeli.w r1, -548(r30)                 # 4-byte Folded Spill
.LBB0_85:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r3, r20
	lui r4, 1048560
	bneq r1, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -596(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	and r1, r1, r4
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
.LBB0_87:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r3, r19
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_93
# %bb.88:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r3, r18
	beq r1, zero, .LBB0_94
.LBB0_89:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r3, r17
	bneq r1, zero, .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r2
	and r1, r1, r4
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
.LBB0_91:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 42 51 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	load.hu r3, -320(r30)
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r17, zero, 1
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
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r17
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	bfloat2float.rn r3, r3
	bfloat2float.rn r2, r2
	bfloat2float.rn r1, r1
	vor.u.mh vr1{mr2}, r3, vr1
	bfloat2float.rn r3, r4
	addli r4, zero, 2
	vmmov mr3, r4
	addli r4, zero, 4
	vor.u.mh vr1{mr3}, r3, vr1
	bfloat2float.rn r3, r5
	vmmov mr0, r4
	addli r4, zero, 8
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
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
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
	.loc	1 48 22                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:48:22
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	vstore_mask16.mz vr1{mr1}, -512(r30)
	mfence { lm }
	loadli.w r14,  -512(r30)
	loadli.w r8,  -508(r30)
	loadli.w r12,  -504(r30)
	loadli.w r25,  -500(r30)
	loadli.w r15,  -496(r30)
	loadli.w r16,  -492(r30)
	loadli.w r10,  -488(r30)
	loadli.w r6,  -484(r30)
	loadli.w r4,  -480(r30)
	loadli.w r28,  -476(r30)
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	loadli.w r21,  -472(r30)
	loadli.w r26,  -468(r30)
	loadli.w r13,  -464(r30)
	loadli.w r11,  -460(r30)
	loadli.w r27,  -456(r30)
	loadli.w r22,  -452(r30)
	and r17, r14, r1
	lui r1, 522240
	setlt.u r1, r1, r17
	bneq r1, zero, .LBB0_95
# %bb.92:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r14, -608(r30)                # 4-byte Folded Spill
	j .LBB0_96
.LBB0_93:                               #   in Loop: Header=BB0_4 Depth=1
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r2
	and r1, r1, r4
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r3, r18
	bneq r1, zero, .LBB0_89
.LBB0_94:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r2
	and r1, r1, r4
	storeli.w r1, -536(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r3, r17
	beq r1, zero, .LBB0_90
	j .LBB0_91
.LBB0_95:                               #   in Loop: Header=BB0_4 Depth=1
	lui r1, 1024
	or r1, r14, r1
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
.LBB0_96:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r3, r8, r1
	lui r1, 522240
	setlt.u r1, r1, r3
	bneq r1, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r8, -612(r30)                 # 4-byte Folded Spill
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r8, r1
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
.LBB0_99:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r2, r12, r1
	lui r1, 522240
	setlt.u r1, r1, r2
	bneq r1, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r12, -604(r30)                # 4-byte Folded Spill
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r12, r1
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
.LBB0_102:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r7, r25, r1
	lui r1, 522240
	setlt.u r1, r1, r7
	bneq r1, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r25, -632(r30)                # 4-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r25, r1
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
.LBB0_105:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r5, r15, r1
	lui r1, 522240
	setlt.u r1, r1, r5
	bneq r1, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r15, -636(r30)                # 4-byte Folded Spill
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r15, r1
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
.LBB0_108:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r19, r16, r1
	lui r1, 522240
	setlt.u r1, r1, r19
	bneq r1, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r16, -600(r30)                # 4-byte Folded Spill
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r16, r1
	storeli.w r1, -600(r30)                 # 4-byte Folded Spill
.LBB0_111:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r9, r10, r1
	lui r1, 522240
	setlt.u r1, r1, r9
	bneq r1, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r10, -628(r30)                # 4-byte Folded Spill
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r10, r1
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
.LBB0_114:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	and r23, r6, r1
	lui r1, 522240
	setlt.u r1, r1, r23
	bneq r1, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r6, -596(r30)                 # 4-byte Folded Spill
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r6, r1
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
.LBB0_117:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	storeli.w r6, -712(r30)                 # 4-byte Folded Spill
	and r18, r4, r1
	lui r1, 522240
	setlt.u r1, r1, r18
	bneq r1, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r4, -528(r30)                 # 4-byte Folded Spill
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r1, 1024
	or r1, r4, r1
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
.LBB0_120:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	storeli.w r28, -704(r30)                # 4-byte Folded Spill
	storeli.w r4, -708(r30)                 # 4-byte Folded Spill
	and r6, r28, r1
	lui r1, 522240
	setlt.u r1, r1, r6
	beq r1, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_4 Depth=1
	lui r1, 1024
	or r28, r28, r1
.LBB0_122:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	storeli.w r21, -660(r30)                # 4-byte Folded Spill
	storeli.w r10, -716(r30)                # 4-byte Folded Spill
	and r4, r21, r1
	lui r1, 522240
	setlt.u r1, r1, r4
	beq r1, zero, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_4 Depth=1
	lui r1, 1024
	or r21, r21, r1
.LBB0_124:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	lui r10, 522240
	lui r24, 1048560
	storeli.w r26, -656(r30)                # 4-byte Folded Spill
	and r1, r26, r1
	setlt.u r10, r10, r1
	beq r10, zero, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_4 Depth=1
	lui r10, 1024
	or r26, r26, r10
.LBB0_126:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r13, -652(r30)                # 4-byte Folded Spill
	and r20, r13, r10
	lui r10, 522240
	setlt.u r10, r10, r20
	bneq r10, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r13, -620(r30)                # 4-byte Folded Spill
	j .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r13, r10
	storeli.w r10, -620(r30)                # 4-byte Folded Spill
.LBB0_129:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r11, -648(r30)                # 4-byte Folded Spill
	and r13, r11, r10
	lui r10, 522240
	setlt.u r10, r10, r13
	bneq r10, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r11, -624(r30)                # 4-byte Folded Spill
	j .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r11, r10
	storeli.w r10, -624(r30)                # 4-byte Folded Spill
.LBB0_132:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	storeli.w r27, -644(r30)                # 4-byte Folded Spill
	and r11, r27, r10
	lui r10, 522240
	setlt.u r10, r10, r11
	bneq r10, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r27, -616(r30)                # 4-byte Folded Spill
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r10, 1024
	or r10, r27, r10
	storeli.w r10, -616(r30)                # 4-byte Folded Spill
.LBB0_135:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -520(r30)                # 4-byte Folded Reload
	lui r27, 522240
	storeli.w r22, -640(r30)                # 4-byte Folded Spill
	and r10, r22, r10
	setlt.u r27, r27, r10
	beq r27, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_4 Depth=1
	lui r27, 1024
	or r22, r22, r27
.LBB0_137:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r27,  -516(r30)                # 4-byte Folded Reload
	setlt.u r17, r27, r17
	bneq r17, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r17, r14, 16
	andi r17, r17, 1
	add.s r14, r14, r17
	loadli.w r17,  -524(r30)                # 4-byte Folded Reload
	add.s r14, r14, r17
	and r14, r14, r24
	storeli.w r14, -608(r30)                # 4-byte Folded Spill
.LBB0_139:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r14,  -516(r30)                # 4-byte Folded Reload
	addli r27, r21, 0
	setlt.u r3, r14, r3
	bneq r3, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	loadli.w r8,  -524(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r8
	and r3, r3, r24
	storeli.w r3, -612(r30)                 # 4-byte Folded Spill
.LBB0_141:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -628(r30)                # 4-byte Folded Reload
	loadli.w r14,  -636(r30)                # 4-byte Folded Reload
	setlt.u r3, r3, r2
	bneq r3, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r3, r12, 16
	loadli.w r8,  -524(r30)                 # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r8
	and r2, r3, r24
	storeli.w r2, -604(r30)                 # 4-byte Folded Spill
.LBB0_143:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -632(r30)                # 4-byte Folded Reload
	setlt.u r3, r3, r7
	bneq r3, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r3, r25, 16
	loadli.w r7,  -524(r30)                 # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r25, r3
	add.s r3, r3, r7
	and r12, r3, r24
.LBB0_145:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r3, r3, r5
	bneq r3, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r3, r15, 16
	loadli.w r5,  -524(r30)                 # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r5
	and r14, r3, r24
.LBB0_147:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -524(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -520(r30)                # 4-byte Folded Reload
	setlt.u r3, r3, r19
	bneq r3, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r3, r16, 16
	andi r3, r3, 1
	add.s r3, r16, r3
	add.s r3, r3, r5
	and r2, r3, r24
	storeli.w r2, -600(r30)                 # 4-byte Folded Spill
.LBB0_149:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r3, r3, r9
	bneq r3, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -716(r30)                 # 4-byte Folded Reload
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r5
	and r17, r2, r24
.LBB0_151:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r23
	bneq r2, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r3,  -712(r30)                 # 4-byte Folded Reload
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r5
	and r2, r2, r24
	storeli.w r2, -596(r30)                 # 4-byte Folded Spill
.LBB0_153:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -624(r30)                # 4-byte Folded Reload
	setlt.u r2, r2, r18
	bneq r2, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r3,  -708(r30)                 # 4-byte Folded Reload
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r5
	and r2, r2, r24
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
.LBB0_155:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	addli r21, r22, 0
	setlt.u r2, r2, r6
	bneq r2, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r3,  -704(r30)                 # 4-byte Folded Reload
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r5
	and r28, r2, r24
.LBB0_157:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r22,  -616(r30)                # 4-byte Folded Reload
	setlt.u r2, r2, r4
	bneq r2, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r3,  -660(r30)                 # 4-byte Folded Reload
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r5
	and r27, r2, r24
.LBB0_159:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	setlt.u r1, r2, r1
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r5
	and r26, r1, r24
.LBB0_161:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -620(r30)                # 4-byte Folded Reload
	lui r3, 1048560
	setlt.u r1, r1, r20
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -652(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r5
	and r24, r1, r3
.LBB0_163:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r2, r13
	beq r1, zero, .LBB0_457
# %bb.164:                              #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r2, r11
	beq r1, zero, .LBB0_458
.LBB0_165:                              #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r2, r10
	bneq r1, zero, .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r5
	and r21, r1, r3
.LBB0_167:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r5,  -588(r30)                 # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r1,  -608(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -592(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -612(r30)                 # 4-byte Folded Reload
	lui r18, 258048
	loadli.w r8,  -576(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -580(r30)                # 4-byte Folded Reload
	loadli.w r15,  -768(r30)                # 4-byte Folded Reload
	lui r19, 256000
	loadli.w r16,  -772(r30)                # 4-byte Folded Reload
	loadli.w r20,  -568(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r5
	sub.f.rn r2, r2, r6
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r4, r2, r18
	mul.f.rn r3, r1, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r2, r2, r2
	mul.f.rn r1, r1, r1
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r5, r3, r5
	add.f.rn r4, r4, r6
	.loc	2 225 21                        # triton_helpers.py:225:21
	loadli.w r3,  -604(r30)                 # 4-byte Folded Reload
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r18
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r3, r3, r8
	sub.f.rn r7, r4, r5
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r4, r3, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r3, r3, r3
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r6, r7, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r7, r7, r7
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r4, r4, r8
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r3, r3, r18
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r6, r5, r6
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r5, r12, r10
	loadli.w r12,  -584(r30)                # 4-byte Folded Reload
	.loc	2 230 38                        # triton_helpers.py:230:38
	add.f.rn r7, r7, r7
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r8, r4, r6
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r4, r5, r18
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r7, r7, r18
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r5, r5, r5
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r9, r8, r15
	.loc	2 229 17 is_stmt 0              # triton_helpers.py:229:17
	add.f.rn r4, r4, r10
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r8, r8, r8
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r5, r5, r18
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r9, r6, r9
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r6, r14, r12
	loadli.w r14,  -572(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r4, r9
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r4, r6, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r6, r6, r6
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r11, r10, r19
	.loc	2 229 17 is_stmt 0              # triton_helpers.py:229:17
	add.f.rn r12, r4, r12
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r4,  -600(r30)                 # 4-byte Folded Reload
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r6, r6, r18
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r4, r4, r14
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r9, r9, r11
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r11, r12, r9
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r12, r4, r18
	mul.f.rn r13, r11, r16
	.loc	2 229 17 is_stmt 0              # triton_helpers.py:229:17
	add.f.rn r12, r12, r14
	add.f.rn r9, r9, r13
	.loc	2 230 49 is_stmt 1              # triton_helpers.py:230:49
	mul.f.rn r13, r1, r18
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r1, r17, r20
	loadli.w r17,  -776(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r9
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r2, r13, r2
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r13, r1, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r1, r1, r1
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r14, r12, r17
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r7, r2, r7
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r13, r13, r20
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r2, 264192
	loadli.w r20,  -564(r30)                # 4-byte Folded Reload
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r1, r1, r18
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r8, r8, r2
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r2,  -596(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r20
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r9, r9, r14
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r3, r3, r7
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r7, r8, r15
	loadli.w r15,  -780(r30)                # 4-byte Folded Reload
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r8, r10, r10
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r10, r2, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r2, r2, r2
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r13, r13, r9
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r7, r3, r7
	.loc	2 230 38 is_stmt 0              # triton_helpers.py:230:38
	lui r3, 265216
	mul.f.rn r8, r8, r3
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r3,  -528(r30)                 # 4-byte Folded Reload
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r10, r10, r20
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r18
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r14, r13, r15
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r5, r5, r7
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r7, r8, r19
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r8, r11, r11
	lui r19, 253952
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r9, r9, r14
	loadli.w r14,  -560(r30)                # 4-byte Folded Reload
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r3, r3, r14
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r5, r5, r7
	.loc	2 230 38 is_stmt 0              # triton_helpers.py:230:38
	lui r7, 266240
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r10, r10, r9
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r7, r8, r7
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r11, r3, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r3, r3, r3
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	add.f.rn r5, r6, r5
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r6, r4, r4
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r8, r10, r19
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r7, r7, r16
	loadli.w r16,  -556(r30)                # 4-byte Folded Reload
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r11, r11, r14
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r4, r28, r16
	loadli.w r14,  -784(r30)                # 4-byte Folded Reload
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r3, r3, r18
	mul.f.rn r6, r6, r18
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r8, r9, r8
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r9, r12, r12
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r5, r5, r7
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r12, r13, r13
	loadli.w r13,  -788(r30)                # 4-byte Folded Reload
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r7, r11, r8
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r11, 266752
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	add.f.rn r5, r6, r5
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r9, r9, r11
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r11, r4, r18
	mul.f.rn r6, r7, r14
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r9, r9, r17
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r11, r11, r16
	loadli.w r16,  -552(r30)                # 4-byte Folded Reload
	add.f.rn r6, r8, r6
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r8, 267264
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r5, r5, r9
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r8, r12, r8
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r9, r27, r16
	sub.f.rn r11, r11, r6
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r1, r5
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r5, r8, r15
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r8, r10, r10
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r10, r9, r18
	loadli.w r15,  -548(r30)                # 4-byte Folded Reload
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r9, r9, r9
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r12, r11, r13
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r5
	.loc	2 230 38 is_stmt 0              # triton_helpers.py:230:38
	lui r5, 267776
	mul.f.rn r5, r8, r5
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r8, r10, r16
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r10, r26, r15
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r6, r6, r12
	loadli.w r12,  -792(r30)                # 4-byte Folded Reload
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r2, r1
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r2, r5, r19
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r5, r7, r7
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r7, r8, r6
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r8, r10, r18
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r2
	.loc	2 230 38 is_stmt 0              # triton_helpers.py:230:38
	lui r2, 268288
	mul.f.rn r2, r5, r2
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r5, r7, r12
	.loc	2 229 17 is_stmt 0              # triton_helpers.py:229:17
	add.f.rn r8, r8, r15
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r7, r7, r7
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	add.f.rn r1, r3, r1
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r3, r4, r4
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r14
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r4, r6, r5
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r5, r11, r11
	loadli.w r14,  -544(r30)                # 4-byte Folded Reload
	loadli.w r11,  -796(r30)                # 4-byte Folded Reload
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r6, r24, r14
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r3, r3, r18
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r1, r1, r2
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r2, r8, r4
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r8, 268544
	mul.f.rn r5, r5, r8
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r8, r6, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r6, r6, r6
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	add.f.rn r1, r3, r1
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r3, r2, r11
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r2, r2, r2
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r5, r5, r13
	loadli.w r13,  -540(r30)                # 4-byte Folded Reload
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r8, r8, r14
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r6, r6, r18
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r3, r4, r3
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r4, r9, r18
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r1, r1, r5
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r5, 268800
	mul.f.rn r5, r7, r5
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r7, r23, r13
	sub.f.rn r8, r8, r3
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r4, r1
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r4, r5, r12
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r5, r10, r10
	loadli.w r12,  -800(r30)                # 4-byte Folded Reload
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r9, r7, r18
	mul.f.rn r10, r8, r12
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r4
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r4, r5, r18
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r5, 269056
	mul.f.rn r2, r2, r5
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r5, r9, r13
	loadli.w r13,  -536(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r10
	loadli.w r10,  -804(r30)                # 4-byte Folded Reload
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r9, r22, r13
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r4, r1
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r4, r8, r8
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r11
	loadli.w r11,  -808(r30)                # 4-byte Folded Reload
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r5, r5, r3
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r8, r9, r18
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r2
	.loc	2 230 38 is_stmt 0              # triton_helpers.py:230:38
	lui r2, 269312
	mul.f.rn r2, r4, r2
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r4, r5, r10
	.loc	2 229 17 is_stmt 0              # triton_helpers.py:229:17
	add.f.rn r8, r8, r13
	.loc	2 230 15 is_stmt 1              # triton_helpers.py:230:15
	add.f.rn r1, r6, r1
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r6, r7, r7
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r7, 269568
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r12
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r3, r3, r4
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r4, r5, r5
	loadli.w r12,  -532(r30)                # 4-byte Folded Reload
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r5, r21, r12
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r6, r6, r18
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r1, r1, r2
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r2, r8, r3
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r4, r4, r7
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r8, r9, r9
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r7, r5, r18
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r6, r1
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r6, r2, r11
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r4, r4, r10
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r2, r2, r2
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r7, r7, r12
	add.f.rn r3, r3, r6
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r6, 269824
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r1, r1, r4
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r4, r8, r18
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r2, r2, r6
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r6, r7, r3
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r4, r1
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r4, r5, r5
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r11
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r5, r6, r6
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r2
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r4, r18
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r4, 270080
	mul.f.rn r4, r5, r4
	lui r5, 251904
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r2, r1
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r2, r6, r5
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r4, r4, r5
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r2, r3, r2
	loadli.w r3,  -720(r30)                 # 4-byte Folded Reload
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r4
	stores.w r2, 0(r3)
	loadli.w r2,  -724(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r1,  -728(r30)                 # 4-byte Folded Reload
	lui r2, 270336
	stores.w r2, 0(r1)
	mfence { lm, sm, gm }
	loadli.w r1,  -700(r30)                 # 4-byte Folded Reload
	csr_set csr3, r1
	sync_group
	loadli.w r2,  -764(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_295
# %bb.168:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 22 is_stmt 0                # triton_helpers.py:0:22
	loadli.w r6,  -816(r30)                 # 4-byte Folded Reload
	addli r13, zero, 0
	loads.w r2, 0(r6)
	loads.w r1, 4(r6)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r2, r1
	storeli.w r2, -848(r30)                 # 4-byte Folded Spill
	slli r2, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r7
	setle.f r5, r7, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r7, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r7
.LBB0_170:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 8(r6)
	storeli.w r3, -868(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r8, r7, r1
	slli r2, r8, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r8
	setle.f r5, r8, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r8, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r8
.LBB0_172:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 12(r6)
	storeli.w r3, -884(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r9, r8, r1
	slli r2, r9, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r9
	setle.f r5, r9, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r9, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r9
.LBB0_174:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 16(r6)
	storeli.w r3, -896(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r9, r1
	slli r2, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r10
	setle.f r5, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r10, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r10
.LBB0_176:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 20(r6)
	storeli.w r3, -912(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r10, r1
	slli r2, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r11
	setle.f r5, r11, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r11, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r11
.LBB0_178:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 24(r6)
	storeli.w r3, -928(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r11, r1
	slli r2, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r12
	setle.f r5, r12, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r12, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_180
# %bb.179:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r12
.LBB0_180:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 28(r6)
	storeli.w r3, -944(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r12, r1
	slli r2, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r14
	setle.f r5, r14, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r14, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r14
.LBB0_182:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 32(r6)
	storeli.w r3, -964(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r15, r14, r1
	slli r2, r15, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r15
	setle.f r5, r15, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r15, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r15
.LBB0_184:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 36(r6)
	storeli.w r3, -980(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r15, r1
	slli r2, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r16
	setle.f r5, r16, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r16, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r16
.LBB0_186:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 40(r6)
	storeli.w r7, -836(r30)                 # 4-byte Folded Spill
	storeli.w r3, -528(r30)                 # 4-byte Folded Spill
	storeli.w r15, -948(r30)                # 4-byte Folded Spill
	storeli.w r14, -932(r30)                # 4-byte Folded Spill
	storeli.w r12, -924(r30)                # 4-byte Folded Spill
	storeli.w r11, -908(r30)                # 4-byte Folded Spill
	storeli.w r10, -888(r30)                # 4-byte Folded Spill
	storeli.w r9, -872(r30)                 # 4-byte Folded Spill
	storeli.w r8, -852(r30)                 # 4-byte Folded Spill
	storeli.w r16, -968(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r16, r1
	slli r2, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r7
	setle.f r5, r7, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r7, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r7
.LBB0_188:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -692(r30)                 # 4-byte Folded Reload
	loads.w r25, 44(r6)
	storeli.w r3, -532(r30)                 # 4-byte Folded Spill
	loads.w r4, 172(r6)
	loads.w r5, 48(r6)
	loads.w r20, 56(r6)
	loads.w r19, 60(r6)
	loads.w r17, 64(r6)
	loads.w r16, 68(r6)
	loads.w r27, 72(r6)
	loads.w r26, 76(r6)
	loads.w r24, 80(r6)
	loads.w r14, 84(r6)
	loads.w r12, 88(r6)
	loads.w r8, 96(r6)
	loads.w r21, 100(r6)
	loads.w r23, 120(r6)
	loads.w r22, 160(r6)
	loads.w r15, 196(r6)
	loads.w r28, 204(r6)
	loads.w r11, 208(r6)
	storeli.w r7, -984(r30)                 # 4-byte Folded Spill
	loads.w r1, 0(r2)
	loads.w r3, 96(r2)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r7, r25
	storeli.w r4, -1516(r30)                # 4-byte Folded Spill
	loads.w r4, 176(r6)
	storeli.w r1, -1204(r30)                # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r3, -1176(r30)                # 4-byte Folded Spill
	loads.w r3, 92(r6)
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r9, r13, r10
	setle.f r7, r10, r13
	storeli.w r4, -1524(r30)                # 4-byte Folded Spill
	loads.w r4, 180(r6)
	storeli.w r1, -1208(r30)                # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r4, -1532(r30)                # 4-byte Folded Spill
	loads.w r4, 184(r6)
	storeli.w r1, -1200(r30)                # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r4, -1468(r30)                # 4-byte Folded Spill
	loads.w r4, 188(r6)
	storeli.w r1, -1188(r30)                # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r4, -1452(r30)                # 4-byte Folded Spill
	loads.w r4, 192(r6)
	storeli.w r1, -1180(r30)                # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r4, -1432(r30)                # 4-byte Folded Spill
	loads.w r4, 200(r6)
	storeli.w r1, -1172(r30)                # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r4, -1424(r30)                # 4-byte Folded Spill
	loads.w r4, 212(r6)
	storeli.w r1, -1164(r30)                # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r4, -1420(r30)                # 4-byte Folded Spill
	loads.w r4, 216(r6)
	storeli.w r1, -1152(r30)                # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r4, -1408(r30)                # 4-byte Folded Spill
	loads.w r4, 220(r6)
	storeli.w r1, -1144(r30)                # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r4, -1400(r30)                # 4-byte Folded Spill
	loads.w r4, 224(r6)
	storeli.w r1, -1292(r30)                # 4-byte Folded Spill
	loads.w r1, 40(r2)
	storeli.w r4, -1392(r30)                # 4-byte Folded Spill
	loads.w r4, 228(r6)
	storeli.w r1, -1284(r30)                # 4-byte Folded Spill
	loads.w r1, 44(r2)
	storeli.w r4, -1364(r30)                # 4-byte Folded Spill
	loads.w r4, 232(r6)
	storeli.w r1, -1280(r30)                # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r4, -1384(r30)                # 4-byte Folded Spill
	loads.w r4, 236(r6)
	storeli.w r1, -1268(r30)                # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r4, -1380(r30)                # 4-byte Folded Spill
	loads.w r4, 240(r6)
	storeli.w r1, -1260(r30)                # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r4, -1372(r30)                # 4-byte Folded Spill
	loads.w r4, 244(r6)
	storeli.w r1, -1252(r30)                # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r4, -1348(r30)                # 4-byte Folded Spill
	loads.w r4, 248(r6)
	storeli.w r1, -1244(r30)                # 4-byte Folded Spill
	loads.w r1, 64(r2)
	.loc	2 226 28                        # triton_helpers.py:226:28
	storeli.w r4, -1320(r30)                # 4-byte Folded Spill
	srli r4, r10, 23
	andi r4, r4, 255
	storeli.w r1, -1236(r30)                # 4-byte Folded Spill
	loads.w r1, 68(r2)
	setlti r4, r4, 255
	storeli.w r1, -1224(r30)                # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r1, -1212(r30)                # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r1, -1264(r30)                # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r1, -1248(r30)                # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -1232(r30)                # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -1216(r30)                # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -1192(r30)                # 4-byte Folded Spill
	slli r1, r10, 9
	seteq r18, r1, r13
	loads.w r1, 100(r2)
	or r4, r4, r18
	storeli.w r1, -1156(r30)                # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -1140(r30)                # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -1124(r30)                # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -1116(r30)                # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -1108(r30)                # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -1096(r30)                # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -1088(r30)                # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -1080(r30)                # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -1068(r30)                # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -1060(r30)                # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -1052(r30)                # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -1040(r30)                # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -1032(r30)                # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -1020(r30)                # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -1012(r30)                # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -1000(r30)                # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -992(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -976(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -956(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -940(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -916(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -900(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -880(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -860(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -844(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -820(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -600(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -592(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -696(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -1360(r30)                # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -1368(r30)                # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -1304(r30)                # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -1300(r30)                # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -1296(r30)                # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -1288(r30)                # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -1276(r30)                # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -1272(r30)                # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -1256(r30)                # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -1240(r30)                # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -1228(r30)                # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -1220(r30)                # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -1196(r30)                # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -1184(r30)                # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -1168(r30)                # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -1160(r30)                # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -1148(r30)                # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -1136(r30)                # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -1132(r30)                # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -1120(r30)                # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -1112(r30)                # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -1104(r30)                # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -1100(r30)                # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -1092(r30)                # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -1084(r30)                # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -1076(r30)                # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -1072(r30)                # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -1064(r30)                # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -1056(r30)                # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -1048(r30)                # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -1044(r30)                # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -1036(r30)                # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -1028(r30)                # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -1024(r30)                # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -1016(r30)                # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -1008(r30)                # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -1004(r30)                # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -996(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -972(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -960(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -952(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -936(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -920(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -904(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -892(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -876(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -864(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -856(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -840(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -832(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -824(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -716(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -712(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -704(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -648(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -644(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -636(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -628(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -624(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -616(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r2, -608(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r6)
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r6)
	storeli.w r2, -1396(r30)                # 4-byte Folded Spill
	loads.w r2, 108(r6)
	storeli.w r2, -1404(r30)                # 4-byte Folded Spill
	loads.w r2, 112(r6)
	storeli.w r2, -1412(r30)                # 4-byte Folded Spill
	loads.w r2, 116(r6)
	storeli.w r2, -1416(r30)                # 4-byte Folded Spill
	loads.w r2, 124(r6)
	storeli.w r2, -1436(r30)                # 4-byte Folded Spill
	loads.w r2, 128(r6)
	storeli.w r2, -1444(r30)                # 4-byte Folded Spill
	loads.w r2, 132(r6)
	storeli.w r2, -1440(r30)                # 4-byte Folded Spill
	loads.w r2, 136(r6)
	storeli.w r2, -1464(r30)                # 4-byte Folded Spill
	loads.w r2, 140(r6)
	storeli.w r2, -1472(r30)                # 4-byte Folded Spill
	loads.w r2, 144(r6)
	storeli.w r2, -1460(r30)                # 4-byte Folded Spill
	loads.w r2, 148(r6)
	storeli.w r2, -1488(r30)                # 4-byte Folded Spill
	loads.w r2, 152(r6)
	storeli.w r2, -1476(r30)                # 4-byte Folded Spill
	loads.w r2, 156(r6)
	storeli.w r2, -1484(r30)                # 4-byte Folded Spill
	loads.w r2, 164(r6)
	storeli.w r2, -1500(r30)                # 4-byte Folded Spill
	loads.w r2, 168(r6)
	loads.w r6, 252(r6)
	storeli.w r6, -1456(r30)                # 4-byte Folded Spill
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r7, r9
	and r4, r6, r4
	addli r6, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r4, zero, .LBB0_190
# %bb.189:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r25, r10
.LBB0_190:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r9, r10, r5
	storeli.w r6, -536(r30)                 # 4-byte Folded Spill
	storeli.w r10, -1128(r30)               # 4-byte Folded Spill
	slli r4, r9, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r13, r9
	setle.f r18, r9, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r9, 23
	seteq r4, r4, r13
	andi r6, r6, 255
	setlti r6, r6, 255
	or r4, r6, r4
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r18, r7
	and r4, r6, r4
	addli r6, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r4, zero, .LBB0_192
# %bb.191:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r5, r9
.LBB0_192:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r9, r1
	storeli.w r6, -540(r30)                 # 4-byte Folded Spill
	slli r4, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r13, r10
	setle.f r7, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r5, r10, 23
	seteq r4, r4, r13
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r5, r7, r6
	and r4, r5, r4
	addli r5, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r4, zero, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r5, r1, r10
.LBB0_194:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r10, r20
	storeli.w r5, -544(r30)                 # 4-byte Folded Spill
	storeli.w r11, -1544(r30)               # 4-byte Folded Spill
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r18
	setle.f r6, r18, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r18, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r20, r18
.LBB0_196:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r18, -1316(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r18, r19
	storeli.w r4, -548(r30)                 # 4-byte Folded Spill
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r18
	setle.f r6, r18, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r18, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r19, r18
.LBB0_198:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r19, r18, r17
	storeli.w r4, -552(r30)                 # 4-byte Folded Spill
	slli r1, r19, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r19
	setle.f r6, r19, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r19, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_200
# %bb.199:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r17, r19
.LBB0_200:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r17, r19, r16
	storeli.w r4, -556(r30)                 # 4-byte Folded Spill
	slli r1, r17, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r17
	setle.f r6, r17, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r17, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r16, r17
.LBB0_202:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r17, r27
	storeli.w r4, -560(r30)                 # 4-byte Folded Spill
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r16
	setle.f r6, r16, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r16, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_204
# %bb.203:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r27, r16
.LBB0_204:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r16, r26
	storeli.w r4, -564(r30)                 # 4-byte Folded Spill
	slli r1, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r20
	setle.f r6, r20, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r20, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_206
# %bb.205:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r26, r20
.LBB0_206:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r20, r24
	storeli.w r4, -568(r30)                 # 4-byte Folded Spill
	addli r27, r23, 0
	slli r1, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r25
	setle.f r6, r25, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r25, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_208
# %bb.207:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r24, r25
.LBB0_208:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r25, r14
	storeli.w r4, -572(r30)                 # 4-byte Folded Spill
	addli r26, r22, 0
	addli r23, r21, 0
	storeli.w r2, -1508(r30)                # 4-byte Folded Spill
	storeli.w r15, -1564(r30)               # 4-byte Folded Spill
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r11
	setle.f r6, r11, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r11, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r14, r11
.LBB0_210:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r11, r12
	storeli.w r4, -1356(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1464(r30)               # 4-byte Folded Reload
	loadli.w r15,  -1416(r30)               # 4-byte Folded Reload
	loadli.w r2,  -1404(r30)                # 4-byte Folded Reload
	loadli.w r22,  -1396(r30)               # 4-byte Folded Reload
	addli r7, r28, 0
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r14
	setle.f r6, r14, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r14, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_212
# %bb.211:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r12, r14
.LBB0_212:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r14, r3
	storeli.w r4, -576(r30)                 # 4-byte Folded Spill
	loadli.w r28,  -1444(r30)               # 4-byte Folded Reload
	loadli.w r21,  -1412(r30)               # 4-byte Folded Reload
	slli r1, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r13, r12
	setle.f r6, r12, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r4, r12, 23
	seteq r1, r1, r13
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r4, r6, r5
	and r1, r4, r1
	addli r4, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_214
# %bb.213:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r3, r12
.LBB0_214:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r12, r8
	storeli.w r4, -1376(r30)                # 4-byte Folded Spill
	slli r1, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r6
	setle.f r5, r6, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r6, 23
	seteq r1, r1, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r8, r6
.LBB0_216:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r8, r6, r23
	storeli.w r3, -580(r30)                 # 4-byte Folded Spill
	slli r1, r8, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r8
	setle.f r5, r8, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r8, 23
	seteq r1, r1, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r23, r8
.LBB0_218:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r23, r8, r22
	storeli.w r3, -1388(r30)                # 4-byte Folded Spill
	slli r1, r23, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r23
	setle.f r5, r23, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r23, 23
	seteq r1, r1, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r22, r23
.LBB0_220:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r22, r23, r2
	storeli.w r3, -1396(r30)                # 4-byte Folded Spill
	slli r1, r22, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r4, r13, r22
	setle.f r5, r22, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r22, 23
	seteq r1, r1, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r2, r22
.LBB0_222:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r5, r22, r21
	storeli.w r3, -1404(r30)                # 4-byte Folded Spill
	slli r1, r5, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r5
	setle.f r4, r5, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r5, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r21, r5
.LBB0_224:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r21, r5, r15
	storeli.w r2, -1412(r30)                # 4-byte Folded Spill
	slli r1, r21, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r21
	setle.f r4, r21, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r21, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r15, r21
.LBB0_226:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r15, r21, r27
	storeli.w r2, -1416(r30)                # 4-byte Folded Spill
	slli r1, r15, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r15
	setle.f r4, r15, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r15, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r27, r15
.LBB0_228:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r11, -1344(r30)               # 4-byte Folded Spill
	loadli.w r11,  -1436(r30)               # 4-byte Folded Reload
	storeli.w r2, -1428(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r27, r15, r11
	slli r1, r27, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r27
	setle.f r4, r27, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r27, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r11, r27
.LBB0_230:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r27, r28
	storeli.w r2, -1436(r30)                # 4-byte Folded Spill
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r11
	setle.f r4, r11, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r28, r11
.LBB0_232:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r12, -1352(r30)               # 4-byte Folded Spill
	loadli.w r12,  -1440(r30)               # 4-byte Folded Reload
	storeli.w r2, -1444(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r28, r11, r12
	slli r1, r28, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r28
	setle.f r4, r28, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r28, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r12, r28
.LBB0_234:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r28, r24
	storeli.w r2, -1448(r30)                # 4-byte Folded Spill
	slli r1, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r12
	setle.f r4, r12, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r12, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r24, r12
.LBB0_236:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r9, -1308(r30)                # 4-byte Folded Spill
	loadli.w r9,  -1472(r30)                # 4-byte Folded Reload
	storeli.w r12, -1440(r30)               # 4-byte Folded Spill
	storeli.w r3, -1464(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r12, r9
	slli r1, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r12
	setle.f r4, r12, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r12, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r9, r12
.LBB0_238:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r24,  -1460(r30)               # 4-byte Folded Reload
	storeli.w r2, -1472(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r9, r12, r24
	slli r1, r9, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r9
	setle.f r4, r9, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r9, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r24, r9
.LBB0_240:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r10, -1312(r30)               # 4-byte Folded Spill
	loadli.w r10,  -1488(r30)               # 4-byte Folded Reload
	storeli.w r9, -1460(r30)                # 4-byte Folded Spill
	storeli.w r3, -1480(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r9, r9, r10
	slli r1, r9, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r9
	setle.f r4, r9, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r9, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r10, r9
.LBB0_242:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -1556(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1476(r30)                # 4-byte Folded Reload
	storeli.w r2, -1488(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r9, r7
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r10
.LBB0_244:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1484(r30)                # 4-byte Folded Reload
	storeli.w r10, -1476(r30)               # 4-byte Folded Spill
	storeli.w r3, -1496(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r10, r7
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	addli r2, r10, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r2
.LBB0_246:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r2, r26
	storeli.w r3, -1504(r30)                # 4-byte Folded Spill
	storeli.w r2, -1484(r30)                # 4-byte Folded Spill
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_248
# %bb.247:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r26, r10
.LBB0_248:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r26,  -1500(r30)               # 4-byte Folded Reload
	storeli.w r10, -1492(r30)               # 4-byte Folded Spill
	storeli.w r3, -1512(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1508(r30)                # 4-byte Folded Reload
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r10, r26
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	addli r2, r10, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r26, r2
.LBB0_250:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r2, r7
	storeli.w r3, -1520(r30)                # 4-byte Folded Spill
	storeli.w r2, -1500(r30)                # 4-byte Folded Spill
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r10
.LBB0_252:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1516(r30)                # 4-byte Folded Reload
	storeli.w r10, -1508(r30)               # 4-byte Folded Spill
	storeli.w r3, -1528(r30)                # 4-byte Folded Spill
	loadli.w r26,  -1564(r30)               # 4-byte Folded Reload
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r10, r7
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	addli r2, r10, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r2
.LBB0_254:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1524(r30)                # 4-byte Folded Reload
	storeli.w r3, -1536(r30)                # 4-byte Folded Spill
	storeli.w r2, -1516(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r2, r7
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_256
# %bb.255:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r10
.LBB0_256:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r17, -1328(r30)               # 4-byte Folded Spill
	loadli.w r17,  -1532(r30)               # 4-byte Folded Reload
	storeli.w r10, -1524(r30)               # 4-byte Folded Spill
	storeli.w r3, -1540(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r10, r17
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r10
	setle.f r4, r10, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r17, r10
.LBB0_258:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1468(r30)                # 4-byte Folded Reload
	storeli.w r2, -1552(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1544(r30)               # 4-byte Folded Reload
	storeli.w r16, -1332(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r17, r10, r7
	slli r1, r17, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r17
	setle.f r4, r17, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r17, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r17
.LBB0_260:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1452(r30)                # 4-byte Folded Reload
	storeli.w r2, -1560(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r17, r7
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r16
	setle.f r4, r16, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r16
.LBB0_262:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r20, -1336(r30)               # 4-byte Folded Spill
	loadli.w r20,  -1432(r30)               # 4-byte Folded Reload
	storeli.w r16, -1548(r30)               # 4-byte Folded Spill
	storeli.w r3, -1568(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r16, r20
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r16
	setle.f r4, r16, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r20, r16
.LBB0_264:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r16, r26
	storeli.w r2, -1572(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1556(r30)                # 4-byte Folded Reload
	slli r1, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r20
	setle.f r4, r20, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r20, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_266
# %bb.265:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r26, r20
.LBB0_266:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r25, -1340(r30)               # 4-byte Folded Spill
	loadli.w r25,  -1424(r30)               # 4-byte Folded Reload
	storeli.w r20, -1564(r30)               # 4-byte Folded Spill
	storeli.w r3, -1584(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r20, r25
	slli r1, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r20
	setle.f r4, r20, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r20, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r25, r20
.LBB0_268:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r20, r7
	storeli.w r2, -1592(r30)                # 4-byte Folded Spill
	slli r1, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r25
	setle.f r4, r25, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r25, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r25
.LBB0_270:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r25, -1580(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r25, r24
	storeli.w r3, -1600(r30)                # 4-byte Folded Spill
	slli r1, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r25
	setle.f r4, r25, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r25, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r24, r25
.LBB0_272:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1420(r30)                # 4-byte Folded Reload
	storeli.w r17, -1544(r30)               # 4-byte Folded Spill
	storeli.w r2, -1608(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r17, r25, r7
	slli r1, r17, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r17
	setle.f r4, r17, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r17, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	addli r2, r17, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r2
.LBB0_274:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r19, -1324(r30)               # 4-byte Folded Spill
	loadli.w r19,  -1408(r30)               # 4-byte Folded Reload
	storeli.w r3, -1616(r30)                # 4-byte Folded Spill
	storeli.w r2, -1596(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r2, r19
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r7
	setle.f r4, r7, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_276
# %bb.275:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r19, r7
.LBB0_276:                              #   in Loop: Header=BB0_4 Depth=1
	addli r19, r18, 0
	loadli.w r18,  -1400(r30)               # 4-byte Folded Reload
	storeli.w r7, -1604(r30)                # 4-byte Folded Spill
	storeli.w r2, -1624(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r7, r18
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r7
	setle.f r4, r7, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	addli r2, r7, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r18, r2
.LBB0_278:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1392(r30)                # 4-byte Folded Reload
	storeli.w r3, -1632(r30)                # 4-byte Folded Spill
	storeli.w r2, -1612(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r2, r7
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r24
	setle.f r4, r24, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_280
# %bb.279:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r24
.LBB0_280:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1364(r30)                # 4-byte Folded Reload
	storeli.w r24, -1620(r30)               # 4-byte Folded Spill
	storeli.w r3, -1640(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r24, r7
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r24
	setle.f r4, r24, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_282
# %bb.281:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r24
.LBB0_282:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r6, -1364(r30)                # 4-byte Folded Spill
	loadli.w r6,  -1384(r30)                # 4-byte Folded Reload
	storeli.w r2, -1648(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r24, r6
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r7
	setle.f r4, r7, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_284
# %bb.283:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r6, r7
.LBB0_284:                              #   in Loop: Header=BB0_4 Depth=1
	addli r26, r14, 0
	loadli.w r14,  -1380(r30)               # 4-byte Folded Reload
	storeli.w r2, -1652(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r4, r7, r14
	slli r1, r4, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r4
	setle.f r6, r4, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r4, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	addli r3, r13, 0
	and r1, r2, r1
	addli r2, r4, 0
	loadli.w r4,  -1456(r30)                # 4-byte Folded Reload
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r2
.LBB0_286:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r17,  -1372(r30)               # 4-byte Folded Reload
	storeli.w r3, -1660(r30)                # 4-byte Folded Spill
	storeli.w r2, -1644(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r2, r17
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r14
	setle.f r6, r14, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	addli r3, r13, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_288
# %bb.287:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r17, r14
.LBB0_288:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -1636(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1348(r30)                # 4-byte Folded Reload
	storeli.w r14, -1656(r30)               # 4-byte Folded Spill
	storeli.w r3, -1672(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r14, r7
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r14
	setle.f r6, r14, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_290
# %bb.289:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r14
.LBB0_290:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1320(r30)                # 4-byte Folded Reload
	storeli.w r2, -1676(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r14, r7
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r13, r18
	setle.f r6, r18, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r18, 23
	seteq r1, r1, r13
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_292
# %bb.291:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r18
.LBB0_292:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r1, r18, r4
	storeli.w r2, -1680(r30)                # 4-byte Folded Spill
	storeli.w r14, -1664(r30)               # 4-byte Folded Spill
	storeli.w r24, -1628(r30)               # 4-byte Folded Spill
	storeli.w r25, -1588(r30)               # 4-byte Folded Spill
	storeli.w r20, -1576(r30)               # 4-byte Folded Spill
	storeli.w r16, -1556(r30)               # 4-byte Folded Spill
	storeli.w r10, -1532(r30)               # 4-byte Folded Spill
	storeli.w r9, -1468(r30)                # 4-byte Folded Spill
	storeli.w r12, -1452(r30)               # 4-byte Folded Spill
	storeli.w r28, -1432(r30)               # 4-byte Folded Spill
	storeli.w r11, -1424(r30)               # 4-byte Folded Spill
	storeli.w r27, -1420(r30)               # 4-byte Folded Spill
	storeli.w r15, -1408(r30)               # 4-byte Folded Spill
	storeli.w r21, -1400(r30)               # 4-byte Folded Spill
	storeli.w r5, -1392(r30)                # 4-byte Folded Spill
	storeli.w r22, -1384(r30)               # 4-byte Folded Spill
	storeli.w r23, -1380(r30)               # 4-byte Folded Spill
	storeli.w r8, -1372(r30)                # 4-byte Folded Spill
	storeli.w r26, -1348(r30)               # 4-byte Folded Spill
	storeli.w r19, -1320(r30)               # 4-byte Folded Spill
	storeli.w r18, -1668(r30)               # 4-byte Folded Spill
	slli r2, r1, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r13, r1
	setle.f r7, r1, r13
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r1, 23
	seteq r2, r2, r13
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r7, r6
	and r2, r3, r2
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r13, r4, r1
.LBB0_294:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -1360(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1368(r30)                # 4-byte Folded Reload
	loadli.w r4,  -1204(r30)                # 4-byte Folded Reload
	loadli.w r10,  -868(r30)                # 4-byte Folded Reload
	loadli.w r19,  -884(r30)                # 4-byte Folded Reload
	loadli.w r5,  -1180(r30)                # 4-byte Folded Reload
	loadli.w r16,  -912(r30)                # 4-byte Folded Reload
	loadli.w r18,  -928(r30)                # 4-byte Folded Reload
	loadli.w r22,  -944(r30)                # 4-byte Folded Reload
	loadli.w r9,  -964(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -980(r30)                # 4-byte Folded Reload
	loadli.w r15,  -848(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	storeli.w r2, -1360(r30)                # 4-byte Folded Spill
	loadli.w r2,  -816(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r1,  -1208(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r1, r4
	mul.f.rn r1, r2, r10
	add.f.rn r6, r4, r1
	loadli.w r1,  -1200(r30)                # 4-byte Folded Reload
	loadli.w r4,  -1188(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r1, r6
	loadli.w r1,  -528(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r19, r3
	add.f.rn r6, r6, r7
	sub.f.rn r21, r4, r6
	loadli.w r4,  -896(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r4, r21
	mul.f.rn r21, r21, r21
	add.f.rn r6, r6, r7
	sub.f.rn r23, r5, r6
	loadli.w r5,  -1172(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r16, r23
	add.f.rn r6, r6, r7
	sub.f.rn r11, r5, r6
	loadli.w r5,  -1164(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r18, r11
	mul.f.rn r11, r11, r11
	add.f.rn r6, r6, r7
	sub.f.rn r24, r5, r6
	loadli.w r5,  -1152(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r22, r24
	add.f.rn r6, r6, r7
	sub.f.rn r26, r5, r6
	loadli.w r5,  -1144(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r9, r26
	add.f.rn r7, r6, r7
	sub.f.rn r6, r5, r7
	loadli.w r5,  -1292(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r25, r6
	mul.f.rn r6, r6, r6
	add.f.rn r7, r7, r8
	sub.f.rn r20, r5, r7
	loadli.w r5,  -1284(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r1, r20
	loadli.w r1,  -532(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r7, r8
	sub.f.rn r7, r5, r8
	loadli.w r5,  -1280(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r1, r7
	loadli.w r1,  -536(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r8, r8, r12
	sub.f.rn r27, r5, r8
	loadli.w r5,  -1268(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r1, r27
	loadli.w r1,  -540(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r12
	sub.f.rn r28, r5, r8
	loadli.w r5,  -1260(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r1, r28
	loadli.w r1,  -544(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r12
	sub.f.rn r5, r5, r8
	mul.f.rn r12, r1, r5
	storeli.w r5, -1152(r30)                # 4-byte Folded Spill
	loadli.w r5,  -1252(r30)                # 4-byte Folded Reload
	loadli.w r1,  -548(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r12
	sub.f.rn r5, r5, r8
	mul.f.rn r12, r1, r5
	storeli.w r5, -1144(r30)                # 4-byte Folded Spill
	loadli.w r5,  -1244(r30)                # 4-byte Folded Reload
	loadli.w r1,  -552(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r12
	sub.f.rn r12, r5, r8
	loadli.w r5,  -1236(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r1, r12
	loadli.w r1,  -556(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r12, r12
	add.f.rn r8, r8, r14
	sub.f.rn r14, r5, r8
	loadli.w r5,  -1224(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r1, r14
	loadli.w r1,  -560(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r14, r14
	add.f.rn r17, r8, r17
	sub.f.rn r8, r5, r17
	mul.f.rn r5, r1, r8
	loadli.w r1,  -564(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r8, r8
	add.f.rn r5, r17, r5
	mul.f.rn r17, r2, r2
	loadli.w r2,  -1212(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r17, r15
	sub.f.rn r2, r2, r5
	mul.f.rn r15, r1, r2
	mul.f.rn r17, r17, r10
	mul.f.rn r1, r3, r3
	loadli.w r3,  -1360(r30)                # 4-byte Folded Reload
	loadli.w r10,  -1304(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r5, r5, r15
	add.f.rn r15, r3, r17
	loadli.w r3,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r3, r1
	loadli.w r3,  -1264(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	add.f.rn r15, r10, r15
	loadli.w r10,  -568(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r19, r1
	loadli.w r19,  -1428(r30)               # 4-byte Folded Reload
	mul.f.rn r17, r10, r3
	loadli.w r10,  -1300(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r1, r15, r1
	loadli.w r15,  -852(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r15, r15, r21
	mul.f.rn r17, r23, r23
	loadli.w r21,  -1404(r30)               # 4-byte Folded Reload
	add.f.rn r1, r10, r1
	loadli.w r10,  -1248(r30)               # 4-byte Folded Reload
	sub.f.rn r10, r10, r5
	mul.f.rn r15, r4, r15
	loadli.w r4,  -572(r30)                 # 4-byte Folded Reload
	mul.f.rn r23, r4, r10
	storeli.w r10, -836(r30)                # 4-byte Folded Spill
	loadli.w r10,  -872(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r15
	loadli.w r4,  -1296(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r10, r17
	loadli.w r10,  -888(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r24, r24
	loadli.w r24,  -1412(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r23
	add.f.rn r1, r4, r1
	loadli.w r4,  -1232(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r10, r11
	loadli.w r10,  -1356(r30)               # 4-byte Folded Reload
	loadli.w r23,  -1416(r30)               # 4-byte Folded Reload
	mul.f.rn r15, r16, r15
	sub.f.rn r4, r4, r5
	mul.f.rn r11, r18, r11
	loadli.w r18,  -1436(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r15
	mul.f.rn r15, r10, r4
	storeli.w r4, -848(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -1288(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -908(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	mul.f.rn r15, r26, r26
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r17
	loadli.w r4,  -1216(r30)                # 4-byte Folded Reload
	sub.f.rn r16, r4, r5
	loadli.w r4,  -1276(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	mul.f.rn r11, r22, r11
	loadli.w r4,  -576(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r4, r16
	loadli.w r4,  -924(r30)                 # 4-byte Folded Reload
	storeli.w r16, -852(r30)                # 4-byte Folded Spill
	loadli.w r16,  -1444(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r15
	loadli.w r4,  -1272(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r20, r20
	add.f.rn r5, r5, r17
	add.f.rn r1, r4, r1
	loadli.w r4,  -1192(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r9, r11
	loadli.w r9,  -1376(r30)                # 4-byte Folded Reload
	sub.f.rn r26, r4, r5
	loadli.w r4,  -932(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r6, r4, r6
	loadli.w r4,  -1256(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r9, r26
	add.f.rn r1, r4, r1
	loadli.w r4,  -1176(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r11
	mul.f.rn r11, r25, r6
	sub.f.rn r6, r4, r5
	loadli.w r4,  -948(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r15
	loadli.w r4,  -580(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r4, r6
	loadli.w r4,  -1240(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -528(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r4, r11
	add.f.rn r5, r5, r15
	loadli.w r4,  -968(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r27, r27
	loadli.w r27,  -1388(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r7
	loadli.w r4,  -1156(r30)                # 4-byte Folded Reload
	sub.f.rn r7, r4, r5
	loadli.w r4,  -1228(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -532(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r4, r11
	mul.f.rn r17, r27, r7
	loadli.w r4,  -984(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r15
	loadli.w r4,  -1220(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r15, r28, r28
	loadli.w r28,  -1396(r30)               # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r4, r11
	loadli.w r4,  -1140(r30)                # 4-byte Folded Reload
	sub.f.rn r20, r4, r5
	loadli.w r4,  -1128(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r15
	loadli.w r4,  -1196(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r28, r20
	add.f.rn r1, r4, r1
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r4, r11
	add.f.rn r5, r5, r15
	loadli.w r4,  -1152(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r4, r4
	loadli.w r4,  -1124(r30)                # 4-byte Folded Reload
	sub.f.rn r25, r4, r5
	add.f.rn r1, r1, r11
	loadli.w r4,  -1308(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r4, r15
	loadli.w r4,  -1184(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r21, r25
	mul.f.rn r11, r4, r11
	loadli.w r4,  -1144(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r4, r4
	add.f.rn r5, r5, r15
	loadli.w r4,  -1312(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r17
	loadli.w r4,  -1116(r30)                # 4-byte Folded Reload
	sub.f.rn r22, r4, r5
	loadli.w r4,  -1168(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -548(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r4, r11
	loadli.w r4,  -1316(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r24, r22
	add.f.rn r1, r1, r11
	mul.f.rn r11, r4, r12
	loadli.w r4,  -1160(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	add.f.rn r1, r4, r1
	loadli.w r4,  -552(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r4, r11
	loadli.w r4,  -1108(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r4, r5
	loadli.w r4,  -1320(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r12
	mul.f.rn r12, r4, r14
	loadli.w r4,  -1148(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r23, r11
	mul.f.rn r11, r11, r11
	add.f.rn r1, r4, r1
	loadli.w r4,  -556(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r4, r12
	add.f.rn r5, r5, r14
	loadli.w r4,  -1324(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r12
	mul.f.rn r12, r4, r8
	loadli.w r4,  -1096(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r4, r5
	loadli.w r4,  -1136(r30)                # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	loadli.w r4,  -560(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r4, r12
	loadli.w r4,  -1328(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r19, r8
	mul.f.rn r8, r8, r8
	mul.f.rn r2, r4, r2
	loadli.w r4,  -1132(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r12
	add.f.rn r5, r5, r14
	add.f.rn r12, r4, r1
	loadli.w r4,  -564(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -1088(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r4, r2
	sub.f.rn r1, r1, r5
	loadli.w r4,  -1332(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	loadli.w r4,  -1120(r30)                # 4-byte Folded Reload
	add.f.rn r2, r12, r2
	mul.f.rn r14, r18, r1
	add.f.rn r12, r4, r2
	loadli.w r2,  -568(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r14
	loadli.w r4,  -1336(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r2, r3
	loadli.w r2,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r2, r2
	loadli.w r2,  -1080(r30)                # 4-byte Folded Reload
	add.f.rn r3, r12, r3
	sub.f.rn r2, r2, r5
	mul.f.rn r12, r4, r14
	loadli.w r4,  -1112(r30)                # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	loadli.w r4,  -572(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r16, r2
	mul.f.rn r2, r2, r2
	mul.f.rn r12, r4, r12
	loadli.w r4,  -848(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r4, r4
	add.f.rn r5, r5, r14
	loadli.w r4,  -1104(r30)                # 4-byte Folded Reload
	add.f.rn r12, r3, r12
	loadli.w r3,  -1340(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r3, r15
	loadli.w r3,  -1068(r30)                # 4-byte Folded Reload
	add.f.rn r12, r4, r12
	loadli.w r4,  -852(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r14, r10, r14
	mul.f.rn r15, r4, r4
	loadli.w r10,  -1448(r30)               # 4-byte Folded Reload
	loadli.w r4,  -1344(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r10, r3
	mul.f.rn r3, r3, r3
	add.f.rn r12, r12, r14
	mul.f.rn r14, r4, r15
	loadli.w r4,  -1100(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r17, r26, r26
	loadli.w r26,  -1464(r30)               # 4-byte Folded Reload
	add.f.rn r15, r4, r12
	loadli.w r4,  -576(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r4, r14
	loadli.w r4,  -1060(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r4, r5
	loadli.w r4,  -1348(r30)                # 4-byte Folded Reload
	add.f.rn r14, r15, r14
	mul.f.rn r17, r4, r17
	loadli.w r4,  -1092(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r26, r12
	mul.f.rn r12, r12, r12
	add.f.rn r14, r4, r14
	loadli.w r4,  -1052(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	mul.f.rn r15, r9, r17
	mul.f.rn r17, r6, r6
	loadli.w r9,  -1472(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r4, r5
	add.f.rn r14, r14, r15
	loadli.w r4,  -1352(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r4, r17
	loadli.w r4,  -1084(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r9, r6
	add.f.rn r14, r4, r14
	loadli.w r4,  -580(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r4, r15
	loadli.w r4,  -1364(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r17, r20, r20
	add.f.rn r14, r14, r15
	mul.f.rn r15, r4, r7
	loadli.w r4,  -1040(r30)                # 4-byte Folded Reload
	sub.f.rn r7, r4, r5
	loadli.w r4,  -1076(r30)                # 4-byte Folded Reload
	add.f.rn r14, r4, r14
	mul.f.rn r15, r27, r15
	loadli.w r27,  -1480(r30)               # 4-byte Folded Reload
	loadli.w r4,  -1372(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r27, r7
	mul.f.rn r7, r7, r7
	add.f.rn r14, r14, r15
	mul.f.rn r15, r4, r17
	loadli.w r4,  -1072(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	mul.f.rn r20, r25, r25
	loadli.w r25,  -1488(r30)               # 4-byte Folded Reload
	add.f.rn r17, r4, r14
	loadli.w r4,  -1032(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r28, r15
	sub.f.rn r14, r4, r5
	loadli.w r4,  -1380(r30)                # 4-byte Folded Reload
	add.f.rn r15, r17, r15
	mul.f.rn r17, r4, r20
	loadli.w r4,  -1064(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r25, r14
	mul.f.rn r14, r14, r14
	add.f.rn r15, r4, r15
	mul.f.rn r17, r21, r17
	mul.f.rn r21, r22, r22
	loadli.w r4,  -1020(r30)                # 4-byte Folded Reload
	loadli.w r22,  -1496(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	add.f.rn r15, r15, r17
	sub.f.rn r20, r4, r5
	loadli.w r4,  -1384(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r4, r21
	loadli.w r4,  -1056(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r22, r20
	add.f.rn r15, r4, r15
	loadli.w r4,  -1392(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r24, r17
	add.f.rn r5, r5, r21
	add.f.rn r15, r15, r17
	mul.f.rn r17, r4, r11
	loadli.w r4,  -1012(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r4, r5
	loadli.w r4,  -1048(r30)                # 4-byte Folded Reload
	add.f.rn r15, r4, r15
	mul.f.rn r17, r23, r17
	loadli.w r23,  -1504(r30)               # 4-byte Folded Reload
	loadli.w r4,  -1400(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r23, r11
	mul.f.rn r8, r4, r8
	loadli.w r4,  -1044(r30)                # 4-byte Folded Reload
	add.f.rn r15, r15, r17
	mul.f.rn r17, r1, r1
	loadli.w r1,  -1000(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r21
	mul.f.rn r8, r19, r8
	loadli.w r19,  -1512(r30)               # 4-byte Folded Reload
	add.f.rn r15, r4, r15
	loadli.w r4,  -1408(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r5
	add.f.rn r8, r15, r8
	mul.f.rn r15, r4, r17
	loadli.w r4,  -1036(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r19, r1
	mul.f.rn r1, r1, r1
	add.f.rn r8, r4, r8
	mul.f.rn r15, r18, r15
	loadli.w r4,  -1420(r30)                # 4-byte Folded Reload
	loadli.w r18,  -1552(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	add.f.rn r8, r8, r15
	mul.f.rn r15, r4, r2
	loadli.w r2,  -992(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1028(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r2, r5
	add.f.rn r8, r4, r8
	mul.f.rn r15, r16, r15
	loadli.w r16,  -1520(r30)               # 4-byte Folded Reload
	loadli.w r4,  -1424(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r16, r2
	mul.f.rn r2, r2, r2
	add.f.rn r8, r8, r15
	mul.f.rn r15, r4, r3
	loadli.w r3,  -1024(r30)                # 4-byte Folded Reload
	loadli.w r4,  -1432(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r12, r4, r12
	loadli.w r4,  -1016(r30)                # 4-byte Folded Reload
	add.f.rn r8, r3, r8
	loadli.w r3,  -976(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r10, r15
	loadli.w r10,  -1528(r30)               # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r12, r26, r12
	add.f.rn r8, r8, r15
	mul.f.rn r15, r6, r6
	mul.f.rn r17, r10, r3
	mul.f.rn r3, r3, r3
	add.f.rn r8, r4, r8
	loadli.w r4,  -956(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	loadli.w r17,  -1536(r30)               # 4-byte Folded Reload
	add.f.rn r8, r8, r12
	sub.f.rn r6, r4, r5
	loadli.w r4,  -1440(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r4, r15
	loadli.w r4,  -1008(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r17, r6
	add.f.rn r8, r4, r8
	loadli.w r4,  -1452(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	mul.f.rn r12, r9, r12
	loadli.w r9,  -1540(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	add.f.rn r8, r8, r12
	mul.f.rn r12, r4, r7
	loadli.w r4,  -940(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r4, r5
	loadli.w r4,  -1004(r30)                # 4-byte Folded Reload
	add.f.rn r8, r4, r8
	mul.f.rn r12, r27, r12
	loadli.w r4,  -1460(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r9, r7
	mul.f.rn r7, r7, r7
	add.f.rn r8, r8, r12
	mul.f.rn r12, r4, r14
	loadli.w r4,  -996(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	mul.f.rn r15, r20, r20
	loadli.w r20,  -1560(r30)               # 4-byte Folded Reload
	add.f.rn r14, r4, r8
	loadli.w r4,  -916(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r25, r12
	loadli.w r25,  -520(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r4, r5
	loadli.w r4,  -1468(r30)                # 4-byte Folded Reload
	add.f.rn r12, r14, r12
	mul.f.rn r15, r4, r15
	loadli.w r4,  -988(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r18, r8
	mul.f.rn r8, r8, r8
	add.f.rn r12, r4, r12
	loadli.w r4,  -900(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r14
	mul.f.rn r14, r22, r15
	mul.f.rn r15, r11, r11
	sub.f.rn r11, r4, r5
	loadli.w r4,  -1476(r30)                # 4-byte Folded Reload
	add.f.rn r12, r12, r14
	mul.f.rn r14, r4, r15
	loadli.w r4,  -972(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r20, r11
	add.f.rn r12, r4, r12
	loadli.w r4,  -1484(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r23, r14
	add.f.rn r5, r5, r15
	add.f.rn r12, r12, r14
	mul.f.rn r14, r4, r1
	loadli.w r1,  -880(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -960(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r5
	add.f.rn r12, r4, r12
	mul.f.rn r14, r19, r14
	loadli.w r19,  -1568(r30)               # 4-byte Folded Reload
	loadli.w r4,  -1492(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r19, r1
	mul.f.rn r2, r4, r2
	loadli.w r4,  -952(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	add.f.rn r12, r12, r14
	add.f.rn r5, r5, r15
	mul.f.rn r14, r16, r2
	loadli.w r2,  -860(r30)                 # 4-byte Folded Reload
	loadli.w r15,  -1572(r30)               # 4-byte Folded Reload
	loadli.w r16,  -1584(r30)               # 4-byte Folded Reload
	add.f.rn r12, r4, r12
	loadli.w r4,  -1500(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r2, r5
	mul.f.rn r3, r4, r3
	loadli.w r4,  -936(r30)                 # 4-byte Folded Reload
	add.f.rn r12, r12, r14
	mul.f.rn r14, r15, r2
	mul.f.rn r3, r10, r3
	loadli.w r10,  -876(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r12, r4, r12
	loadli.w r4,  -1508(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r14
	mul.f.rn r6, r4, r6
	loadli.w r4,  -920(r30)                 # 4-byte Folded Reload
	add.f.rn r12, r12, r3
	loadli.w r3,  -844(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r6, r17, r6
	add.f.rn r12, r4, r12
	loadli.w r4,  -1516(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r16, r3
	mul.f.rn r7, r4, r7
	loadli.w r4,  -904(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r6, r12, r6
	loadli.w r12,  -828(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r14
	mul.f.rn r7, r9, r7
	loadli.w r9,  -1592(r30)                # 4-byte Folded Reload
	add.f.rn r6, r4, r6
	loadli.w r4,  -1524(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r5
	add.f.rn r6, r6, r7
	mul.f.rn r7, r4, r8
	loadli.w r8,  -892(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1532(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r9, r12
	add.f.rn r6, r8, r6
	mul.f.rn r7, r18, r7
	mul.f.rn r8, r11, r11
	loadli.w r11,  -820(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r14
	loadli.w r14,  -1600(r30)               # 4-byte Folded Reload
	add.f.rn r6, r6, r7
	mul.f.rn r7, r4, r8
	loadli.w r4,  -1544(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r5
	mul.f.rn r1, r4, r1
	loadli.w r4,  -1548(r30)                # 4-byte Folded Reload
	add.f.rn r6, r10, r6
	mul.f.rn r7, r20, r7
	loadli.w r10,  -1608(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r4, r2
	loadli.w r4,  -1588(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r14, r11
	mul.f.rn r1, r19, r1
	mul.f.rn r11, r11, r11
	add.f.rn r6, r6, r7
	loadli.w r7,  -708(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r15, r2
	loadli.w r15,  -1616(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r8
	loadli.w r8,  -864(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r8, r6
	sub.f.rn r7, r7, r5
	add.f.rn r1, r6, r1
	loadli.w r6,  -856(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r10, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r6, r1
	loadli.w r6,  -660(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r8
	add.f.rn r1, r1, r2
	loadli.w r2,  -1556(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r5
	mul.f.rn r2, r2, r3
	mul.f.rn r8, r15, r6
	mul.f.rn r2, r16, r2
	loadli.w r16,  -1624(r30)               # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r3, r5, r8
	loadli.w r5,  -840(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -652(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r4, r6
	loadli.w r4,  -1648(r30)                # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r12, r12
	loadli.w r12,  -832(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r8, r3
	add.f.rn r1, r1, r2
	loadli.w r2,  -1564(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r5
	mul.f.rn r5, r16, r8
	add.f.rn r1, r12, r1
	mul.f.rn r2, r9, r2
	add.f.rn r3, r3, r5
	loadli.w r5,  -640(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -1632(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1576(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	mul.f.rn r2, r2, r11
	loadli.w r11,  -824(r30)                # 4-byte Folded Reload
	add.f.rn r1, r11, r1
	mul.f.rn r11, r9, r5
	mul.f.rn r5, r5, r5
	mul.f.rn r2, r14, r2
	add.f.rn r3, r3, r11
	loadli.w r11,  -712(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1580(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r7
	loadli.w r7,  -716(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	loadli.w r7,  -632(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r10, r2
	sub.f.rn r7, r7, r3
	loadli.w r10,  -1640(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	mul.f.rn r2, r10, r7
	add.f.rn r1, r11, r1
	add.f.rn r2, r3, r2
	mul.f.rn r3, r15, r6
	mul.f.rn r6, r8, r8
	loadli.w r8,  -620(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -704(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1596(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r8, r2
	mul.f.rn r3, r3, r6
	add.f.rn r1, r11, r1
	mul.f.rn r6, r4, r8
	mul.f.rn r3, r16, r3
	add.f.rn r2, r2, r6
	loadli.w r6,  -656(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1604(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -612(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	sub.f.rn r5, r5, r2
	mul.f.rn r6, r7, r7
	mul.f.rn r3, r9, r3
	loadli.w r9,  -1652(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r9, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r1, r3
	loadli.w r3,  -1612(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	loadli.w r6,  -648(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r7
	loadli.w r7,  -600(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r8, r8
	loadli.w r8,  -644(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r10, r3
	sub.f.rn r7, r7, r2
	loadli.w r10,  -1660(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1620(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	mul.f.rn r6, r10, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r8, r1
	loadli.w r8,  -1672(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	add.f.rn r2, r2, r6
	loadli.w r4,  -1628(r30)                # 4-byte Folded Reload
	loadli.w r6,  -636(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r4, r5
	loadli.w r4,  -1636(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -596(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r2
	mul.f.rn r5, r9, r5
	loadli.w r9,  -1676(r30)                # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r8, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r5
	mul.f.rn r5, r4, r7
	loadli.w r7,  -628(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1644(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -592(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	loadli.w r4,  -624(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	mul.f.rn r5, r10, r5
	sub.f.rn r6, r6, r2
	mul.f.rn r3, r8, r3
	add.f.rn r1, r1, r5
	loadli.w r5,  -588(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r9, r6
	add.f.rn r1, r4, r1
	mul.f.rn r4, r6, r6
	loadli.w r6,  -616(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r7
	loadli.w r7,  -1680(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1656(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	sub.f.rn r5, r5, r2
	add.f.rn r1, r6, r1
	mul.f.rn r4, r7, r5
	mul.f.rn r3, r9, r3
	mul.f.rn r5, r5, r5
	add.f.rn r2, r2, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1664(r30)                # 4-byte Folded Reload
	loadli.w r4,  -584(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -608(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r2
	add.f.rn r1, r5, r1
	mul.f.rn r3, r7, r3
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r5, r4, r4
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r4, r13, r4
	.loc	2 0 0 is_stmt 0                 # triton_helpers.py:0:0
	add.f.rn r1, r1, r3
	.loc	2 230 38 is_stmt 1              # triton_helpers.py:230:38
	loadli.w r3,  -1668(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	loadli.w r5,  -604(r30)                 # 4-byte Folded Reload
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r2, r2, r4
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r5, r1
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r3, r13, r3
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r3
	loadli.w r3,  -692(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -696(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r1,  -700(r30)                 # 4-byte Folded Reload
.Ltmp2:
.LBB0_295:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 22                          # triton_helpers.py:0:22
	mfence { lm, sm, gm }
	csr_set csr3, r1
	sync_group
	loadli.w r1,  -696(r30)                 # 4-byte Folded Reload
	.loc	1 83 25 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:83:25
	lui r2, 237568
	addli r3, zero, 0
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 85 24                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:85:24
	loadli.w r2,  -812(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -692(r30)                 # 4-byte Folded Reload
	loads.w r4, 0(r2)
	.loc	1 86 32                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:86:32
	lui r2, 260096
	sqrt.f.rn r1, r1
	div.f.rn r1, r2, r1
	addli r2, zero, 1
	.loc	1 71 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	mfence { lm }
	j .LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -580(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	float2bfloat.rn r3, r3
	store.h r2, 0(r1)
	loadli.w r2,  -588(r30)                 # 4-byte Folded Reload
	store.h r3, 2(r1)
	loadli.w r3,  -584(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	float2bfloat.rn r3, r3
	store.h r2, 4(r1)
	store.h r3, 6(r1)
	float2bfloat.rn r2, r21
	float2bfloat.rn r3, r22
	store.h r2, 8(r1)
	store.h r3, 10(r1)
	float2bfloat.rn r2, r28
	float2bfloat.rn r3, r5
	store.h r2, 12(r1)
	store.h r3, 14(r1)
	float2bfloat.rn r2, r14
	float2bfloat.rn r3, r9
	store.h r2, 16(r1)
	store.h r3, 18(r1)
	float2bfloat.rn r2, r6
	float2bfloat.rn r3, r10
	store.h r2, 20(r1)
	store.h r3, 22(r1)
	float2bfloat.rn r2, r8
	float2bfloat.rn r3, r11
	store.h r2, 24(r1)
	store.h r3, 26(r1)
	float2bfloat.rn r2, r16
	float2bfloat.rn r3, r12
	store.h r2, 28(r1)
	store.h r3, 30(r1)
	addli r3, zero, 16
	addli r2, zero, 0
	mfence { lm }
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -520(r30)                # 4-byte Folded Reload
	andi r1, r1, 1
	beq r1, zero, .LBB0_2
.LBB0_297:                              #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 53 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r3, -596(r30)                 # 4-byte Folded Spill
	.loc	1 42 51 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	load.hu r3, -384(r30)
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r5, zero, 1
	load.hu r6, -382(r30)
	load.hu r1, -356(r30)
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
	load.hu r2, -358(r30)
	load.hu r7, -380(r30)
	load.hu r8, -378(r30)
	load.hu r9, -376(r30)
	load.hu r10, -374(r30)
	load.hu r11, -372(r30)
	load.hu r12, -370(r30)
	load.hu r13, -368(r30)
	load.hu r14, -366(r30)
	load.hu r15, -364(r30)
	load.hu r16, -362(r30)
	load.hu r17, -360(r30)
	load.hu r18, -354(r30)
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r5
	addli r5, zero, 2
	.loc	1 42 51                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:42:51
	bfloat2float.rn r3, r3
	bfloat2float.rn r2, r2
	bfloat2float.rn r1, r1
	vmmov mr3, r5
	addli r5, zero, 4
	vor.u.mh vr1{mr2}, r3, vr1
	bfloat2float.rn r3, r6
	vmmov mr0, r5
	addli r5, zero, 8
	vor.u.mh vr1{mr3}, r3, vr1
	bfloat2float.rn r3, r7
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r8
	vmmov mr0, r5
	addli r5, zero, 16
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r9
	vmmov mr0, r5
	addli r5, zero, 32
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r10
	vmmov mr0, r5
	addli r5, zero, 64
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r11
	vmmov mr0, r5
	addli r5, zero, 128
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r12
	vmmov mr0, r5
	addli r5, zero, 256
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r13
	vmmov mr0, r5
	addli r5, zero, 512
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r14
	vmmov mr0, r5
	addli r5, zero, 1024
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r15
	vmmov mr0, r5
	addli r5, zero, 2048
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r16
	vmmov mr0, r5
	addli r5, zero, 4096
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r17
	vmmov mr0, r5
	vor.u.mh vr1{mr0}, r3, vr1
	addli r3, zero, 8192
	vmmov mr0, r3
	vor.u.mh vr1{mr0}, r2, vr1
	lui r2, 4
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r18
	vmmov mr0, r2
	vor.u.mh vr1{mr0}, r1, vr1
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	load.hu r1, -320(r30)
	load.hu r2, -318(r30)
	load.hu r3, -316(r30)
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
	load.hu r16, -294(r30)
	load.hu r17, -292(r30)
	load.hu r18, -290(r30)
	bfloat2float.rn r1, r1
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r2
	addli r2, zero, 4
	vmmov mr2, r2
	addli r2, zero, 8
	vor.u.mh vr2{mr3}, r1, vr2
	bfloat2float.rn r1, r3
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r6
	vmmov mr2, r2
	addli r2, zero, 16
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r7
	vmmov mr2, r2
	addli r2, zero, 32
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 522240
	.loc	1 43 41                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:43:41
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r8
	vmmov mr2, r2
	addli r2, zero, 64
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r9
	vmmov mr2, r2
	addli r2, zero, 128
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r10
	vmmov mr2, r2
	addli r2, zero, 256
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r11
	vmmov mr2, r2
	addli r2, zero, 512
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r12
	vmmov mr2, r2
	addli r2, zero, 1024
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r13
	vmmov mr2, r2
	addli r2, zero, 2048
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r14
	vmmov mr2, r2
	addli r2, zero, 4096
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r15
	vmmov mr2, r2
	addli r2, zero, 8192
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r16
	vmmov mr2, r2
	lui r2, 4
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r17
	vmmov mr2, r2
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r18
	vor.u.mh vr2{mr0}, r1, vr2
	.loc	1 48 22                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:48:22
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	vstore_mask16.mz vr1{mr1}, -256(r30)
	mfence { lm }
	loadli.w r24,  -256(r30)
	loadli.w r6,  -252(r30)
	loadli.w r3,  -248(r30)
	loadli.w r8,  -244(r30)
	loadli.w r2,  -240(r30)
	loadli.w r27,  -236(r30)
	loadli.w r20,  -232(r30)
	loadli.w r23,  -228(r30)
	loadli.w r12,  -224(r30)
	loadli.w r21,  -220(r30)
	loadli.w r22,  -216(r30)
	loadli.w r26,  -212(r30)
	loadli.w r18,  -208(r30)
	loadli.w r5,  -204(r30)
	loadli.w r17,  -200(r30)
	loadli.w r9,  -196(r30)
	and r1, r24, r25
	storeli.w r9, -528(r30)                 # 4-byte Folded Spill
	setlt.u r7, r7, r1
	bneq r7, zero, .LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	addli r16, r24, 0
	j .LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r16, r24, r7
.LBB0_300:                              #   in Loop: Header=BB0_297 Depth=2
	and r15, r6, r25
	lui r7, 522240
	setlt.u r7, r7, r15
	bneq r7, zero, .LBB0_302
# %bb.301:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r6, -580(r30)                 # 4-byte Folded Spill
	j .LBB0_303
.LBB0_302:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r6, r7
	storeli.w r7, -580(r30)                 # 4-byte Folded Spill
.LBB0_303:                              #   in Loop: Header=BB0_297 Depth=2
	and r13, r3, r25
	lui r7, 522240
	setlt.u r7, r7, r13
	bneq r7, zero, .LBB0_305
# %bb.304:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r3, -588(r30)                 # 4-byte Folded Spill
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r3, r7
	storeli.w r7, -588(r30)                 # 4-byte Folded Spill
.LBB0_306:                              #   in Loop: Header=BB0_297 Depth=2
	and r11, r8, r25
	lui r7, 522240
	setlt.u r7, r7, r11
	bneq r7, zero, .LBB0_308
# %bb.307:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r8, -584(r30)                 # 4-byte Folded Spill
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r8, r7
	storeli.w r7, -584(r30)                 # 4-byte Folded Spill
.LBB0_309:                              #   in Loop: Header=BB0_297 Depth=2
	and r10, r2, r25
	lui r7, 522240
	setlt.u r7, r7, r10
	bneq r7, zero, .LBB0_311
# %bb.310:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r2, -576(r30)                 # 4-byte Folded Spill
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r2, r7
	storeli.w r7, -576(r30)                 # 4-byte Folded Spill
.LBB0_312:                              #   in Loop: Header=BB0_297 Depth=2
	and r9, r27, r25
	lui r7, 522240
	setlt.u r7, r7, r9
	bneq r7, zero, .LBB0_314
# %bb.313:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r27, -572(r30)                # 4-byte Folded Spill
	j .LBB0_315
.LBB0_314:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r27, r7
	storeli.w r7, -572(r30)                 # 4-byte Folded Spill
.LBB0_315:                              #   in Loop: Header=BB0_297 Depth=2
	and r19, r20, r25
	lui r7, 522240
	setlt.u r7, r7, r19
	bneq r7, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r20, -568(r30)                # 4-byte Folded Spill
	j .LBB0_318
.LBB0_317:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r20, r7
	storeli.w r7, -568(r30)                 # 4-byte Folded Spill
.LBB0_318:                              #   in Loop: Header=BB0_297 Depth=2
	and r14, r23, r25
	lui r7, 522240
	storeli.w r23, -624(r30)                # 4-byte Folded Spill
	setlt.u r7, r7, r14
	bneq r7, zero, .LBB0_320
# %bb.319:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r23, -564(r30)                # 4-byte Folded Spill
	j .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r23, r7
	storeli.w r7, -564(r30)                 # 4-byte Folded Spill
.LBB0_321:                              #   in Loop: Header=BB0_297 Depth=2
	and r23, r12, r25
	lui r7, 522240
	storeli.w r12, -620(r30)                # 4-byte Folded Spill
	setlt.u r7, r7, r23
	bneq r7, zero, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r12, -560(r30)                # 4-byte Folded Spill
	j .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r12, r7
	storeli.w r7, -560(r30)                 # 4-byte Folded Spill
.LBB0_324:                              #   in Loop: Header=BB0_297 Depth=2
	and r12, r21, r25
	lui r7, 522240
	storeli.w r21, -616(r30)                # 4-byte Folded Spill
	setlt.u r7, r7, r12
	bneq r7, zero, .LBB0_326
# %bb.325:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r21, -556(r30)                # 4-byte Folded Spill
	j .LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r21, r7
	storeli.w r7, -556(r30)                 # 4-byte Folded Spill
.LBB0_327:                              #   in Loop: Header=BB0_297 Depth=2
	and r21, r22, r25
	lui r7, 522240
	storeli.w r22, -612(r30)                # 4-byte Folded Spill
	setlt.u r7, r7, r21
	bneq r7, zero, .LBB0_329
# %bb.328:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r22, -552(r30)                # 4-byte Folded Spill
	j .LBB0_330
.LBB0_329:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r22, r7
	storeli.w r7, -552(r30)                 # 4-byte Folded Spill
.LBB0_330:                              #   in Loop: Header=BB0_297 Depth=2
	and r22, r26, r25
	lui r7, 522240
	setlt.u r7, r7, r22
	bneq r7, zero, .LBB0_332
# %bb.331:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r26, -548(r30)                # 4-byte Folded Spill
	j .LBB0_333
.LBB0_332:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r26, r7
	storeli.w r7, -548(r30)                 # 4-byte Folded Spill
.LBB0_333:                              #   in Loop: Header=BB0_297 Depth=2
	and r28, r18, r25
	lui r7, 522240
	storeli.w r18, -604(r30)                # 4-byte Folded Spill
	storeli.w r26, -608(r30)                # 4-byte Folded Spill
	setlt.u r7, r7, r28
	bneq r7, zero, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r18, -544(r30)                # 4-byte Folded Spill
	j .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r18, r7
	storeli.w r7, -544(r30)                 # 4-byte Folded Spill
.LBB0_336:                              #   in Loop: Header=BB0_297 Depth=2
	and r26, r5, r25
	lui r7, 522240
	addli r18, r16, 0
	storeli.w r5, -600(r30)                 # 4-byte Folded Spill
	setlt.u r7, r7, r26
	bneq r7, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r5, -540(r30)                 # 4-byte Folded Spill
	j .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r7, 1024
	or r7, r5, r7
	storeli.w r7, -540(r30)                 # 4-byte Folded Spill
.LBB0_339:                              #   in Loop: Header=BB0_297 Depth=2
	and r7, r17, r25
	lui r16, 522240
	addli r5, r4, 0
	setlt.u r25, r16, r7
	bneq r25, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	addli r4, r17, 0
	storeli.w r17, -536(r30)                # 4-byte Folded Spill
	j .LBB0_342
.LBB0_341:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r16, 1024
	addli r4, r17, 0
	or r16, r17, r16
	storeli.w r16, -536(r30)                # 4-byte Folded Spill
.LBB0_342:                              #   in Loop: Header=BB0_297 Depth=2
	loadli.w r16,  -520(r30)                # 4-byte Folded Reload
	loadli.w r17,  -528(r30)                # 4-byte Folded Reload
	and r25, r17, r16
	lui r16, 522240
	setlt.u r16, r16, r25
	bneq r16, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	storeli.w r17, -532(r30)                # 4-byte Folded Spill
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	lui r16, 1024
	or r16, r17, r16
	storeli.w r16, -532(r30)                # 4-byte Folded Spill
.LBB0_345:                              #   in Loop: Header=BB0_297 Depth=2
	loadli.w r16,  -516(r30)                # 4-byte Folded Reload
	addli r17, r4, 0
	setlt.u r1, r16, r1
	bneq r1, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r24, 16
	loadli.w r16,  -524(r30)                # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r16
	lui r16, 1048560
	and r18, r1, r16
.LBB0_347:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	addli r4, r5, 0
	setlt.u r1, r1, r15
	bneq r1, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	loadli.w r6,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r6
	lui r6, 1048560
	and r1, r1, r6
	storeli.w r1, -580(r30)                 # 4-byte Folded Spill
.LBB0_349:                              #   in Loop: Header=BB0_297 Depth=2
	loadli.w r6,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -660(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r13
	beq r1, zero, .LBB0_369
# %bb.350:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r11
	beq r1, zero, .LBB0_370
.LBB0_351:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r10
	beq r1, zero, .LBB0_371
.LBB0_352:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r9
	bneq r1, zero, .LBB0_354
.LBB0_353:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r27, 16
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r2
	lui r2, 1048560
	and r1, r1, r2
	storeli.w r1, -572(r30)                 # 4-byte Folded Spill
.LBB0_354:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r19
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r20, 16
	lui r3, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -568(r30)                 # 4-byte Folded Spill
.LBB0_356:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r14
	lui r3, 1048560
	beq r1, zero, .LBB0_372
# %bb.357:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r23
	beq r1, zero, .LBB0_373
.LBB0_358:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r12
	beq r1, zero, .LBB0_374
.LBB0_359:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r21
	beq r1, zero, .LBB0_375
.LBB0_360:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r22
	beq r1, zero, .LBB0_376
.LBB0_361:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r28
	beq r1, zero, .LBB0_377
.LBB0_362:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r26
	beq r1, zero, .LBB0_378
.LBB0_363:                              #   in Loop: Header=BB0_297 Depth=2
	setlt.u r1, r6, r7
	bneq r1, zero, .LBB0_365
.LBB0_364:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -536(r30)                 # 4-byte Folded Spill
.LBB0_365:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r25
	loadli.w r6,  -528(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
.LBB0_367:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 71 42 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	loadli.w r1,  -596(r30)                 # 4-byte Folded Reload
	.loc	1 81 24                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:81:24
	sub.f.rn r2, r18, r4
	addli r3, r30, -128
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r15, 522240
	.loc	1 71 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	slli r1, r1, 1
	add.s r7, r3, r1
	.loc	1 87 24                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:87:24
	mul.f.rn r11, r5, r2
	.loc	1 71 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	load.hu r13, 26(r7)
	load.hu r3, 0(r7)
	load.hu r8, 22(r7)
	load.hu r17, 2(r7)
	load.hu r20, 4(r7)
	load.hu r21, 6(r7)
	load.hu r19, 8(r7)
	load.hu r14, 10(r7)
	load.hu r10, 12(r7)
	load.hu r9, 14(r7)
	load.hu r6, 16(r7)
	load.hu r2, 20(r7)
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	storeli.w r13, -616(r30)                # 4-byte Folded Spill
	addli r13, r30, -64
	.loc	1 71 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	bfloat2float.rn r12, r3
	storeli.w r8, -652(r30)                 # 4-byte Folded Spill
	load.hu r8, 24(r7)
	load.hu r3, 18(r7)
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	add.s r1, r13, r1
	.loc	1 71 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:71:42
	load.hu r13, 28(r7)
	load.hu r7, 30(r7)
	storeli.w r8, -636(r30)                 # 4-byte Folded Spill
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	load.hu r8, 26(r1)
	load.hu r27, 2(r1)
	load.hu r26, 4(r1)
	load.hu r25, 6(r1)
	load.hu r22, 8(r1)
	load.hu r24, 10(r1)
	load.hu r23, 12(r1)
	load.hu r18, 14(r1)
	.loc	1 89 24                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:89:24
	storeli.w r7, -596(r30)                 # 4-byte Folded Spill
	mul.f.rn r7, r11, r12
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	storeli.w r13, -604(r30)                # 4-byte Folded Spill
	load.hu r13, 0(r1)
	load.hu r12, 16(r1)
	storeli.w r8, -656(r30)                 # 4-byte Folded Spill
	load.hu r8, 28(r1)
	bfloat2float.rn r11, r13
	storeli.w r8, -640(r30)                 # 4-byte Folded Spill
	load.hu r8, 30(r1)
	.loc	1 91 24                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:91:24
	add.f.rn r13, r7, r11
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r7,  -520(r30)                 # 4-byte Folded Reload
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	load.hu r11, 18(r1)
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	storeli.w r8, -620(r30)                 # 4-byte Folded Spill
	and r16, r13, r7
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	load.hu r7, 20(r1)
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r28, r15, r16
	storeli.w r16, -600(r30)                # 4-byte Folded Spill
	.loc	1 72 42                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:72:42
	load.hu r15, 22(r1)
	load.hu r16, 24(r1)
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	bneq r28, zero, .LBB0_379
# %bb.368:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r13, -528(r30)                # 4-byte Folded Spill
	j .LBB0_380
.LBB0_369:                              #   in Loop: Header=BB0_297 Depth=2
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	loadli.w r3,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r3
	lui r3, 1048560
	and r1, r1, r3
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	.loc	1 49 23 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r11
	bneq r1, zero, .LBB0_351
.LBB0_370:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r8, 16
	loadli.w r3,  -524(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r3
	lui r3, 1048560
	and r1, r1, r3
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r10
	bneq r1, zero, .LBB0_352
.LBB0_371:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r1, r1, r2
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r9
	beq r1, zero, .LBB0_353
	j .LBB0_354
.LBB0_372:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -624(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -564(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r23
	bneq r1, zero, .LBB0_358
.LBB0_373:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -620(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -560(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r12
	bneq r1, zero, .LBB0_359
.LBB0_374:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -616(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -556(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r21
	bneq r1, zero, .LBB0_360
.LBB0_375:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -612(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r22
	bneq r1, zero, .LBB0_361
.LBB0_376:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -608(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -548(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r28
	bneq r1, zero, .LBB0_362
.LBB0_377:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -604(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r26
	bneq r1, zero, .LBB0_363
.LBB0_378:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 23                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r8,  -600(r30)                 # 4-byte Folded Reload
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r1, r1, r3
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r6, r7
	beq r1, zero, .LBB0_364
	j .LBB0_365
.LBB0_379:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r28, 1024
	or r28, r13, r28
	storeli.w r28, -528(r30)                # 4-byte Folded Spill
.LBB0_380:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0 is_stmt 0                 # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r28,  -580(r30)                # 4-byte Folded Reload
	bfloat2float.rn r17, r17
	bfloat2float.rn r27, r27
	sub.f.rn r28, r28, r4
	mul.f.rn r28, r5, r28
	mul.f.rn r17, r28, r17
	add.f.rn r17, r17, r27
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r27,  -520(r30)                # 4-byte Folded Reload
	and r28, r17, r27
	lui r27, 522240
	setlt.u r27, r27, r28
	storeli.w r28, -608(r30)                # 4-byte Folded Spill
	bneq r27, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r17, -580(r30)                # 4-byte Folded Spill
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r27, 1024
	or r27, r17, r27
	storeli.w r27, -580(r30)                # 4-byte Folded Spill
.LBB0_383:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r27,  -588(r30)                # 4-byte Folded Reload
	bfloat2float.rn r20, r20
	bfloat2float.rn r26, r26
	sub.f.rn r27, r27, r4
	mul.f.rn r27, r5, r27
	mul.f.rn r20, r27, r20
	add.f.rn r20, r20, r26
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r26,  -520(r30)                # 4-byte Folded Reload
	and r27, r20, r26
	lui r26, 522240
	setlt.u r26, r26, r27
	storeli.w r27, -612(r30)                # 4-byte Folded Spill
	bneq r26, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r20, -588(r30)                # 4-byte Folded Spill
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r26, 1024
	or r26, r20, r26
	storeli.w r26, -588(r30)                # 4-byte Folded Spill
.LBB0_386:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r26,  -584(r30)                # 4-byte Folded Reload
	bfloat2float.rn r21, r21
	bfloat2float.rn r25, r25
	sub.f.rn r26, r26, r4
	mul.f.rn r26, r5, r26
	mul.f.rn r21, r26, r21
	add.f.rn r21, r21, r25
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r25,  -520(r30)                # 4-byte Folded Reload
	and r8, r21, r25
	lui r25, 522240
	setlt.u r25, r25, r8
	storeli.w r8, -624(r30)                 # 4-byte Folded Spill
	bneq r25, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r21, -584(r30)                # 4-byte Folded Spill
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r25, 1024
	or r25, r21, r25
	storeli.w r25, -584(r30)                # 4-byte Folded Spill
.LBB0_389:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r25,  -576(r30)                # 4-byte Folded Reload
	bfloat2float.rn r19, r19
	bfloat2float.rn r22, r22
	sub.f.rn r25, r25, r4
	mul.f.rn r25, r5, r25
	mul.f.rn r19, r25, r19
	loadli.w r25,  -520(r30)                # 4-byte Folded Reload
	add.f.rn r22, r19, r22
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r19, 522240
	and r8, r22, r25
	setlt.u r19, r19, r8
	storeli.w r8, -628(r30)                 # 4-byte Folded Spill
	bneq r19, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r22, -576(r30)                # 4-byte Folded Spill
	j .LBB0_392
.LBB0_391:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r19, 1024
	or r19, r22, r19
	storeli.w r19, -576(r30)                # 4-byte Folded Spill
.LBB0_392:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r19,  -572(r30)                # 4-byte Folded Reload
	bfloat2float.rn r14, r14
	sub.f.rn r19, r19, r4
	mul.f.rn r19, r5, r19
	mul.f.rn r14, r19, r14
	bfloat2float.rn r19, r24
	add.f.rn r28, r14, r19
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r14, 522240
	and r8, r28, r25
	setlt.u r14, r14, r8
	storeli.w r8, -632(r30)                 # 4-byte Folded Spill
	bneq r14, zero, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r28, -572(r30)                # 4-byte Folded Spill
	j .LBB0_395
.LBB0_394:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r14, 1024
	or r14, r28, r14
	storeli.w r14, -572(r30)                # 4-byte Folded Spill
.LBB0_395:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r14,  -568(r30)                # 4-byte Folded Reload
	bfloat2float.rn r10, r10
	sub.f.rn r14, r14, r4
	mul.f.rn r14, r5, r14
	mul.f.rn r10, r14, r10
	bfloat2float.rn r14, r23
	add.f.rn r14, r10, r14
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r10, 522240
	and r8, r14, r25
	setlt.u r10, r10, r8
	storeli.w r8, -644(r30)                 # 4-byte Folded Spill
	bneq r10, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r14, -568(r30)                # 4-byte Folded Spill
	j .LBB0_398
.LBB0_397:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r10, 1024
	or r10, r14, r10
	storeli.w r10, -568(r30)                # 4-byte Folded Spill
.LBB0_398:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r10,  -564(r30)                # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	sub.f.rn r10, r10, r4
	mul.f.rn r10, r5, r10
	mul.f.rn r9, r10, r9
	bfloat2float.rn r10, r18
	add.f.rn r9, r9, r10
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r10, 522240
	and r8, r9, r25
	setlt.u r10, r10, r8
	storeli.w r8, -564(r30)                 # 4-byte Folded Spill
	bneq r10, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	addli r26, r9, 0
	j .LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r10, 1024
	or r26, r9, r10
.LBB0_401:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r10,  -560(r30)                # 4-byte Folded Reload
	bfloat2float.rn r6, r6
	sub.f.rn r10, r10, r4
	mul.f.rn r10, r5, r10
	mul.f.rn r6, r10, r6
	bfloat2float.rn r10, r12
	add.f.rn r10, r6, r10
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r6, 522240
	and r8, r10, r25
	setlt.u r6, r6, r8
	storeli.w r8, -648(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r10, -560(r30)                # 4-byte Folded Spill
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r6, 1024
	or r6, r10, r6
	storeli.w r6, -560(r30)                 # 4-byte Folded Spill
.LBB0_404:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r6,  -556(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	sub.f.rn r6, r6, r4
	mul.f.rn r6, r5, r6
	mul.f.rn r3, r6, r3
	bfloat2float.rn r6, r11
	add.f.rn r11, r3, r6
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r3, 522240
	and r6, r11, r25
	setlt.u r3, r3, r6
	bneq r3, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r11, -556(r30)                # 4-byte Folded Spill
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r3, 1024
	or r3, r11, r3
	storeli.w r3, -556(r30)                 # 4-byte Folded Spill
.LBB0_407:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	sub.f.rn r3, r3, r4
	mul.f.rn r3, r5, r3
	mul.f.rn r2, r3, r2
	bfloat2float.rn r3, r7
	add.f.rn r7, r2, r3
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r2, 522240
	and r3, r7, r25
	setlt.u r2, r2, r3
	bneq r2, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r7, -552(r30)                 # 4-byte Folded Spill
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r2, 1024
	or r2, r7, r2
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
.LBB0_410:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -652(r30)                 # 4-byte Folded Reload
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r12, 522240
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	sub.f.rn r2, r2, r4
	bfloat2float.rn r8, r8
	mul.f.rn r2, r5, r2
	mul.f.rn r2, r2, r8
	bfloat2float.rn r8, r15
	add.f.rn r8, r2, r8
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	and r2, r8, r25
	setlt.u r12, r12, r2
	bneq r12, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r8, -548(r30)                 # 4-byte Folded Spill
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r12, 1024
	or r12, r8, r12
	storeli.w r12, -548(r30)                # 4-byte Folded Spill
.LBB0_413:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r12,  -544(r30)                # 4-byte Folded Reload
	loadli.w r15,  -636(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r4
	bfloat2float.rn r15, r15
	mul.f.rn r12, r5, r12
	mul.f.rn r12, r12, r15
	bfloat2float.rn r15, r16
	add.f.rn r18, r12, r15
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r12, 522240
	and r27, r18, r25
	setlt.u r12, r12, r27
	bneq r12, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r18, -544(r30)                # 4-byte Folded Spill
	j .LBB0_416
.LBB0_415:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r12, 1024
	or r12, r18, r12
	storeli.w r12, -544(r30)                # 4-byte Folded Spill
.LBB0_416:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r12,  -540(r30)                # 4-byte Folded Reload
	loadli.w r15,  -616(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r4
	bfloat2float.rn r15, r15
	mul.f.rn r12, r5, r12
	mul.f.rn r12, r12, r15
	loadli.w r15,  -656(r30)                # 4-byte Folded Reload
	bfloat2float.rn r15, r15
	add.f.rn r16, r12, r15
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r12, 522240
	and r24, r16, r25
	setlt.u r12, r12, r24
	bneq r12, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r16, -540(r30)                # 4-byte Folded Spill
	j .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r12, 1024
	or r12, r16, r12
	storeli.w r12, -540(r30)                # 4-byte Folded Spill
.LBB0_419:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r12,  -536(r30)                # 4-byte Folded Reload
	loadli.w r15,  -604(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r4
	bfloat2float.rn r15, r15
	mul.f.rn r12, r5, r12
	mul.f.rn r12, r12, r15
	loadli.w r15,  -640(r30)                # 4-byte Folded Reload
	bfloat2float.rn r15, r15
	add.f.rn r12, r12, r15
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r15, 522240
	and r23, r12, r25
	setlt.u r15, r15, r23
	bneq r15, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r12, -536(r30)                # 4-byte Folded Spill
	j .LBB0_422
.LBB0_421:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r15, 1024
	or r15, r12, r15
	storeli.w r15, -536(r30)                # 4-byte Folded Spill
.LBB0_422:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	loadli.w r15,  -532(r30)                # 4-byte Folded Reload
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r19, 522240
	.loc	1 0 0                           # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:0
	sub.f.rn r15, r15, r4
	mul.f.rn r15, r5, r15
	loadli.w r5,  -596(r30)                 # 4-byte Folded Reload
	bfloat2float.rn r25, r5
	loadli.w r5,  -620(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r15, r25
	bfloat2float.rn r25, r5
	add.f.rn r25, r15, r25
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r15,  -520(r30)                # 4-byte Folded Reload
	and r15, r25, r15
	setlt.u r19, r19, r15
	bneq r19, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	storeli.w r25, -532(r30)                # 4-byte Folded Spill
	j .LBB0_425
.LBB0_424:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	lui r19, 1024
	or r5, r25, r19
	storeli.w r5, -532(r30)                 # 4-byte Folded Spill
.LBB0_425:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	addli r5, r26, 0
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r19,  -516(r30)                # 4-byte Folded Reload
	loadli.w r26,  -600(r30)                # 4-byte Folded Reload
	setlt.u r19, r19, r26
	bneq r19, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	loadli.w r19,  -524(r30)                # 4-byte Folded Reload
	add.s r13, r13, r19
	lui r19, 1048560
	and r13, r13, r19
	storeli.w r13, -528(r30)                # 4-byte Folded Spill
.LBB0_427:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r19,  -608(r30)                # 4-byte Folded Reload
	setlt.u r13, r13, r19
	loadli.w r19,  -524(r30)                # 4-byte Folded Reload
	bneq r13, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r17, 16
	andi r13, r13, 1
	add.s r13, r17, r13
	lui r17, 1048560
	add.s r13, r13, r19
	and r13, r13, r17
	storeli.w r13, -580(r30)                # 4-byte Folded Spill
.LBB0_429:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r17,  -612(r30)                # 4-byte Folded Reload
	setlt.u r13, r13, r17
	bneq r13, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r20, 16
	lui r17, 1048560
	andi r13, r13, 1
	add.s r13, r20, r13
	add.s r13, r13, r19
	and r13, r13, r17
	storeli.w r13, -588(r30)                # 4-byte Folded Spill
.LBB0_431:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r17,  -624(r30)                # 4-byte Folded Reload
	lui r20, 1048560
	setlt.u r13, r13, r17
	addli r17, zero, 64
	bneq r13, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r21, 16
	andi r13, r13, 1
	add.s r13, r21, r13
	add.s r13, r13, r19
	and r13, r13, r20
	storeli.w r13, -584(r30)                # 4-byte Folded Spill
.LBB0_433:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r21,  -628(r30)                # 4-byte Folded Reload
	setlt.u r13, r13, r21
	loadli.w r21,  -576(r30)                # 4-byte Folded Reload
	bneq r13, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r22, 16
	andi r13, r13, 1
	add.s r13, r22, r13
	add.s r13, r13, r19
	and r21, r13, r20
.LBB0_435:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r22,  -632(r30)                # 4-byte Folded Reload
	setlt.u r13, r13, r22
	loadli.w r22,  -572(r30)                # 4-byte Folded Reload
	bneq r13, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r28, 16
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r19
	and r22, r13, r20
.LBB0_437:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r26,  -644(r30)                # 4-byte Folded Reload
	loadli.w r28,  -568(r30)                # 4-byte Folded Reload
	setlt.u r13, r13, r26
	bneq r13, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r14, 16
	andi r13, r13, 1
	add.s r13, r14, r13
	add.s r13, r13, r19
	and r28, r13, r20
.LBB0_439:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	loadli.w r14,  -564(r30)                # 4-byte Folded Reload
	setlt.u r13, r13, r14
	bneq r13, zero, .LBB0_441
# %bb.440:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	add.s r9, r9, r19
	and r5, r9, r20
.LBB0_441:                              #   in Loop: Header=BB0_297 Depth=2
	loadli.w r13,  -516(r30)                # 4-byte Folded Reload
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	loadli.w r9,  -648(r30)                 # 4-byte Folded Reload
	loadli.w r14,  -560(r30)                # 4-byte Folded Reload
	setlt.u r9, r13, r9
	bneq r9, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r19
	and r14, r9, r20
.LBB0_443:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r6, r13, r6
	loadli.w r9,  -556(r30)                 # 4-byte Folded Reload
	bneq r6, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r19
	and r9, r6, r20
.LBB0_445:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r3, r13, r3
	loadli.w r6,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -548(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r3, r7, 16
	andi r3, r3, 1
	add.s r3, r7, r3
	add.s r3, r3, r19
	and r6, r3, r20
.LBB0_447:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r2, r13, r2
	loadli.w r11,  -540(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r19
	and r10, r2, r20
.LBB0_449:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r2, r13, r27
	loadli.w r8,  -544(r30)                 # 4-byte Folded Reload
	addli r7, r30, -128
	bneq r2, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r19
	and r8, r2, r20
.LBB0_451:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r2, r13, r24
	bneq r2, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r19
	and r11, r2, r20
.LBB0_453:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r2, r13, r23
	loadli.w r16,  -536(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r19
	and r16, r2, r20
.LBB0_455:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 93 53                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:93:53
	setlt.u r2, r13, r15
	loadli.w r12,  -532(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_296
# %bb.456:                              #   in Loop: Header=BB0_297 Depth=2
	.loc	1 0 53                          # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:53
	srli r2, r25, 16
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r19
	and r12, r2, r20
	j .LBB0_296
.LBB0_457:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r5
	and r23, r1, r3
	.loc	1 49 23 is_stmt 1               # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r2, r11
	bneq r1, zero, .LBB0_165
.LBB0_458:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:0:23
	loadli.w r4,  -644(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r5
	and r22, r1, r3
	.loc	1 49 23                         # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:49:23
	setlt.u r1, r2, r10
	beq r1, zero, .LBB0_166
	j .LBB0_167
.LBB0_459:                              # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py:63:4
	addli sp, r30, -1728
	addli sp, sp, 1728
	mfence { lm, sm, gm }
	exit
.Ltmp3:
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
	.long	1792                            # 0x700
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
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xb:0x51 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x2f DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x21 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	85                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x10 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	237                             # DW_AT_call_line
	.byte	46                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cruvvn5hrhtittrwabjxvgybeg2ofucemcc5v6x7kuzzrkx4f4pu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/ru" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
