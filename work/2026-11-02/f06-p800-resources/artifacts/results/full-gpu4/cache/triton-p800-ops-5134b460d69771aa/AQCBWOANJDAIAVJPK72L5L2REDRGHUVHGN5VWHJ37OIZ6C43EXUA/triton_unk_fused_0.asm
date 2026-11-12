	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/7a" "c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py"
	.loc	1 22 0                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1728
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1664
	lui r6, 260096
	load_param_i r13, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r12,  44(r30)
	loadli.w r4,  40(r30)
	loadli.w r11,  48(r30)
	add.s r5, r3, r2
	mul.s r4, r12, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -652(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r14, r4, r11
	mfence { lm, sm, gm }
	ori r5, r5, 4095
	storeli.w r5, -620(r30)                 # 4-byte Folded Spill
	csr_set csr3, r5
	sync_group
	ble.s r14, r13, .LBB0_454
# %bb.1:                                # %.lr.ph
	addli r17, zero, 64
	loadli.w r8,  -652(r30)                 # 4-byte Folded Reload
	addli r18, zero, 1
	load.d r[4:5], 16(r30)
	load.d r[6:7], 8(r30)
	load_param_i r16, 1
	lui r24, 522240
	vxor.u.mz vr0{mr1}, vr0, vr0
	storeli.w r14, -656(r30)                # 4-byte Folded Spill
	div.s r15, r1, r17
	storeli.w r16, -672(r30)                # 4-byte Folded Spill
	addli r9, r8, 256
	addli r8, r8, 512
	storeli.w r8, -668(r30)                 # 4-byte Folded Spill
	storeli.w r9, -664(r30)                 # 4-byte Folded Spill
	lui r9, 1048575
	slli r8, r15, 6
	storeli.w r15, -660(r30)                # 4-byte Folded Spill
	sub.s r8, r1, r8
	andi r1, r1, 63
	slli r10, r8, 5
	ori r8, r9, 3840
	storeli.w r1, -700(r30)                 # 4-byte Folded Spill
	and r3, r3, r8
	storeli.w r10, -676(r30)                # 4-byte Folded Spill
	sext_int2long r[9:10], r10
	add.s r2, r3, r2
	sll.d r[8:9], r[9:10], r18
	addli r1, r2, 256
	storeli.w r2, -612(r30)                 # 4-byte Folded Spill
	add.ul r[3:4], r[4:5], r[8:9]
	add.ul r[6:7], r[6:7], r[8:9]
	addli r5, r30, -256
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	addli r1, r2, 512
	lui r2, 522239
	store.d r[3:4], -696(r30)               # 8-byte Folded Spill
	store.d r[6:7], -688(r30)               # 8-byte Folded Spill
	addli r3, zero, 2047
	addli r4, r30, -320
	addli r7, r30, -64
	storeli.w r1, -752(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r1, r1, 4095
	storeli.w r1, -460(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r25, r1, 4095
	ori r1, r2, 4095
	lui r2, 255180
	storeli.w r1, -452(r30)                 # 4-byte Folded Spill
	lui r1, 256682
	storeli.w r25, -456(r30)                # 4-byte Folded Spill
	ori r1, r1, 2731
	storeli.w r1, -704(r30)                 # 4-byte Folded Spill
	ori r1, r2, 3277
	lui r2, 254244
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	lui r1, 254634
	ori r1, r1, 2731
	storeli.w r1, -712(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2341
	lui r2, 253132
	storeli.w r1, -716(r30)                 # 4-byte Folded Spill
	lui r1, 253496
	ori r1, r1, 3641
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	ori r1, r2, 3277
	lui r2, 252586
	storeli.w r1, -724(r30)                 # 4-byte Folded Spill
	lui r1, 252834
	ori r1, r1, 3724
	storeli.w r1, -728(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2731
	lui r2, 252196
	storeli.w r1, -732(r30)                 # 4-byte Folded Spill
	lui r1, 252376
	ori r1, r1, 2521
	storeli.w r1, -736(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2341
	lui r2, 239665
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	lui r1, 252040
	ori r1, r1, 2185
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 90 29 prologue_end            # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:29
	load.d r[2:3], 24(r30)
	load.d r[4:5], -584(r30)                # 8-byte Folded Reload
	.loc	1 90 53 is_stmt 0               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	lui r1, 983040
	addli r17, zero, 64
	addli r7, r30, -64
	or r1, r17, r1
	.loc	1 90 29                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:29
	add.ul r[2:3], r[2:3], r[4:5]
	addli r4, r30, -320
	addli r5, r30, -256
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	s_lm2gm r1, r7, 0(r[2:3])
	addli r3, zero, 2047
	mfence { lm }
	loadli.w r11,  48(r30)
	loadli.w r12,  44(r30)
	loadli.w r13,  -572(r30)                # 4-byte Folded Reload
	loadli.w r14,  -656(r30)                # 4-byte Folded Reload
	loadli.w r15,  -660(r30)                # 4-byte Folded Reload
	loadli.w r16,  -672(r30)                # 4-byte Folded Reload
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	add.s r13, r13, r16
	blt.s r13, r14, .LBB0_4
	j .LBB0_454
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_296 Depth 2
	div.s r1, r13, r11
	div.s r1, r1, r12
	.loc	1 28 23 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:28:23
	add.s r1, r1, r15
	blt.s r3, r1, .LBB0_3
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	addli r2, zero, 0
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	add.s r3, r4, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r17, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 42 41 is_stmt 0               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:41
	loadli.w r2,  -676(r30)                 # 4-byte Folded Reload
	.loc	1 42 46                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:46
	slli r1, r1, 11
	.loc	1 42 34                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:34
	addli r3, zero, 1
	storeli.w r13, -572(r30)                # 4-byte Folded Spill
	.loc	1 42 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[8:9], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	lui r1, 983040
	or r1, r17, r1
	store.d r[8:9], -584(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:34
	add.ul r[2:3], r[2:3], r[8:9]
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	addli r1, zero, 0
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	add.s r2, r5, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r17, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	lui r1, 983040
	load.d r[2:3], -688(r30)                # 8-byte Folded Reload
	or r1, r17, r1
	l_gm2lm r1, r5, 0(r[2:3])
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	mfence { lm }
	vload_mask16.mz vr1{mr1}, -320(r30)
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	vload_mask16.mz vr2{mr1}, -256(r30)
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	vmerge_l.hf vr3, vr0, vr1
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	vmerge_l.hf vr4, vr0, vr2
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	vmerge_h.hf vr1, vr0, vr1
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	vmerge_h.hf vr2, vr0, vr2
	.loc	1 48 22                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:48:22
	vadd.f.mz.rn vr3{mr1}, vr3, vr4
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	vstore_mask16.mz vr3{mr1}, -192(r30)
	vstore_mask16.mz vr1{mr1}, -128(r30)
	mfence { lm }
	loadli.w r16,  -192(r30)
	loadli.w r15,  -188(r30)
	loadli.w r14,  -184(r30)
	loadli.w r4,  -180(r30)
	loadli.w r13,  -176(r30)
	loadli.w r12,  -172(r30)
	loadli.w r3,  -168(r30)
	loadli.w r9,  -164(r30)
	loadli.w r23,  -160(r30)
	loadli.w r22,  -156(r30)
	loadli.w r21,  -152(r30)
	loadli.w r10,  -148(r30)
	loadli.w r19,  -144(r30)
	loadli.w r1,  -140(r30)
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -136(r30)
	loadli.w r2,  -132(r30)
	loadli.w r1,  -128(r30)
	loadli.w r1,  -124(r30)
	loadli.w r1,  -120(r30)
	loadli.w r1,  -116(r30)
	loadli.w r1,  -112(r30)
	loadli.w r1,  -108(r30)
	loadli.w r1,  -104(r30)
	loadli.w r1,  -100(r30)
	loadli.w r1,  -96(r30)
	loadli.w r1,  -92(r30)
	loadli.w r1,  -88(r30)
	loadli.w r1,  -84(r30)
	loadli.w r1,  -80(r30)
	loadli.w r1,  -76(r30)
	loadli.w r1,  -72(r30)
	loadli.w r1,  -68(r30)
	addli r1, zero, 0
.LBB0_10:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	add.s r5, r7, r1
	addli r1, r1, 4
	store.h zero, 0(r5)
	store.h zero, 2(r5)
	mfence { lm }
	bneq r1, r17, .LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	and r1, r16, r25
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	lui r5, 983040
	storeli.w r2, -524(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r6, r24, r1
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	or r5, r17, r5
	load.d r[17:18], -696(r30)              # 8-byte Folded Reload
	l_gm2lm r5, r7, 0(r[17:18])
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	bneq r6, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	lui r2, 1024
	storeli.w r16, -516(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	lui r2, 1024
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r5, r16, r2
	storeli.w r5, -516(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	and r7, r15, r25
	loadli.w r18,  -528(r30)                # 4-byte Folded Reload
	setlt.u r5, r24, r7
	bneq r5, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r15, -520(r30)                # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r5, r15, r2
	storeli.w r5, -520(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_4 Depth=1
	and r6, r14, r25
	lui r20, 1024
	setlt.u r5, r24, r6
	bneq r5, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r14, -504(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r2, r14, r2
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_4 Depth=1
	and r5, r4, r25
	lui r11, 522240
	setlt.u r17, r24, r5
	bneq r17, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r4, -508(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r2, r4, r20
	storeli.w r2, -508(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_4 Depth=1
	and r28, r13, r25
	setlt.u r17, r11, r28
	bneq r17, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r13, -512(r30)                # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r2, r13, r20
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_4 Depth=1
	and r27, r12, r25
	setlt.u r17, r11, r27
	bneq r17, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r12, -500(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r2, r12, r20
	storeli.w r2, -500(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_4 Depth=1
	and r26, r3, r25
	setlt.u r17, r11, r26
	bneq r17, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r3, -496(r30)                 # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r2, r3, r20
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_4 Depth=1
	and r25, r9, r25
	storeli.w r3, -556(r30)                 # 4-byte Folded Spill
	addli r3, r9, 0
	setlt.u r17, r11, r25
	bneq r17, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r9, -492(r30)                 # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r2, r9, r20
	storeli.w r2, -492(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	lui r2, 1048560
	storeli.w r23, -552(r30)                # 4-byte Folded Spill
	and r24, r23, r9
	setlt.u r17, r11, r24
	bneq r17, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r23, -488(r30)                # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r23, r20
	storeli.w r9, -488(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r22, -548(r30)                # 4-byte Folded Spill
	and r23, r22, r9
	setlt.u r17, r11, r23
	bneq r17, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r22, -484(r30)                # 4-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r22, r20
	storeli.w r9, -484(r30)                 # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r21, -544(r30)                # 4-byte Folded Spill
	and r22, r21, r9
	setlt.u r17, r11, r22
	bneq r17, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r21, -480(r30)                # 4-byte Folded Spill
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r21, r20
	storeli.w r9, -480(r30)                 # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r10, -540(r30)                # 4-byte Folded Spill
	and r21, r10, r9
	setlt.u r17, r11, r21
	bneq r17, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r10, -476(r30)                # 4-byte Folded Spill
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r10, r20
	storeli.w r9, -476(r30)                 # 4-byte Folded Spill
.LBB0_47:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r19, -536(r30)                # 4-byte Folded Spill
	and r10, r19, r9
	setlt.u r17, r11, r10
	bneq r17, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r19, -472(r30)                # 4-byte Folded Spill
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r19, r20
	storeli.w r9, -472(r30)                 # 4-byte Folded Spill
.LBB0_50:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	and r19, r18, r9
	setlt.u r17, r11, r19
	bneq r17, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r18, -468(r30)                # 4-byte Folded Spill
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r18, r20
	storeli.w r9, -468(r30)                 # 4-byte Folded Spill
.LBB0_53:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r8, -532(r30)                 # 4-byte Folded Spill
	and r18, r8, r9
	setlt.u r17, r11, r18
	bneq r17, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r8, -464(r30)                 # 4-byte Folded Spill
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r9, r8, r20
	storeli.w r9, -464(r30)                 # 4-byte Folded Spill
.LBB0_56:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -456(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -524(r30)                 # 4-byte Folded Reload
	and r17, r8, r9
	setlt.u r9, r11, r17
	beq r9, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_4 Depth=1
	or r8, r8, r20
.LBB0_58:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r9,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r1, r9, r1
	bneq r1, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r16, 16
	loadli.w r9,  -460(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r9
	and r1, r1, r2
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
.LBB0_60:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r7
	loadli.w r7,  -460(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -520(r30)                 # 4-byte Folded Spill
.LBB0_62:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r6
	bneq r1, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
.LBB0_64:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r5
	bneq r1, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
.LBB0_66:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r4,  -452(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r28
	bneq r1, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
.LBB0_68:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r27
	lui r27, 522240
	beq r1, zero, .LBB0_82
# %bb.69:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r26
	beq r1, zero, .LBB0_83
.LBB0_70:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r25
	beq r1, zero, .LBB0_84
.LBB0_71:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r24
	beq r1, zero, .LBB0_85
.LBB0_72:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r23
	beq r1, zero, .LBB0_86
.LBB0_73:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r22
	beq r1, zero, .LBB0_87
.LBB0_74:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r21
	beq r1, zero, .LBB0_88
.LBB0_75:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r10
	beq r1, zero, .LBB0_89
.LBB0_76:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r19
	beq r1, zero, .LBB0_90
.LBB0_77:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r18
	beq r1, zero, .LBB0_91
.LBB0_78:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r4, r17
	bneq r1, zero, .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -524(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r8, r1, r2
.LBB0_80:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 42 51 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	load.hu r3, -256(r30)
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r17, zero, 1
	load.hu r4, -254(r30)
	load.hu r2, -230(r30)
	load.hu r1, -228(r30)
	storeli.w r8, -556(r30)                 # 4-byte Folded Spill
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
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r17
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
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
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
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
	.loc	1 48 22                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:48:22
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	vstore_mask16.mz vr1{mr1}, -448(r30)
	mfence { lm }
	loadli.w r17,  -448(r30)
	loadli.w r25,  -444(r30)
	loadli.w r15,  -440(r30)
	loadli.w r18,  -436(r30)
	loadli.w r19,  -432(r30)
	loadli.w r6,  -428(r30)
	loadli.w r23,  -424(r30)
	loadli.w r5,  -420(r30)
	loadli.w r4,  -416(r30)
	loadli.w r11,  -412(r30)
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	and r9, r17, r1
	loadli.w r1,  -408(r30)
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
	setlt.u r1, r27, r9
	loadli.w r28,  -404(r30)
	loadli.w r26,  -400(r30)
	loadli.w r3,  -396(r30)
	loadli.w r22,  -392(r30)
	loadli.w r2,  -388(r30)
	bneq r1, zero, .LBB0_92
# %bb.81:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	addli r10, r17, 0
	j .LBB0_93
.LBB0_82:                               #   in Loop: Header=BB0_4 Depth=1
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r26
	bneq r1, zero, .LBB0_70
.LBB0_83:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r5,  -556(r30)                 # 4-byte Folded Reload
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r25
	bneq r1, zero, .LBB0_71
.LBB0_84:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r24
	bneq r1, zero, .LBB0_72
.LBB0_85:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -488(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r23
	bneq r1, zero, .LBB0_73
.LBB0_86:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -548(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -484(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r22
	bneq r1, zero, .LBB0_74
.LBB0_87:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r21
	bneq r1, zero, .LBB0_75
.LBB0_88:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -476(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r10
	bneq r1, zero, .LBB0_76
.LBB0_89:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r19
	bneq r1, zero, .LBB0_77
.LBB0_90:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -528(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -468(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r18
	bneq r1, zero, .LBB0_78
.LBB0_91:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r4, r17
	beq r1, zero, .LBB0_79
	j .LBB0_80
.LBB0_92:                               #   in Loop: Header=BB0_4 Depth=1
	or r10, r17, r20
.LBB0_93:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	and r14, r25, r1
	setlt.u r1, r27, r14
	bneq r1, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	addli r13, r25, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r13, r25, r20
.LBB0_96:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	and r7, r15, r1
	setlt.u r1, r27, r7
	bneq r1, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	addli r12, r15, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r12, r15, r20
.LBB0_99:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	and r2, r18, r1
	setlt.u r1, r27, r2
	bneq r1, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r18, -568(r30)                # 4-byte Folded Spill
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r18, r20
	storeli.w r1, -568(r30)                 # 4-byte Folded Spill
.LBB0_102:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	and r21, r19, r1
	setlt.u r1, r27, r21
	bneq r1, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r19, -588(r30)                # 4-byte Folded Spill
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r19, r20
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
.LBB0_105:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r6, -648(r30)                 # 4-byte Folded Spill
	and r8, r6, r1
	setlt.u r1, r27, r8
	beq r1, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_4 Depth=1
	or r6, r6, r20
.LBB0_107:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	lui r24, 1048560
	storeli.w r23, -644(r30)                # 4-byte Folded Spill
	and r16, r23, r1
	setlt.u r1, r27, r16
	bneq r1, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r23, -564(r30)                # 4-byte Folded Spill
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r23, r20
	storeli.w r1, -564(r30)                 # 4-byte Folded Spill
.LBB0_110:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r5, -640(r30)                 # 4-byte Folded Spill
	and r23, r5, r1
	setlt.u r1, r27, r23
	bneq r1, zero, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r5, -540(r30)                 # 4-byte Folded Spill
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r5, r20
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
.LBB0_113:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r4, -636(r30)                 # 4-byte Folded Spill
	and r5, r4, r1
	setlt.u r1, r27, r5
	bneq r1, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r4, -536(r30)                 # 4-byte Folded Spill
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r4, r20
	storeli.w r1, -536(r30)                 # 4-byte Folded Spill
.LBB0_116:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	storeli.w r3, -548(r30)                 # 4-byte Folded Spill
	and r1, r11, r1
	setlt.u r4, r27, r1
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	bneq r4, zero, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r11, -532(r30)                # 4-byte Folded Spill
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r3, r11, r20
	storeli.w r3, -532(r30)                 # 4-byte Folded Spill
.LBB0_119:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	addli r1, r11, 0
	addli r11, r13, 0
	and r4, r3, r4
	storeli.w r4, -604(r30)                 # 4-byte Folded Spill
	setlt.u r4, r27, r4
	beq r4, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_4 Depth=1
	or r3, r3, r20
.LBB0_121:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	addli r13, r10, 0
	storeli.w r3, -528(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -548(r30)                 # 4-byte Folded Reload
	and r4, r28, r4
	setlt.u r10, r27, r4
	addli r27, r28, 0
	lui r28, 522240
	storeli.w r27, -632(r30)                # 4-byte Folded Spill
	bneq r10, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r27, -524(r30)                # 4-byte Folded Spill
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r10, r27, r20
	storeli.w r10, -524(r30)                # 4-byte Folded Spill
.LBB0_124:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	storeli.w r26, -628(r30)                # 4-byte Folded Spill
	and r10, r26, r10
	storeli.w r10, -600(r30)                # 4-byte Folded Spill
	setlt.u r10, r28, r10
	beq r10, zero, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_4 Depth=1
	or r26, r26, r20
.LBB0_126:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	and r10, r3, r10
	storeli.w r10, -596(r30)                # 4-byte Folded Spill
	setlt.u r10, r28, r10
	bneq r10, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r3, -560(r30)                 # 4-byte Folded Spill
	j .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r10, r3, r20
	storeli.w r10, -560(r30)                # 4-byte Folded Spill
.LBB0_129:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	storeli.w r22, -624(r30)                # 4-byte Folded Spill
	and r10, r22, r10
	setlt.u r27, r28, r10
	bneq r27, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	addli r27, r12, 0
	j .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_4 Depth=1
	addli r27, r12, 0
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r22, r22, r20
.LBB0_132:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r12,  -456(r30)                # 4-byte Folded Reload
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	and r12, r3, r12
	storeli.w r12, -592(r30)                # 4-byte Folded Spill
	setlt.u r12, r28, r12
	beq r12, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_4 Depth=1
	or r3, r3, r20
.LBB0_134:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r12,  -452(r30)                # 4-byte Folded Reload
	addli r28, r13, 0
	addli r20, r6, 0
	addli r13, r11, 0
	setlt.u r9, r12, r9
	bneq r9, zero, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r9, r17, 16
	loadli.w r12,  -460(r30)                # 4-byte Folded Reload
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r12
	and r28, r9, r24
.LBB0_136:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r9,  -452(r30)                 # 4-byte Folded Reload
	addli r11, r1, 0
	setlt.u r9, r9, r14
	bneq r9, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r9, r25, 16
	loadli.w r12,  -460(r30)                # 4-byte Folded Reload
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r12
	and r13, r9, r24
.LBB0_138:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r9,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -564(r30)                # 4-byte Folded Reload
	loadli.w r14,  -588(r30)                # 4-byte Folded Reload
	setlt.u r7, r9, r7
	bneq r7, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r7, r15, 16
	loadli.w r9,  -460(r30)                 # 4-byte Folded Reload
	andi r7, r7, 1
	add.s r7, r15, r7
	add.s r7, r7, r9
	and r27, r7, r24
.LBB0_140:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r7,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	loadli.w r9,  -568(r30)                 # 4-byte Folded Reload
	setlt.u r2, r7, r2
	bneq r2, zero, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r2, r18, 16
	loadli.w r7,  -460(r30)                 # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r7
	and r9, r2, r24
.LBB0_142:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r21
	bneq r2, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r2, r19, 16
	loadli.w r7,  -460(r30)                 # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r7
	and r14, r2, r24
.LBB0_144:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r8
	bneq r2, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r1,  -648(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -460(r30)                 # 4-byte Folded Reload
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r2, r1, r2
	add.s r2, r2, r6
	and r20, r2, r24
.LBB0_146:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r16
	bneq r2, zero, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r1,  -644(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -460(r30)                 # 4-byte Folded Reload
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r2, r1, r2
	add.s r2, r2, r6
	and r17, r2, r24
.LBB0_148:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	lui r7, 1048560
	setlt.u r2, r2, r23
	bneq r2, zero, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r1,  -640(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -460(r30)                 # 4-byte Folded Reload
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r2, r1, r2
	add.s r2, r2, r6
	and r2, r2, r7
	storeli.w r2, -540(r30)                 # 4-byte Folded Spill
.LBB0_150:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -560(r30)                # 4-byte Folded Reload
	setlt.u r2, r2, r5
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r2, r1, r2
	add.s r2, r2, r5
	and r2, r2, r7
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
.LBB0_152:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -608(r30)                 # 4-byte Folded Reload
	setlt.u r1, r2, r1
	bneq r1, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r5
	and r1, r1, r7
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
.LBB0_154:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r2
	bneq r1, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r5
	and r1, r1, r7
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
.LBB0_156:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r1, r1, r4
	bneq r1, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r2,  -632(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r5
	and r1, r1, r7
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
.LBB0_158:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -452(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -600(r30)                 # 4-byte Folded Reload
	setlt.u r1, r2, r1
	bneq r1, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r5
	and r26, r1, r7
.LBB0_160:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -596(r30)                 # 4-byte Folded Reload
	lui r24, 522240
	setlt.u r1, r2, r1
	bneq r1, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r4,  -548(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r5
	and r23, r1, r7
.LBB0_162:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r2, r10
	bneq r1, zero, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r4,  -624(r30)                 # 4-byte Folded Reload
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r5
	and r22, r1, r7
.LBB0_164:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	setlt.u r1, r2, r1
	bneq r1, zero, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r2,  -544(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r5
	and r3, r1, r7
.LBB0_166:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r5,  -516(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -520(r30)                 # 4-byte Folded Reload
	lui r18, 258048
	addli r21, r3, 0
	loadli.w r8,  -504(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -508(r30)                # 4-byte Folded Reload
	loadli.w r15,  -704(r30)                # 4-byte Folded Reload
	loadli.w r12,  -512(r30)                # 4-byte Folded Reload
	lui r19, 256000
	loadli.w r16,  -708(r30)                # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	sub.f.rn r1, r28, r5
	sub.f.rn r2, r13, r6
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
	sub.f.rn r3, r27, r8
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r18
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r7, r4, r5
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r4, r3, r18
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r3, r3, r3
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r6, r7, r18
	.loc	2 229 17 is_stmt 0              # triton_helpers.py:229:17
	add.f.rn r4, r4, r8
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r7, r7, r7
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r3, r3, r18
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r6, r5, r6
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r5, r9, r10
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
	loadli.w r14,  -500(r30)                # 4-byte Folded Reload
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
	sub.f.rn r4, r20, r14
	loadli.w r20,  -496(r30)                # 4-byte Folded Reload
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r6, r6, r18
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
	loadli.w r17,  -712(r30)                # 4-byte Folded Reload
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
	loadli.w r20,  -492(r30)                # 4-byte Folded Reload
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r1, r1, r18
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r8, r8, r2
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r2,  -540(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r20
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r9, r9, r14
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r3, r3, r7
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r7, r8, r15
	loadli.w r15,  -716(r30)                # 4-byte Folded Reload
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
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
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
	loadli.w r14,  -488(r30)                # 4-byte Folded Reload
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
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r4,  -532(r30)                 # 4-byte Folded Reload
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r8, r10, r19
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r7, r7, r16
	loadli.w r16,  -484(r30)                # 4-byte Folded Reload
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r11, r11, r14
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r4, r4, r16
	loadli.w r14,  -720(r30)                # 4-byte Folded Reload
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
	loadli.w r13,  -724(r30)                # 4-byte Folded Reload
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
	loadli.w r16,  -480(r30)                # 4-byte Folded Reload
	add.f.rn r6, r8, r6
	.loc	2 230 38                        # triton_helpers.py:230:38
	lui r8, 267264
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r5, r5, r9
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r8, r12, r8
	.loc	2 225 21 is_stmt 1              # triton_helpers.py:225:21
	loadli.w r9,  -528(r30)                 # 4-byte Folded Reload
	sub.f.rn r9, r9, r16
	sub.f.rn r11, r11, r6
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r1, r5
	.loc	2 230 49 is_stmt 0              # triton_helpers.py:230:49
	mul.f.rn r5, r8, r15
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r8, r10, r10
	loadli.w r15,  -476(r30)                # 4-byte Folded Reload
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r10, r9, r18
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
	loadli.w r10,  -524(r30)                # 4-byte Folded Reload
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r6, r6, r12
	loadli.w r12,  -728(r30)                # 4-byte Folded Reload
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r2, r1
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r10, r10, r15
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r5, r19
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
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
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r7, r7, r7
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r8, r8, r15
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r3, r1
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r3, r4, r4
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r14
	.loc	2 229 17 is_stmt 1              # triton_helpers.py:229:17
	add.f.rn r4, r6, r5
	.loc	2 230 30                        # triton_helpers.py:230:30
	mul.f.rn r5, r11, r11
	loadli.w r14,  -472(r30)                # 4-byte Folded Reload
	loadli.w r11,  -732(r30)                # 4-byte Folded Reload
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r6, r26, r14
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
	loadli.w r13,  -468(r30)                # 4-byte Folded Reload
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
	loadli.w r12,  -736(r30)                # 4-byte Folded Reload
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
	loadli.w r13,  -464(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r10
	loadli.w r10,  -740(r30)                # 4-byte Folded Reload
	.loc	2 225 21                        # triton_helpers.py:225:21
	sub.f.rn r9, r22, r13
	.loc	2 230 15                        # triton_helpers.py:230:15
	add.f.rn r1, r4, r1
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r4, r8, r8
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r2, r2, r11
	loadli.w r11,  -744(r30)                # 4-byte Folded Reload
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
	loadli.w r12,  -556(r30)                # 4-byte Folded Reload
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
	loadli.w r3,  -652(r30)                 # 4-byte Folded Reload
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r4
	stores.w r2, 0(r3)
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	lui r2, 270336
	stores.w r2, 0(r1)
	mfence { lm, sm, gm }
	loadli.w r1,  -620(r30)                 # 4-byte Folded Reload
	csr_set csr3, r1
	sync_group
	loadli.w r2,  -700(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_294
# %bb.167:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 22 is_stmt 0                # triton_helpers.py:0:22
	loadli.w r7,  -752(r30)                 # 4-byte Folded Reload
	addli r4, zero, 0
	loads.w r2, 0(r7)
	loads.w r1, 4(r7)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r8, r2, r1
	storeli.w r2, -780(r30)                 # 4-byte Folded Spill
	slli r2, r8, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r8
	setle.f r6, r8, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r8, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r8
.LBB0_169:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 8(r7)
	storeli.w r3, -800(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r9, r8, r1
	slli r2, r9, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r9
	setle.f r6, r9, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r9, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r9
.LBB0_171:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 12(r7)
	storeli.w r3, -816(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r9, r1
	slli r2, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r10
	setle.f r6, r10, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r10, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r10
.LBB0_173:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 16(r7)
	storeli.w r3, -828(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r10, r1
	slli r2, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r11
	setle.f r6, r11, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r11, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r11
.LBB0_175:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 20(r7)
	storeli.w r3, -844(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r11, r1
	slli r2, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r12
	setle.f r6, r12, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r12, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r12
.LBB0_177:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 24(r7)
	storeli.w r3, -860(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r12, r1
	slli r2, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r13
	setle.f r6, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r13, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r13
.LBB0_179:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 28(r7)
	storeli.w r3, -876(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r13, r1
	slli r2, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r14
	setle.f r6, r14, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r14, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r14
.LBB0_181:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 32(r7)
	storeli.w r3, -896(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r15, r14, r1
	slli r2, r15, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r15
	setle.f r6, r15, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r15, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r15
.LBB0_183:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 36(r7)
	storeli.w r3, -912(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r15, r1
	slli r2, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r16
	setle.f r6, r16, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r16, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r16
.LBB0_185:                              #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 40(r7)
	storeli.w r8, -768(r30)                 # 4-byte Folded Spill
	storeli.w r3, -464(r30)                 # 4-byte Folded Spill
	storeli.w r15, -880(r30)                # 4-byte Folded Spill
	storeli.w r14, -864(r30)                # 4-byte Folded Spill
	storeli.w r13, -856(r30)                # 4-byte Folded Spill
	storeli.w r12, -840(r30)                # 4-byte Folded Spill
	storeli.w r11, -820(r30)                # 4-byte Folded Spill
	storeli.w r10, -804(r30)                # 4-byte Folded Spill
	storeli.w r9, -784(r30)                 # 4-byte Folded Spill
	storeli.w r16, -900(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r8, r16, r1
	slli r2, r8, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r8
	setle.f r6, r8, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r8, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r8
.LBB0_187:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -612(r30)                 # 4-byte Folded Reload
	loads.w r22, 44(r7)
	storeli.w r3, -468(r30)                 # 4-byte Folded Spill
	loads.w r6, 212(r7)
	storeli.w r8, -916(r30)                 # 4-byte Folded Spill
	loads.w r11, 48(r7)
	loads.w r5, 52(r7)
	loads.w r20, 56(r7)
	loads.w r28, 60(r7)
	loads.w r19, 64(r7)
	loads.w r26, 68(r7)
	loads.w r25, 72(r7)
	loads.w r24, 76(r7)
	loads.w r14, 80(r7)
	loads.w r12, 84(r7)
	loads.w r27, 100(r7)
	loads.w r18, 104(r7)
	loads.w r15, 116(r7)
	loads.w r21, 136(r7)
	loads.w r17, 184(r7)
	loads.w r16, 204(r7)
	loads.w r1, 0(r2)
	loads.w r3, 96(r2)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r8, r22
	storeli.w r6, -1352(r30)                # 4-byte Folded Spill
	loads.w r6, 216(r7)
	loads.w r8, 92(r7)
	storeli.w r1, -1136(r30)                # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r3, -1108(r30)                # 4-byte Folded Spill
	loads.w r3, 88(r7)
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r9, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r10, r13, 23
	storeli.w r6, -1348(r30)                # 4-byte Folded Spill
	loads.w r6, 220(r7)
	storeli.w r1, -1140(r30)                # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r6, -1336(r30)                # 4-byte Folded Spill
	loads.w r6, 224(r7)
	storeli.w r1, -1132(r30)                # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r6, -1328(r30)                # 4-byte Folded Spill
	loads.w r6, 228(r7)
	storeli.w r1, -1120(r30)                # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r6, -1320(r30)                # 4-byte Folded Spill
	loads.w r6, 232(r7)
	storeli.w r1, -1112(r30)                # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r6, -1312(r30)                # 4-byte Folded Spill
	loads.w r6, 236(r7)
	storeli.w r1, -1104(r30)                # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r6, -1292(r30)                # 4-byte Folded Spill
	loads.w r6, 240(r7)
	storeli.w r1, -1096(r30)                # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r6, -1284(r30)                # 4-byte Folded Spill
	loads.w r6, 244(r7)
	storeli.w r1, -1084(r30)                # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r6, -1280(r30)                # 4-byte Folded Spill
	loads.w r6, 248(r7)
	storeli.w r1, -1076(r30)                # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r6, -1252(r30)                # 4-byte Folded Spill
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r4, r13
	storeli.w r1, -1224(r30)                # 4-byte Folded Spill
	loads.w r1, 40(r2)
	and r6, r9, r6
	storeli.w r1, -1216(r30)                # 4-byte Folded Spill
	loads.w r1, 44(r2)
	storeli.w r1, -1212(r30)                # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r1, -1200(r30)                # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r1, -1192(r30)                # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r1, -1184(r30)                # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r1, -1176(r30)                # 4-byte Folded Spill
	loads.w r1, 64(r2)
	storeli.w r1, -1168(r30)                # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r1, -1156(r30)                # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r1, -1144(r30)                # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r1, -1196(r30)                # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r1, -1180(r30)                # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -1164(r30)                # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -1148(r30)                # 4-byte Folded Spill
	loads.w r1, 92(r2)
	.loc	2 226 28                        # triton_helpers.py:226:28
	storeli.w r1, -1124(r30)                # 4-byte Folded Spill
	slli r1, r13, 9
	seteq r23, r1, r4
	loads.w r1, 100(r2)
	storeli.w r1, -1088(r30)                # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -1072(r30)                # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -1056(r30)                # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -1048(r30)                # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -1040(r30)                # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -1028(r30)                # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -1020(r30)                # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -1012(r30)                # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -1000(r30)                # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -992(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -984(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -972(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -964(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -952(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -944(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -932(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -924(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -908(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -888(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -872(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -848(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -812(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -792(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -760(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -648(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -560(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -536(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -616(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -1288(r30)                # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -1296(r30)                # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -1236(r30)                # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -1232(r30)                # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -1228(r30)                # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -1220(r30)                # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -1208(r30)                # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -1204(r30)                # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -1188(r30)                # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -1172(r30)                # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -1160(r30)                # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -1152(r30)                # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -1128(r30)                # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -1116(r30)                # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -1100(r30)                # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -1092(r30)                # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -1080(r30)                # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -1068(r30)                # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -1064(r30)                # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -1052(r30)                # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -1044(r30)                # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -1036(r30)                # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -1032(r30)                # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -1024(r30)                # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -1016(r30)                # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -1008(r30)                # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -1004(r30)                # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -996(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -980(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -976(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -968(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -960(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -956(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -948(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -940(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -936(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -928(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -920(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -904(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -892(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -884(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -868(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -852(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -836(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -824(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -808(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -796(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -788(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -772(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -764(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -756(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -644(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -632(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -624(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -604(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -600(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -568(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -564(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -556(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r7)
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r7)
	storeli.w r1, -1332(r30)                # 4-byte Folded Spill
	loads.w r1, 112(r7)
	storeli.w r1, -1340(r30)                # 4-byte Folded Spill
	loads.w r1, 120(r7)
	storeli.w r1, -1356(r30)                # 4-byte Folded Spill
	loads.w r1, 124(r7)
	storeli.w r1, -1364(r30)                # 4-byte Folded Spill
	loads.w r1, 128(r7)
	storeli.w r1, -1372(r30)                # 4-byte Folded Spill
	loads.w r1, 132(r7)
	storeli.w r1, -1368(r30)                # 4-byte Folded Spill
	loads.w r1, 140(r7)
	storeli.w r1, -1388(r30)                # 4-byte Folded Spill
	loads.w r1, 144(r7)
	storeli.w r1, -1408(r30)                # 4-byte Folded Spill
	loads.w r1, 148(r7)
	storeli.w r1, -1412(r30)                # 4-byte Folded Spill
	loads.w r1, 152(r7)
	storeli.w r1, -1404(r30)                # 4-byte Folded Spill
	loads.w r1, 156(r7)
	storeli.w r1, -1432(r30)                # 4-byte Folded Spill
	loads.w r1, 160(r7)
	storeli.w r1, -1420(r30)                # 4-byte Folded Spill
	loads.w r1, 164(r7)
	storeli.w r1, -1428(r30)                # 4-byte Folded Spill
	loads.w r1, 168(r7)
	storeli.w r1, -1436(r30)                # 4-byte Folded Spill
	loads.w r1, 172(r7)
	storeli.w r1, -1444(r30)                # 4-byte Folded Spill
	loads.w r1, 176(r7)
	storeli.w r1, -1452(r30)                # 4-byte Folded Spill
	loads.w r1, 180(r7)
	storeli.w r1, -1460(r30)                # 4-byte Folded Spill
	loads.w r1, 188(r7)
	storeli.w r1, -1472(r30)                # 4-byte Folded Spill
	loads.w r1, 192(r7)
	storeli.w r1, -1484(r30)                # 4-byte Folded Spill
	loads.w r1, 196(r7)
	storeli.w r1, -1380(r30)                # 4-byte Folded Spill
	loads.w r1, 200(r7)
	storeli.w r1, -1360(r30)                # 4-byte Folded Spill
	loads.w r1, 208(r7)
	loads.w r7, 252(r7)
	storeli.w r7, -1384(r30)                # 4-byte Folded Spill
	andi r7, r10, 255
	setlti r7, r7, 255
	or r7, r7, r23
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r6, r7
	addli r7, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r6, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r7, r22, r13
.LBB0_189:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r13, r11
	storeli.w r7, -472(r30)                 # 4-byte Folded Spill
	storeli.w r13, -1060(r30)               # 4-byte Folded Spill
	slli r6, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r9, r4, r10
	setle.f r22, r10, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r7, r10, 23
	seteq r6, r6, r4
	andi r7, r7, 255
	setlti r7, r7, 255
	or r6, r7, r6
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r7, r22, r9
	and r6, r7, r6
	addli r7, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r6, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r7, r11, r10
.LBB0_191:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r10, r5
	storeli.w r7, -476(r30)                 # 4-byte Folded Spill
	slli r6, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r9, r4, r13
	setle.f r11, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r7, r13, 23
	seteq r6, r6, r4
	andi r7, r7, 255
	setlti r7, r7, 255
	or r6, r7, r6
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r7, r11, r9
	and r6, r7, r6
	addli r7, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r6, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r7, r5, r13
.LBB0_193:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r22, r13, r20
	storeli.w r7, -480(r30)                 # 4-byte Folded Spill
	storeli.w r1, -1396(r30)                # 4-byte Folded Spill
	slli r5, r22, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r22
	setle.f r9, r22, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r22, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r20, r22
.LBB0_195:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r22, r28
	storeli.w r6, -484(r30)                 # 4-byte Folded Spill
	storeli.w r22, -1248(r30)               # 4-byte Folded Spill
	slli r5, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r20
	setle.f r9, r20, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r20, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r28, r20
.LBB0_197:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r22, r20, r19
	storeli.w r6, -488(r30)                 # 4-byte Folded Spill
	slli r5, r22, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r22
	setle.f r9, r22, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r22, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r19, r22
.LBB0_199:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r19, r22, r26
	storeli.w r6, -492(r30)                 # 4-byte Folded Spill
	addli r28, r21, 0
	slli r5, r19, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r19
	setle.f r9, r19, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r19, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_201
# %bb.200:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r26, r19
.LBB0_201:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r23, r19, r25
	storeli.w r6, -520(r30)                 # 4-byte Folded Spill
	addli r21, r18, 0
	slli r5, r23, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r23
	setle.f r9, r23, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r23, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r25, r23
.LBB0_203:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r23, r24
	storeli.w r6, -496(r30)                 # 4-byte Folded Spill
	addli r26, r15, 0
	slli r5, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r25
	setle.f r9, r25, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r25, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r24, r25
.LBB0_205:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r25, r14
	storeli.w r6, -500(r30)                 # 4-byte Folded Spill
	addli r15, r27, 0
	slli r5, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r24
	setle.f r9, r24, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r24, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_207
# %bb.206:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r14, r24
.LBB0_207:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r1, r24, r12
	storeli.w r6, -504(r30)                 # 4-byte Folded Spill
	slli r5, r1, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r1
	setle.f r9, r1, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r1, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r12, r1
.LBB0_209:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r1, r3
	storeli.w r6, -508(r30)                 # 4-byte Folded Spill
	loadli.w r14,  -1408(r30)               # 4-byte Folded Reload
	storeli.w r17, -1476(r30)               # 4-byte Folded Spill
	slli r5, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r4, r12
	setle.f r9, r12, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r6, r12, 23
	seteq r5, r5, r4
	andi r6, r6, 255
	setlti r6, r6, 255
	or r5, r6, r5
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r6, r9, r7
	and r5, r6, r5
	addli r6, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r5, zero, .LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r6, r3, r12
.LBB0_211:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r9, r12, r8
	storeli.w r6, -1300(r30)                # 4-byte Folded Spill
	loadli.w r27,  -1372(r30)               # 4-byte Folded Reload
	loadli.w r17,  -1340(r30)               # 4-byte Folded Reload
	loadli.w r18,  -1332(r30)               # 4-byte Folded Reload
	slli r3, r9, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r4, r9
	setle.f r7, r9, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r5, r9, 23
	seteq r3, r3, r4
	andi r5, r5, 255
	setlti r5, r5, 255
	or r3, r5, r3
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r5, r7, r6
	and r3, r5, r3
	addli r5, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r3, zero, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r5, r8, r9
.LBB0_213:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r8, r9, r2
	storeli.w r5, -512(r30)                 # 4-byte Folded Spill
	storeli.w r16, -1504(r30)               # 4-byte Folded Spill
	slli r3, r8, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r4, r8
	setle.f r7, r8, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r5, r8, 23
	seteq r3, r3, r4
	andi r5, r5, 255
	setlti r5, r5, 255
	or r3, r5, r3
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r5, r7, r6
	and r3, r5, r3
	addli r5, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r3, zero, .LBB0_215
# %bb.214:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r5, r2, r8
.LBB0_215:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r8, r15
	storeli.w r5, -516(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -1368(r30)                # 4-byte Folded Reload
	loadli.w r16,  -1356(r30)               # 4-byte Folded Reload
	slli r2, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r11
	setle.f r6, r11, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r11, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_217
# %bb.216:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r15, r11
.LBB0_217:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r15, r11, r21
	storeli.w r3, -1316(r30)                # 4-byte Folded Spill
	slli r2, r15, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r15
	setle.f r6, r15, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r15, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r21, r15
.LBB0_219:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r15, -1308(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r15, r15, r18
	storeli.w r3, -1324(r30)                # 4-byte Folded Spill
	slli r2, r15, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r15
	setle.f r6, r15, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r15, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r18, r15
.LBB0_221:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r15, r17
	storeli.w r3, -1332(r30)                # 4-byte Folded Spill
	slli r2, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r18
	setle.f r6, r18, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r18, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r17, r18
.LBB0_223:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r17, r18, r26
	storeli.w r3, -1340(r30)                # 4-byte Folded Spill
	slli r2, r17, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r17
	setle.f r6, r17, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r17, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r26, r17
.LBB0_225:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r26, r17, r16
	storeli.w r3, -1344(r30)                # 4-byte Folded Spill
	slli r2, r26, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r26
	setle.f r6, r26, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r26, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r16, r26
.LBB0_227:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r1, -1276(r30)                # 4-byte Folded Spill
	loadli.w r1,  -1364(r30)                # 4-byte Folded Reload
	storeli.w r3, -1356(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r26, r1
	slli r2, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r4, r16
	setle.f r6, r16, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r16, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r16
.LBB0_229:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r16, r27
	storeli.w r3, -1364(r30)                # 4-byte Folded Spill
	slli r1, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r6
	setle.f r5, r6, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r6, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r27, r6
.LBB0_231:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r27, r6, r7
	storeli.w r2, -1372(r30)                # 4-byte Folded Spill
	slli r1, r27, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r27
	setle.f r5, r27, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r27, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r27
.LBB0_233:                              #   in Loop: Header=BB0_4 Depth=1
	addli r7, r28, 0
	storeli.w r2, -1376(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r28, r27, r7
	slli r1, r28, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r28
	setle.f r5, r28, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r28, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r28
.LBB0_235:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r10, -1240(r30)               # 4-byte Folded Spill
	loadli.w r10,  -1388(r30)               # 4-byte Folded Reload
	storeli.w r28, -1368(r30)               # 4-byte Folded Spill
	storeli.w r3, -1392(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r28, r28, r10
	slli r1, r28, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r28
	setle.f r5, r28, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r28, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r10, r28
.LBB0_237:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r28, r14
	storeli.w r2, -1400(r30)                # 4-byte Folded Spill
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r10
	setle.f r5, r10, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r10
.LBB0_239:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r13, -1244(r30)               # 4-byte Folded Spill
	loadli.w r13,  -1412(r30)               # 4-byte Folded Reload
	storeli.w r10, -1388(r30)               # 4-byte Folded Spill
	storeli.w r3, -1408(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r10, r10, r13
	slli r1, r10, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r10
	setle.f r5, r10, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r10, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r13, r10
.LBB0_241:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -1404(r30)               # 4-byte Folded Reload
	storeli.w r2, -1416(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r10, r14
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r13
.LBB0_243:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -1432(r30)               # 4-byte Folded Reload
	storeli.w r13, -1404(r30)               # 4-byte Folded Spill
	storeli.w r3, -1424(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r13, r14
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r2
.LBB0_245:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -1420(r30)               # 4-byte Folded Reload
	storeli.w r3, -1432(r30)                # 4-byte Folded Spill
	storeli.w r2, -1412(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r2, r14
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r13
.LBB0_247:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1428(r30)                # 4-byte Folded Reload
	storeli.w r13, -1420(r30)               # 4-byte Folded Spill
	storeli.w r3, -1440(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r13, r7
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r2
.LBB0_249:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1436(r30)                # 4-byte Folded Reload
	storeli.w r3, -1448(r30)                # 4-byte Folded Spill
	storeli.w r2, -1428(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r2, r7
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_251
# %bb.250:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r13
.LBB0_251:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1444(r30)                # 4-byte Folded Reload
	storeli.w r13, -1436(r30)               # 4-byte Folded Spill
	storeli.w r3, -1456(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r13, r7
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	addli r2, r13, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r7, r2
.LBB0_253:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -1452(r30)               # 4-byte Folded Reload
	storeli.w r3, -1464(r30)                # 4-byte Folded Spill
	storeli.w r2, -1444(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1476(r30)                # 4-byte Folded Reload
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r2, r14
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r13
.LBB0_255:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r19, -1260(r30)               # 4-byte Folded Spill
	loadli.w r19,  -1460(r30)               # 4-byte Folded Reload
	storeli.w r13, -1452(r30)               # 4-byte Folded Spill
	storeli.w r3, -1468(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r13, r19
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r5, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	addli r2, r13, 0
	loadli.w r13,  -1312(r30)               # 4-byte Folded Reload
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r19, r2
.LBB0_257:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r19, r2, r7
	storeli.w r3, -1480(r30)                # 4-byte Folded Spill
	storeli.w r2, -1460(r30)                # 4-byte Folded Spill
	storeli.w r23, -1264(r30)               # 4-byte Folded Spill
	slli r1, r19, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r19
	setle.f r5, r19, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r19, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r19
.LBB0_259:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -1472(r30)               # 4-byte Folded Reload
	storeli.w r2, -1488(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r23, r19, r14
	slli r1, r23, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r23
	setle.f r5, r23, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r23, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r23
.LBB0_261:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1484(r30)                # 4-byte Folded Reload
	storeli.w r23, -1476(r30)               # 4-byte Folded Spill
	storeli.w r3, -1496(r30)                # 4-byte Folded Spill
	storeli.w r11, -1304(r30)               # 4-byte Folded Spill
	storeli.w r25, -1268(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r23, r23, r7
	slli r1, r23, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r23
	setle.f r5, r23, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r23, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r23
.LBB0_263:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -1380(r30)               # 4-byte Folded Reload
	storeli.w r2, -1500(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r23, r11
	slli r1, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r25
	setle.f r5, r25, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r25, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r25
.LBB0_265:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r24, -1272(r30)               # 4-byte Folded Spill
	loadli.w r24,  -1360(r30)               # 4-byte Folded Reload
	storeli.w r25, -1492(r30)               # 4-byte Folded Spill
	storeli.w r3, -1512(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1396(r30)                # 4-byte Folded Reload
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r25, r24
	slli r1, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r25
	setle.f r5, r25, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r25, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r24, r25
.LBB0_267:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -1504(r30)               # 4-byte Folded Reload
	storeli.w r2, -1520(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r25, r11
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r24
	setle.f r5, r24, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r24
.LBB0_269:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r24, -1508(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r24, r7
	storeli.w r3, -1528(r30)                # 4-byte Folded Spill
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r24
	setle.f r5, r24, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r24
.LBB0_271:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -1352(r30)               # 4-byte Folded Reload
	storeli.w r19, -1472(r30)               # 4-byte Folded Spill
	storeli.w r2, -1536(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r19, r24, r11
	slli r1, r19, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r19
	setle.f r5, r19, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r19, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r4, 0
	and r1, r2, r1
	addli r2, r19, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r2
.LBB0_273:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r6, -1352(r30)                # 4-byte Folded Spill
	loadli.w r6,  -1348(r30)                # 4-byte Folded Reload
	storeli.w r3, -1544(r30)                # 4-byte Folded Spill
	storeli.w r2, -1524(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1280(r30)                # 4-byte Folded Reload
	storeli.w r22, -1256(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r2, r6
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r11
	setle.f r5, r11, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r6, r11
.LBB0_275:                              #   in Loop: Header=BB0_4 Depth=1
	addli r22, r20, 0
	loadli.w r20,  -1336(r30)               # 4-byte Folded Reload
	storeli.w r2, -1552(r30)                # 4-byte Folded Spill
	storeli.w r11, -1532(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r5, r11, r20
	slli r1, r5, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r5
	setle.f r6, r5, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r5, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	addli r3, r4, 0
	and r1, r2, r1
	addli r2, r5, 0
	loadli.w r5,  -1384(r30)                # 4-byte Folded Reload
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_277
# %bb.276:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r20, r2
.LBB0_277:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -1328(r30)               # 4-byte Folded Reload
	storeli.w r3, -1560(r30)                # 4-byte Folded Spill
	storeli.w r2, -1540(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r2, r11
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r14
	setle.f r6, r14, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_279
# %bb.278:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r14
.LBB0_279:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -1320(r30)               # 4-byte Folded Reload
	storeli.w r14, -1548(r30)               # 4-byte Folded Spill
	storeli.w r3, -1568(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r14, r11
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r14
	setle.f r6, r14, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r11, r14
.LBB0_281:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r14, r13
	storeli.w r2, -1576(r30)                # 4-byte Folded Spill
	addli r19, r9, 0
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r11
	setle.f r6, r11, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_283
# %bb.282:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r13, r11
.LBB0_283:                              #   in Loop: Header=BB0_4 Depth=1
	addli r21, r8, 0
	loadli.w r8,  -1292(r30)                # 4-byte Folded Reload
	storeli.w r2, -1580(r30)                # 4-byte Folded Spill
	addli r9, r12, 0
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r13, r11, r8
	slli r1, r13, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r13
	setle.f r6, r13, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r13, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r8, r13
.LBB0_285:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r8,  -1284(r30)                # 4-byte Folded Reload
	storeli.w r2, -1588(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r13, r8
	slli r1, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r12
	setle.f r6, r12, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r12, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r8, r12
.LBB0_287:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r12, -1584(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r12, r12, r7
	storeli.w r3, -1600(r30)                # 4-byte Folded Spill
	slli r1, r12, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r12
	setle.f r6, r12, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r12, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r4, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_289
# %bb.288:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r12
.LBB0_289:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r8,  -1252(r30)                # 4-byte Folded Reload
	storeli.w r2, -1604(r30)                # 4-byte Folded Spill
	storeli.w r21, -1292(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r12, r8
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r4, r7
	setle.f r6, r7, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r4
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r3
	addli r3, r4, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_291
# %bb.290:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r8, r7
.LBB0_291:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r1, r7, r5
	storeli.w r3, -1608(r30)                # 4-byte Folded Spill
	storeli.w r12, -1592(r30)               # 4-byte Folded Spill
	storeli.w r13, -1572(r30)               # 4-byte Folded Spill
	storeli.w r11, -1564(r30)               # 4-byte Folded Spill
	storeli.w r14, -1556(r30)               # 4-byte Folded Spill
	storeli.w r24, -1516(r30)               # 4-byte Folded Spill
	storeli.w r25, -1504(r30)               # 4-byte Folded Spill
	storeli.w r23, -1484(r30)               # 4-byte Folded Spill
	storeli.w r10, -1396(r30)               # 4-byte Folded Spill
	storeli.w r28, -1380(r30)               # 4-byte Folded Spill
	storeli.w r27, -1360(r30)               # 4-byte Folded Spill
	storeli.w r16, -1348(r30)               # 4-byte Folded Spill
	storeli.w r26, -1336(r30)               # 4-byte Folded Spill
	storeli.w r17, -1328(r30)               # 4-byte Folded Spill
	storeli.w r18, -1320(r30)               # 4-byte Folded Spill
	storeli.w r15, -1312(r30)               # 4-byte Folded Spill
	storeli.w r19, -1284(r30)               # 4-byte Folded Spill
	storeli.w r9, -1280(r30)                # 4-byte Folded Spill
	storeli.w r22, -1252(r30)               # 4-byte Folded Spill
	storeli.w r7, -1596(r30)                # 4-byte Folded Spill
	slli r2, r1, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r4, r1
	setle.f r8, r1, r4
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r1, 23
	seteq r2, r2, r4
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r8, r6
	and r2, r3, r2
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r4, r5, r1
.LBB0_293:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -1288(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1296(r30)                # 4-byte Folded Reload
	loadli.w r5,  -1136(r30)                # 4-byte Folded Reload
	loadli.w r11,  -800(r30)                # 4-byte Folded Reload
	loadli.w r18,  -816(r30)                # 4-byte Folded Reload
	loadli.w r7,  -828(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -844(r30)                # 4-byte Folded Reload
	loadli.w r9,  -860(r30)                 # 4-byte Folded Reload
	loadli.w r15,  -876(r30)                # 4-byte Folded Reload
	loadli.w r10,  -896(r30)                # 4-byte Folded Reload
	loadli.w r24,  -912(r30)                # 4-byte Folded Reload
	loadli.w r28,  -780(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	loadli.w r3,  -752(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r3)
	loadli.w r1,  -1140(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r5
	storeli.w r2, -1288(r30)                # 4-byte Folded Spill
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r1, r11
	add.f.rn r3, r5, r3
	loadli.w r5,  -1132(r30)                # 4-byte Folded Reload
	sub.f.rn r19, r5, r3
	loadli.w r5,  -1120(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r18, r19
	mul.f.rn r19, r19, r19
	add.f.rn r3, r3, r6
	sub.f.rn r14, r5, r3
	loadli.w r5,  -1112(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r7, r14
	mul.f.rn r14, r14, r14
	add.f.rn r3, r3, r6
	sub.f.rn r21, r5, r3
	loadli.w r5,  -1104(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r16, r21
	mul.f.rn r21, r21, r21
	add.f.rn r3, r3, r6
	sub.f.rn r17, r5, r3
	loadli.w r5,  -1096(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r9, r17
	mul.f.rn r17, r17, r17
	add.f.rn r3, r3, r6
	sub.f.rn r22, r5, r3
	loadli.w r5,  -1084(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r15, r22
	mul.f.rn r22, r22, r22
	add.f.rn r3, r3, r6
	sub.f.rn r25, r5, r3
	loadli.w r5,  -1076(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r10, r25
	add.f.rn r3, r3, r6
	sub.f.rn r6, r5, r3
	loadli.w r5,  -1224(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r24, r6
	mul.f.rn r6, r6, r6
	add.f.rn r3, r3, r8
	sub.f.rn r13, r5, r3
	loadli.w r5,  -1216(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r2, r13
	loadli.w r2,  -468(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r13, r13
	add.f.rn r3, r3, r8
	sub.f.rn r23, r5, r3
	loadli.w r5,  -1212(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r2, r23
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r8
	sub.f.rn r26, r5, r3
	loadli.w r5,  -1200(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r2, r26
	loadli.w r2,  -476(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r8
	sub.f.rn r27, r5, r3
	loadli.w r5,  -1192(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r2, r27
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r8
	sub.f.rn r5, r5, r3
	mul.f.rn r8, r2, r5
	storeli.w r5, -1096(r30)                # 4-byte Folded Spill
	loadli.w r5,  -1184(r30)                # 4-byte Folded Reload
	loadli.w r2,  -484(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r8
	sub.f.rn r5, r5, r3
	mul.f.rn r8, r2, r5
	storeli.w r5, -1084(r30)                # 4-byte Folded Spill
	loadli.w r5,  -1176(r30)                # 4-byte Folded Reload
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r8
	sub.f.rn r8, r5, r3
	loadli.w r5,  -1168(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r2, r8
	mul.f.rn r8, r8, r8
	add.f.rn r3, r3, r12
	sub.f.rn r12, r5, r3
	loadli.w r5,  -492(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r5, r12
	loadli.w r5,  -520(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r12, r12
	add.f.rn r20, r3, r20
	loadli.w r3,  -1156(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r20
	mul.f.rn r5, r5, r3
	mul.f.rn r3, r3, r3
	add.f.rn r5, r20, r5
	mul.f.rn r20, r1, r1
	loadli.w r1,  -1144(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r1, r5
	mul.f.rn r20, r20, r28
	loadli.w r1,  -496(r30)                 # 4-byte Folded Reload
	mul.f.rn r28, r1, r2
	mul.f.rn r20, r20, r11
	storeli.w r2, -1076(r30)                # 4-byte Folded Spill
	loadli.w r1,  -1288(r30)                # 4-byte Folded Reload
	loadli.w r2,  -768(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -1236(r30)               # 4-byte Folded Reload
	mul.f.rn r19, r2, r19
	loadli.w r2,  -1196(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r28
	add.f.rn r20, r1, r20
	loadli.w r1,  -500(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r18, r19
	loadli.w r18,  -1356(r30)               # 4-byte Folded Reload
	sub.f.rn r2, r2, r5
	add.f.rn r20, r11, r20
	loadli.w r11,  -1232(r30)               # 4-byte Folded Reload
	mul.f.rn r28, r1, r2
	add.f.rn r19, r20, r19
	loadli.w r20,  -784(r30)                # 4-byte Folded Reload
	loadli.w r1,  -504(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	mul.f.rn r20, r20, r14
	add.f.rn r5, r5, r28
	add.f.rn r19, r11, r19
	loadli.w r11,  -1180(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r7, r20
	loadli.w r7,  -1228(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r11, r5
	loadli.w r11,  -804(r30)                # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	mul.f.rn r20, r11, r21
	loadli.w r11,  -820(r30)                # 4-byte Folded Reload
	mul.f.rn r28, r1, r14
	mul.f.rn r17, r11, r17
	loadli.w r1,  -508(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r14, r14
	loadli.w r11,  -1372(r30)               # 4-byte Folded Reload
	add.f.rn r19, r7, r19
	mul.f.rn r20, r16, r20
	loadli.w r7,  -1164(r30)                # 4-byte Folded Reload
	loadli.w r16,  -1364(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r28
	mul.f.rn r17, r9, r17
	loadli.w r9,  -1300(r30)                # 4-byte Folded Reload
	loadli.w r28,  -1332(r30)               # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	sub.f.rn r7, r7, r5
	mul.f.rn r20, r1, r7
	storeli.w r7, -768(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -1220(r30)                # 4-byte Folded Reload
	add.f.rn r19, r7, r19
	loadli.w r7,  -840(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	mul.f.rn r20, r25, r25
	add.f.rn r17, r19, r17
	mul.f.rn r19, r7, r22
	loadli.w r7,  -1148(r30)                # 4-byte Folded Reload
	loadli.w r22,  -1344(r30)               # 4-byte Folded Reload
	sub.f.rn r1, r7, r5
	loadli.w r7,  -1208(r30)                # 4-byte Folded Reload
	add.f.rn r17, r7, r17
	mul.f.rn r19, r15, r19
	loadli.w r7,  -856(r30)                 # 4-byte Folded Reload
	mul.f.rn r25, r9, r1
	storeli.w r1, -780(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -512(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r17, r19
	mul.f.rn r19, r7, r20
	loadli.w r7,  -1204(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r23, r23
	loadli.w r23,  -1340(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r25
	add.f.rn r17, r7, r17
	loadli.w r7,  -1124(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r10, r19
	loadli.w r10,  -1376(r30)               # 4-byte Folded Reload
	sub.f.rn r25, r7, r5
	loadli.w r7,  -864(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r17, r19
	mul.f.rn r6, r7, r6
	loadli.w r7,  -1188(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r1, r25
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r7, r17
	loadli.w r7,  -880(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r19
	mul.f.rn r19, r24, r6
	loadli.w r6,  -1108(r30)                # 4-byte Folded Reload
	mul.f.rn r13, r7, r13
	loadli.w r7,  -1172(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r5
	add.f.rn r17, r17, r19
	mul.f.rn r19, r1, r6
	loadli.w r1,  -464(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r7, r17
	loadli.w r7,  -900(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r1, r13
	loadli.w r1,  -468(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r19
	mul.f.rn r19, r26, r26
	loadli.w r26,  -1316(r30)               # 4-byte Folded Reload
	add.f.rn r13, r17, r13
	mul.f.rn r17, r7, r20
	loadli.w r7,  -1088(r30)                # 4-byte Folded Reload
	sub.f.rn r21, r7, r5
	loadli.w r7,  -1160(r30)                # 4-byte Folded Reload
	add.f.rn r13, r7, r13
	mul.f.rn r17, r1, r17
	loadli.w r7,  -916(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -472(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r26, r21
	mul.f.rn r21, r21, r21
	add.f.rn r13, r13, r17
	mul.f.rn r17, r7, r19
	loadli.w r7,  -1152(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	mul.f.rn r20, r27, r27
	loadli.w r27,  -1324(r30)               # 4-byte Folded Reload
	add.f.rn r19, r7, r13
	loadli.w r7,  -1072(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r1, r17
	loadli.w r1,  -476(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r7, r5
	loadli.w r7,  -1060(r30)                # 4-byte Folded Reload
	add.f.rn r17, r19, r17
	mul.f.rn r19, r7, r20
	loadli.w r7,  -1128(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r27, r13
	mul.f.rn r13, r13, r13
	mul.f.rn r19, r1, r19
	loadli.w r1,  -1096(r30)                # 4-byte Folded Reload
	add.f.rn r17, r7, r17
	loadli.w r7,  -1056(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	mul.f.rn r20, r1, r1
	loadli.w r1,  -480(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r17, r19
	sub.f.rn r24, r7, r5
	loadli.w r7,  -1240(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r7, r20
	loadli.w r7,  -1116(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r28, r24
	add.f.rn r17, r7, r17
	loadli.w r7,  -1244(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r1, r19
	loadli.w r1,  -1084(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r1, r1
	add.f.rn r5, r5, r20
	loadli.w r1,  -484(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r17, r19
	mul.f.rn r19, r7, r15
	loadli.w r7,  -1048(r30)                # 4-byte Folded Reload
	sub.f.rn r15, r7, r5
	loadli.w r7,  -1100(r30)                # 4-byte Folded Reload
	add.f.rn r17, r7, r17
	mul.f.rn r19, r1, r19
	loadli.w r7,  -1248(r30)                # 4-byte Folded Reload
	loadli.w r1,  -488(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r23, r15
	mul.f.rn r8, r7, r8
	loadli.w r7,  -1092(r30)                # 4-byte Folded Reload
	add.f.rn r17, r17, r19
	add.f.rn r5, r5, r20
	mul.f.rn r19, r1, r8
	loadli.w r1,  -492(r30)                 # 4-byte Folded Reload
	add.f.rn r17, r7, r17
	loadli.w r7,  -1040(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r7, r5
	loadli.w r7,  -1252(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r7, r12
	add.f.rn r17, r17, r19
	loadli.w r7,  -1080(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r22, r8
	mul.f.rn r8, r8, r8
	add.f.rn r17, r7, r17
	mul.f.rn r12, r1, r12
	loadli.w r7,  -1256(r30)                # 4-byte Folded Reload
	loadli.w r1,  -520(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r19
	add.f.rn r12, r17, r12
	mul.f.rn r17, r7, r3
	loadli.w r3,  -1028(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1068(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r17, r1, r17
	loadli.w r1,  -1076(r30)                # 4-byte Folded Reload
	add.f.rn r12, r7, r12
	loadli.w r7,  -1260(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	mul.f.rn r19, r18, r3
	mul.f.rn r3, r3, r3
	add.f.rn r12, r12, r17
	mul.f.rn r17, r7, r1
	loadli.w r1,  -1064(r30)                # 4-byte Folded Reload
	loadli.w r7,  -496(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r19
	add.f.rn r12, r1, r12
	loadli.w r1,  -1020(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r7, r17
	sub.f.rn r1, r1, r5
	loadli.w r7,  -1264(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r7, r2
	loadli.w r7,  -1052(r30)                # 4-byte Folded Reload
	add.f.rn r12, r12, r17
	mul.f.rn r19, r16, r1
	add.f.rn r12, r7, r12
	loadli.w r7,  -500(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r19
	mul.f.rn r17, r7, r2
	loadli.w r2,  -1012(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1268(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r7, r14
	sub.f.rn r2, r2, r5
	loadli.w r7,  -1044(r30)                # 4-byte Folded Reload
	add.f.rn r12, r12, r17
	mul.f.rn r17, r11, r2
	mul.f.rn r2, r2, r2
	add.f.rn r12, r7, r12
	loadli.w r7,  -504(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r7, r14
	loadli.w r7,  -768(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r19, r7, r7
	loadli.w r7,  -1272(r30)                # 4-byte Folded Reload
	add.f.rn r14, r12, r14
	mul.f.rn r17, r7, r19
	loadli.w r7,  -1000(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r7, r5
	loadli.w r7,  -1036(r30)                # 4-byte Folded Reload
	add.f.rn r14, r7, r14
	loadli.w r7,  -508(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r7, r17
	loadli.w r7,  -780(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r10, r12
	mul.f.rn r12, r12, r12
	mul.f.rn r19, r7, r7
	loadli.w r7,  -1276(r30)                # 4-byte Folded Reload
	add.f.rn r14, r14, r17
	add.f.rn r5, r5, r20
	mul.f.rn r20, r25, r25
	loadli.w r25,  -1392(r30)               # 4-byte Folded Reload
	mul.f.rn r17, r7, r19
	loadli.w r7,  -1032(r30)                # 4-byte Folded Reload
	add.f.rn r19, r7, r14
	loadli.w r7,  -992(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r9, r17
	sub.f.rn r14, r7, r5
	loadli.w r7,  -1280(r30)                # 4-byte Folded Reload
	loadli.w r9,  -1400(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r7, r20
	loadli.w r7,  -1024(r30)                # 4-byte Folded Reload
	add.f.rn r17, r19, r17
	mul.f.rn r19, r25, r14
	mul.f.rn r14, r14, r14
	add.f.rn r17, r7, r17
	loadli.w r7,  -512(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r19
	mul.f.rn r19, r7, r20
	mul.f.rn r20, r6, r6
	loadli.w r6,  -984(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -1284(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r5
	add.f.rn r17, r17, r19
	mul.f.rn r19, r7, r20
	loadli.w r7,  -1016(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r9, r6
	add.f.rn r17, r7, r17
	loadli.w r7,  -516(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r19
	add.f.rn r5, r5, r20
	loadli.w r7,  -1292(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r7, r21
	loadli.w r7,  -972(r30)                 # 4-byte Folded Reload
	add.f.rn r19, r17, r19
	sub.f.rn r17, r7, r5
	loadli.w r7,  -1008(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r26, r20
	loadli.w r26,  -1408(r30)               # 4-byte Folded Reload
	add.f.rn r19, r7, r19
	mul.f.rn r21, r26, r17
	loadli.w r7,  -1304(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r17, r17
	mul.f.rn r13, r7, r13
	loadli.w r7,  -1004(r30)                # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	add.f.rn r5, r5, r21
	mul.f.rn r21, r24, r24
	loadli.w r24,  -1416(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r27, r13
	loadli.w r27,  -1424(r30)               # 4-byte Folded Reload
	add.f.rn r19, r7, r19
	loadli.w r7,  -964(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r7, r5
	loadli.w r7,  -1308(r30)                # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	mul.f.rn r20, r7, r21
	loadli.w r7,  -996(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r24, r13
	mul.f.rn r13, r13, r13
	add.f.rn r19, r7, r19
	mul.f.rn r20, r28, r20
	loadli.w r7,  -952(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r21
	mul.f.rn r21, r15, r15
	add.f.rn r19, r19, r20
	sub.f.rn r15, r7, r5
	loadli.w r7,  -1312(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r7, r21
	loadli.w r7,  -988(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r27, r15
	add.f.rn r19, r7, r19
	loadli.w r7,  -1320(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r15, r15
	mul.f.rn r20, r23, r20
	add.f.rn r5, r5, r21
	add.f.rn r19, r19, r20
	mul.f.rn r20, r7, r8
	loadli.w r7,  -944(r30)                 # 4-byte Folded Reload
	sub.f.rn r8, r7, r5
	loadli.w r7,  -980(r30)                 # 4-byte Folded Reload
	add.f.rn r19, r7, r19
	mul.f.rn r20, r22, r20
	loadli.w r22,  -1432(r30)               # 4-byte Folded Reload
	loadli.w r7,  -1328(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r22, r8
	mul.f.rn r3, r7, r3
	loadli.w r7,  -976(r30)                 # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	mul.f.rn r20, r1, r1
	loadli.w r1,  -932(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r21
	mul.f.rn r3, r18, r3
	loadli.w r18,  -1440(r30)               # 4-byte Folded Reload
	add.f.rn r19, r7, r19
	loadli.w r7,  -1336(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r5
	add.f.rn r3, r19, r3
	mul.f.rn r19, r7, r20
	loadli.w r7,  -968(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r18, r1
	mul.f.rn r1, r1, r1
	add.f.rn r3, r7, r3
	mul.f.rn r19, r16, r19
	loadli.w r7,  -1348(r30)                # 4-byte Folded Reload
	loadli.w r16,  -1464(r30)               # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	add.f.rn r3, r3, r19
	mul.f.rn r19, r7, r2
	loadli.w r2,  -924(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -960(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r5
	add.f.rn r3, r7, r3
	mul.f.rn r19, r11, r19
	loadli.w r11,  -1448(r30)               # 4-byte Folded Reload
	loadli.w r7,  -1352(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r11, r2
	mul.f.rn r12, r7, r12
	loadli.w r7,  -956(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r3, r3, r19
	add.f.rn r5, r5, r20
	mul.f.rn r12, r10, r12
	loadli.w r10,  -1456(r30)               # 4-byte Folded Reload
	add.f.rn r19, r7, r3
	loadli.w r3,  -908(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -1360(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r14, r7, r14
	loadli.w r7,  -948(r30)                 # 4-byte Folded Reload
	add.f.rn r12, r19, r12
	mul.f.rn r19, r6, r6
	loadli.w r6,  -888(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r10, r3
	mul.f.rn r14, r25, r14
	mul.f.rn r3, r3, r3
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	add.f.rn r12, r7, r12
	loadli.w r7,  -1368(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r20
	loadli.w r20,  -1488(r30)               # 4-byte Folded Reload
	add.f.rn r12, r12, r14
	mul.f.rn r14, r7, r19
	loadli.w r7,  -940(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r5
	add.f.rn r12, r7, r12
	mul.f.rn r14, r9, r14
	loadli.w r7,  -1380(r30)                # 4-byte Folded Reload
	loadli.w r9,  -1468(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r16, r6
	mul.f.rn r17, r7, r17
	loadli.w r7,  -872(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r14, r12, r14
	add.f.rn r5, r5, r19
	mul.f.rn r17, r26, r17
	sub.f.rn r12, r7, r5
	loadli.w r7,  -936(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r7, r14
	loadli.w r7,  -1388(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r9, r12
	mul.f.rn r13, r7, r13
	loadli.w r7,  -928(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r12, r12
	add.f.rn r14, r14, r17
	add.f.rn r5, r5, r19
	mul.f.rn r17, r24, r13
	loadli.w r19,  -1480(r30)               # 4-byte Folded Reload
	lui r24, 522240
	add.f.rn r14, r7, r14
	loadli.w r7,  -848(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r7, r5
	loadli.w r7,  -1396(r30)                # 4-byte Folded Reload
	add.f.rn r14, r14, r17
	mul.f.rn r15, r7, r15
	loadli.w r7,  -920(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r19, r13
	mul.f.rn r13, r13, r13
	add.f.rn r14, r7, r14
	mul.f.rn r15, r27, r15
	loadli.w r7,  -832(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r17
	mul.f.rn r17, r8, r8
	add.f.rn r14, r14, r15
	sub.f.rn r8, r7, r5
	loadli.w r7,  -1404(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r7, r17
	loadli.w r7,  -904(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r20, r8
	add.f.rn r14, r7, r14
	loadli.w r7,  -1412(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r8, r8
	mul.f.rn r15, r22, r15
	add.f.rn r5, r5, r17
	add.f.rn r14, r14, r15
	mul.f.rn r15, r7, r1
	loadli.w r1,  -812(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -892(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r5
	add.f.rn r14, r7, r14
	mul.f.rn r15, r18, r15
	loadli.w r18,  -1496(r30)               # 4-byte Folded Reload
	loadli.w r7,  -1420(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r18, r1
	mul.f.rn r2, r7, r2
	loadli.w r7,  -884(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	add.f.rn r14, r14, r15
	add.f.rn r5, r5, r17
	mul.f.rn r15, r11, r2
	loadli.w r2,  -792(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -1500(r30)               # 4-byte Folded Reload
	loadli.w r11,  -824(r30)                # 4-byte Folded Reload
	add.f.rn r14, r7, r14
	loadli.w r7,  -1428(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r2, r5
	mul.f.rn r3, r7, r3
	loadli.w r7,  -868(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r14, r15
	mul.f.rn r15, r17, r2
	mul.f.rn r3, r10, r3
	loadli.w r10,  -1512(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r14, r7, r14
	loadli.w r7,  -1436(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	mul.f.rn r6, r7, r6
	loadli.w r7,  -852(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r14, r3
	loadli.w r3,  -776(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r6, r16, r6
	add.f.rn r14, r7, r14
	loadli.w r7,  -1444(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r10, r3
	mul.f.rn r12, r7, r12
	loadli.w r7,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r6, r14, r6
	loadli.w r14,  -760(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	mul.f.rn r12, r9, r12
	loadli.w r9,  -1520(r30)                # 4-byte Folded Reload
	add.f.rn r6, r7, r6
	loadli.w r7,  -1452(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r14, r5
	add.f.rn r6, r6, r12
	mul.f.rn r12, r7, r13
	loadli.w r13,  -648(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1460(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r9, r14
	mul.f.rn r8, r7, r8
	loadli.w r7,  -1472(r30)                # 4-byte Folded Reload
	add.f.rn r6, r11, r6
	mul.f.rn r12, r19, r12
	loadli.w r11,  -808(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r7, r1
	loadli.w r7,  -1536(r30)                # 4-byte Folded Reload
	add.f.rn r5, r5, r15
	loadli.w r15,  -1528(r30)               # 4-byte Folded Reload
	mul.f.rn r8, r20, r8
	add.f.rn r6, r6, r12
	mul.f.rn r1, r18, r1
	sub.f.rn r13, r13, r5
	add.f.rn r6, r11, r6
	loadli.w r11,  -1544(r30)               # 4-byte Folded Reload
	mul.f.rn r12, r15, r13
	mul.f.rn r13, r13, r13
	add.f.rn r6, r6, r8
	loadli.w r8,  -636(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r12
	loadli.w r12,  -796(r30)                # 4-byte Folded Reload
	add.f.rn r6, r12, r6
	sub.f.rn r8, r8, r5
	add.f.rn r1, r6, r1
	loadli.w r6,  -1476(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r7, r8
	mul.f.rn r2, r6, r2
	loadli.w r6,  -788(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r8, r8
	add.f.rn r1, r6, r1
	loadli.w r6,  -628(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r12
	mul.f.rn r2, r17, r2
	sub.f.rn r6, r6, r5
	add.f.rn r1, r1, r2
	loadli.w r2,  -1484(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r3
	mul.f.rn r12, r11, r6
	mul.f.rn r6, r6, r6
	mul.f.rn r2, r10, r2
	loadli.w r10,  -1552(r30)               # 4-byte Folded Reload
	add.f.rn r3, r5, r12
	loadli.w r5,  -772(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -608(r30)                # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r14, r14
	loadli.w r14,  -764(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r3
	add.f.rn r1, r1, r2
	loadli.w r2,  -1492(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r5
	mul.f.rn r5, r10, r12
	add.f.rn r1, r14, r1
	loadli.w r14,  -1568(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r9, r2
	add.f.rn r3, r3, r5
	loadli.w r5,  -596(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -1560(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1504(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	mul.f.rn r2, r2, r13
	loadli.w r13,  -756(r30)                # 4-byte Folded Reload
	add.f.rn r1, r13, r1
	mul.f.rn r13, r9, r5
	mul.f.rn r5, r5, r5
	mul.f.rn r2, r15, r2
	add.f.rn r3, r3, r13
	loadli.w r13,  -640(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1508(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r8
	loadli.w r8,  -644(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r8, r1
	loadli.w r8,  -588(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r7, r2
	sub.f.rn r8, r8, r3
	loadli.w r7,  -1516(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r7, r6
	loadli.w r7,  -1576(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	mul.f.rn r2, r14, r8
	add.f.rn r1, r13, r1
	add.f.rn r2, r3, r2
	mul.f.rn r3, r11, r6
	mul.f.rn r6, r12, r12
	loadli.w r12,  -560(r30)                # 4-byte Folded Reload
	loadli.w r13,  -632(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1524(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r12, r2
	mul.f.rn r3, r3, r6
	add.f.rn r1, r13, r1
	mul.f.rn r6, r7, r12
	mul.f.rn r3, r10, r3
	loadli.w r10,  -1588(r30)               # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -624(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1532(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -552(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	sub.f.rn r5, r5, r2
	mul.f.rn r6, r8, r8
	mul.f.rn r3, r9, r3
	loadli.w r9,  -1580(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r9, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r1, r3
	loadli.w r3,  -1540(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	loadli.w r6,  -604(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r8
	loadli.w r8,  -540(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r12, r12
	loadli.w r12,  -600(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r14, r3
	sub.f.rn r8, r8, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1548(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	mul.f.rn r6, r10, r8
	mul.f.rn r8, r8, r8
	add.f.rn r1, r12, r1
	mul.f.rn r3, r7, r3
	add.f.rn r2, r2, r6
	loadli.w r6,  -1556(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1600(r30)                # 4-byte Folded Reload
	mul.f.rn r5, r6, r5
	loadli.w r6,  -592(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r9, r5
	sub.f.rn r3, r3, r2
	loadli.w r9,  -1604(r30)                # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r7, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r5
	loadli.w r5,  -1564(r30)                # 4-byte Folded Reload
	mul.f.rn r5, r5, r8
	loadli.w r8,  -568(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -532(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r8, r1
	mul.f.rn r5, r10, r5
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r5
	loadli.w r5,  -1572(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r9, r6
	mul.f.rn r3, r5, r3
	loadli.w r5,  -564(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	add.f.rn r2, r2, r8
	mul.f.rn r5, r6, r6
	loadli.w r6,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -1608(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r7, r3
	loadli.w r7,  -556(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1584(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	mul.f.rn r5, r8, r6
	mul.f.rn r6, r6, r6
	add.f.rn r1, r7, r1
	mul.f.rn r3, r9, r3
	add.f.rn r2, r2, r5
	loadli.w r5,  -524(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1592(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r2
	mul.f.rn r3, r3, r6
	loadli.w r6,  -548(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r6, r5, r5
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r5, r4, r5
	.loc	2 0 0 is_stmt 0                 # triton_helpers.py:0:0
	mul.f.rn r3, r8, r3
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r2, r2, r5
	.loc	2 0 0                           # triton_helpers.py:0:0
	add.f.rn r1, r1, r3
	.loc	2 230 38 is_stmt 1              # triton_helpers.py:230:38
	loadli.w r3,  -1596(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	loadli.w r6,  -544(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r3, r4, r3
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r3
	loadli.w r3,  -612(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -616(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r1,  -620(r30)                 # 4-byte Folded Reload
.Ltmp2:
.LBB0_294:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 22                          # triton_helpers.py:0:22
	mfence { lm, sm, gm }
	csr_set csr3, r1
	sync_group
	loadli.w r1,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 82 25 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:82:25
	lui r2, 237568
	addli r3, zero, 0
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 84 24                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:84:24
	loadli.w r2,  -748(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -612(r30)                 # 4-byte Folded Reload
	loads.w r4, 0(r2)
	.loc	1 85 32                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:85:32
	lui r2, 260096
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	mfence { lm }
	.loc	1 85 32                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:85:32
	sqrt.f.rn r1, r1
	div.f.rn r5, r2, r1
	addli r2, zero, 1
	j .LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r2,  -492(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r26
	store.h r1, 0(r6)
	loadli.w r1,  -504(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r2, r2
	store.h r2, 2(r6)
	loadli.w r2,  -500(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	store.h r1, 4(r6)
	float2bfloat.rn r1, r18
	float2bfloat.rn r2, r2
	store.h r1, 8(r6)
	float2bfloat.rn r1, r24
	lui r24, 522240
	store.h r2, 6(r6)
	float2bfloat.rn r2, r23
	store.h r1, 12(r6)
	float2bfloat.rn r1, r10
	store.h r2, 10(r6)
	float2bfloat.rn r2, r9
	store.h r1, 16(r6)
	float2bfloat.rn r1, r12
	store.h r2, 14(r6)
	float2bfloat.rn r2, r11
	store.h r1, 20(r6)
	float2bfloat.rn r1, r13
	store.h r2, 18(r6)
	float2bfloat.rn r2, r3
	addli r3, zero, 32
	store.h r1, 24(r6)
	float2bfloat.rn r1, r8
	store.h r2, 22(r6)
	float2bfloat.rn r2, r7
	store.h r1, 28(r6)
	store.h r2, 26(r6)
	float2bfloat.rn r2, r14
	store.h r2, 30(r6)
	addli r2, zero, 0
	mfence { lm }
	loadli.w r1,  -516(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	beq r1, zero, .LBB0_2
.LBB0_296:                              #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 53 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r3, -520(r30)                 # 4-byte Folded Spill
	.loc	1 42 51 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	load.hu r3, -320(r30)
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r19, zero, 1
	load.hu r6, -318(r30)
	load.hu r1, -292(r30)
	storeli.w r2, -516(r30)                 # 4-byte Folded Spill
	load.hu r2, -294(r30)
	load.hu r7, -316(r30)
	load.hu r8, -314(r30)
	load.hu r9, -312(r30)
	load.hu r10, -310(r30)
	load.hu r11, -308(r30)
	load.hu r12, -306(r30)
	load.hu r13, -304(r30)
	load.hu r14, -302(r30)
	load.hu r15, -300(r30)
	load.hu r16, -298(r30)
	load.hu r17, -296(r30)
	load.hu r18, -290(r30)
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r19
	.loc	1 42 51                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:42:51
	bfloat2float.rn r3, r3
	bfloat2float.rn r2, r2
	bfloat2float.rn r1, r1
	vor.u.mh vr1{mr2}, r3, vr1
	bfloat2float.rn r3, r6
	addli r6, zero, 2
	vmmov mr3, r6
	addli r6, zero, 4
	vor.u.mh vr1{mr3}, r3, vr1
	bfloat2float.rn r3, r7
	vmmov mr0, r6
	addli r6, zero, 8
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r8
	vmmov mr0, r6
	addli r6, zero, 16
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r9
	vmmov mr0, r6
	addli r6, zero, 32
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r10
	vmmov mr0, r6
	addli r6, zero, 64
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r11
	vmmov mr0, r6
	addli r6, zero, 128
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r12
	vmmov mr0, r6
	addli r6, zero, 256
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r13
	vmmov mr0, r6
	addli r6, zero, 512
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r14
	vmmov mr0, r6
	addli r6, zero, 1024
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r15
	vmmov mr0, r6
	addli r6, zero, 2048
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r16
	vmmov mr0, r6
	addli r6, zero, 4096
	vor.u.mh vr1{mr0}, r3, vr1
	bfloat2float.rn r3, r17
	vmmov mr0, r6
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
	.loc	1 43 41                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:43:41
	load.hu r1, -256(r30)
	load.hu r2, -254(r30)
	load.hu r3, -252(r30)
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
	load.hu r16, -230(r30)
	load.hu r17, -228(r30)
	load.hu r18, -226(r30)
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
	.loc	1 48 22                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:48:22
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	vstore_mask16.mz vr1{mr1}, -192(r30)
	mfence { lm }
	loadli.w r12,  -192(r30)
	loadli.w r14,  -188(r30)
	loadli.w r15,  -184(r30)
	loadli.w r21,  -180(r30)
	loadli.w r20,  -176(r30)
	loadli.w r19,  -172(r30)
	loadli.w r2,  -168(r30)
	loadli.w r28,  -164(r30)
	loadli.w r23,  -160(r30)
	loadli.w r7,  -156(r30)
	loadli.w r1,  -152(r30)
	and r6, r12, r25
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
	loadli.w r27,  -148(r30)
	loadli.w r8,  -144(r30)
	loadli.w r18,  -140(r30)
	loadli.w r22,  -136(r30)
	loadli.w r3,  -132(r30)
	setlt.u r1, r24, r6
	bneq r1, zero, .LBB0_298
# %bb.297:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	lui r17, 1024
	storeli.w r12, -528(r30)                # 4-byte Folded Spill
	j .LBB0_299
.LBB0_298:                              #   in Loop: Header=BB0_296 Depth=2
	lui r17, 1024
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r12, r17
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
.LBB0_299:                              #   in Loop: Header=BB0_296 Depth=2
	and r16, r14, r25
	setlt.u r1, r24, r16
	bneq r1, zero, .LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r14, -492(r30)                # 4-byte Folded Spill
	j .LBB0_302
.LBB0_301:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r14, r17
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
.LBB0_302:                              #   in Loop: Header=BB0_296 Depth=2
	and r13, r15, r25
	setlt.u r1, r24, r13
	bneq r1, zero, .LBB0_304
# %bb.303:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r15, -504(r30)                # 4-byte Folded Spill
	j .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r15, r17
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
.LBB0_305:                              #   in Loop: Header=BB0_296 Depth=2
	and r11, r21, r25
	setlt.u r1, r24, r11
	bneq r1, zero, .LBB0_307
# %bb.306:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r21, -500(r30)                # 4-byte Folded Spill
	j .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r21, r17
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
.LBB0_308:                              #   in Loop: Header=BB0_296 Depth=2
	and r10, r20, r25
	setlt.u r1, r24, r10
	bneq r1, zero, .LBB0_310
# %bb.309:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r20, -496(r30)                # 4-byte Folded Spill
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r20, r17
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
.LBB0_311:                              #   in Loop: Header=BB0_296 Depth=2
	and r9, r19, r25
	storeli.w r19, -568(r30)                # 4-byte Folded Spill
	setlt.u r1, r24, r9
	bneq r1, zero, .LBB0_313
# %bb.312:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r19, -488(r30)                # 4-byte Folded Spill
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r19, r17
	storeli.w r1, -488(r30)                 # 4-byte Folded Spill
.LBB0_314:                              #   in Loop: Header=BB0_296 Depth=2
	and r19, r2, r25
	storeli.w r2, -564(r30)                 # 4-byte Folded Spill
	setlt.u r1, r24, r19
	bneq r1, zero, .LBB0_316
# %bb.315:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r2, -484(r30)                 # 4-byte Folded Spill
	j .LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r2, r17
	storeli.w r1, -484(r30)                 # 4-byte Folded Spill
.LBB0_317:                              #   in Loop: Header=BB0_296 Depth=2
	and r2, r28, r25
	lui r26, 522240
	storeli.w r28, -560(r30)                # 4-byte Folded Spill
	setlt.u r1, r24, r2
	bneq r1, zero, .LBB0_319
# %bb.318:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r28, -480(r30)                # 4-byte Folded Spill
	j .LBB0_320
.LBB0_319:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r28, r17
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
.LBB0_320:                              #   in Loop: Header=BB0_296 Depth=2
	and r28, r23, r25
	loadli.w r24,  -512(r30)                # 4-byte Folded Reload
	storeli.w r23, -556(r30)                # 4-byte Folded Spill
	setlt.u r1, r26, r28
	bneq r1, zero, .LBB0_322
# %bb.321:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r23, -476(r30)                # 4-byte Folded Spill
	j .LBB0_323
.LBB0_322:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r23, r17
	storeli.w r1, -476(r30)                 # 4-byte Folded Spill
.LBB0_323:                              #   in Loop: Header=BB0_296 Depth=2
	and r23, r7, r25
	storeli.w r3, -508(r30)                 # 4-byte Folded Spill
	storeli.w r7, -552(r30)                 # 4-byte Folded Spill
	setlt.u r1, r26, r23
	bneq r1, zero, .LBB0_325
# %bb.324:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r7, -472(r30)                 # 4-byte Folded Spill
	j .LBB0_326
.LBB0_325:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r7, r17
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
.LBB0_326:                              #   in Loop: Header=BB0_296 Depth=2
	and r3, r24, r25
	setlt.u r1, r26, r3
	bneq r1, zero, .LBB0_328
# %bb.327:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r24, -468(r30)                # 4-byte Folded Spill
	j .LBB0_329
.LBB0_328:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r24, r17
	storeli.w r1, -468(r30)                 # 4-byte Folded Spill
.LBB0_329:                              #   in Loop: Header=BB0_296 Depth=2
	and r24, r27, r25
	setlt.u r1, r26, r24
	bneq r1, zero, .LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r27, -464(r30)                # 4-byte Folded Spill
	j .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r27, r17
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
.LBB0_332:                              #   in Loop: Header=BB0_296 Depth=2
	and r1, r8, r25
	storeli.w r8, -544(r30)                 # 4-byte Folded Spill
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	setlt.u r1, r26, r1
	bneq r1, zero, .LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	storeli.w r8, -524(r30)                 # 4-byte Folded Spill
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r1, r8, r17
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
.LBB0_335:                              #   in Loop: Header=BB0_296 Depth=2
	and r1, r18, r25
	storeli.w r27, -548(r30)                # 4-byte Folded Spill
	setlt.u r8, r26, r1
	bneq r8, zero, .LBB0_337
# %bb.336:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	addli r27, r18, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	or r27, r18, r17
.LBB0_338:                              #   in Loop: Header=BB0_296 Depth=2
	and r8, r22, r25
	storeli.w r22, -536(r30)                # 4-byte Folded Spill
	storeli.w r18, -540(r30)                # 4-byte Folded Spill
	setlt.u r25, r26, r8
	beq r25, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_296 Depth=2
	or r22, r22, r17
.LBB0_340:                              #   in Loop: Header=BB0_296 Depth=2
	loadli.w r17,  -456(r30)                # 4-byte Folded Reload
	loadli.w r18,  -508(r30)                # 4-byte Folded Reload
	and r25, r18, r17
	setlt.u r17, r26, r25
	beq r17, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_296 Depth=2
	lui r17, 1024
	or r18, r18, r17
.LBB0_342:                              #   in Loop: Header=BB0_296 Depth=2
	loadli.w r17,  -452(r30)                # 4-byte Folded Reload
	setlt.u r6, r17, r6
	loadli.w r17,  -528(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r6, r12, 16
	andi r6, r6, 1
	add.s r6, r12, r6
	loadli.w r12,  -460(r30)                # 4-byte Folded Reload
	add.s r6, r6, r12
	lui r12, 1048560
	and r17, r6, r12
.LBB0_344:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -460(r30)                # 4-byte Folded Reload
	setlt.u r6, r6, r16
	bneq r6, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	lui r14, 1048560
	add.s r6, r6, r12
	and r6, r6, r14
	storeli.w r6, -492(r30)                 # 4-byte Folded Spill
.LBB0_346:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r6, r6, r13
	bneq r6, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r6, r15, 16
	lui r13, 1048560
	andi r6, r6, 1
	add.s r6, r15, r6
	add.s r6, r6, r12
	and r6, r6, r13
	storeli.w r6, -504(r30)                 # 4-byte Folded Spill
.LBB0_348:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r6, r6, r11
	bneq r6, zero, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r6, r21, 16
	lui r11, 1048560
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r12
	and r6, r6, r11
	storeli.w r6, -500(r30)                 # 4-byte Folded Spill
.LBB0_350:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r6, r6, r10
	bneq r6, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	srli r6, r20, 16
	lui r10, 1048560
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r12
	and r6, r6, r10
	storeli.w r6, -496(r30)                 # 4-byte Folded Spill
.LBB0_352:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r6, r6, r9
	addli r9, r30, -64
	bneq r6, zero, .LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r7,  -568(r30)                 # 4-byte Folded Reload
	lui r10, 1048560
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r12
	and r6, r6, r10
	storeli.w r6, -488(r30)                 # 4-byte Folded Spill
.LBB0_354:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	setlt.u r6, r6, r19
	bneq r6, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r7,  -564(r30)                 # 4-byte Folded Reload
	lui r10, 1048560
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r12
	and r6, r6, r10
	storeli.w r6, -484(r30)                 # 4-byte Folded Spill
.LBB0_356:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	loadli.w r19,  -524(r30)                # 4-byte Folded Reload
	lui r10, 1048560
	setlt.u r2, r6, r2
	bneq r2, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r6,  -560(r30)                 # 4-byte Folded Reload
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r12
	and r2, r2, r10
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
.LBB0_358:                              #   in Loop: Header=BB0_296 Depth=2
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r2, r6, r28
	bneq r2, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r7,  -556(r30)                 # 4-byte Folded Reload
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r12
	and r2, r2, r10
	storeli.w r2, -476(r30)                 # 4-byte Folded Spill
.LBB0_360:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r2, r6, r23
	lui r28, 522240
	bneq r2, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r7,  -552(r30)                 # 4-byte Folded Reload
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r12
	and r2, r2, r10
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
.LBB0_362:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r2, r6, r3
	bneq r2, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r3,  -512(r30)                 # 4-byte Folded Reload
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r12
	and r2, r2, r10
	storeli.w r2, -468(r30)                 # 4-byte Folded Spill
.LBB0_364:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r2, r6, r24
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r7,  -548(r30)                 # 4-byte Folded Reload
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r12
	and r2, r2, r10
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
.LBB0_366:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	setlt.u r2, r6, r2
	beq r2, zero, .LBB0_373
# %bb.367:                              #   in Loop: Header=BB0_296 Depth=2
	setlt.u r1, r6, r1
	beq r1, zero, .LBB0_374
.LBB0_368:                              #   in Loop: Header=BB0_296 Depth=2
	setlt.u r1, r6, r8
	beq r1, zero, .LBB0_375
.LBB0_369:                              #   in Loop: Header=BB0_296 Depth=2
	setlt.u r1, r6, r25
	bneq r1, zero, .LBB0_371
.LBB0_370:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r2,  -508(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r12
	and r18, r1, r10
.LBB0_371:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 80 24 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:80:24
	sub.f.rn r1, r17, r4
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	add.s r6, r9, r3
	loadli.w r21,  -456(r30)                # 4-byte Folded Reload
	storeli.w r18, -508(r30)                # 4-byte Folded Spill
	load.hu r2, 0(r6)
	load.hu r20, 28(r6)
	load.hu r17, 2(r6)
	load.hu r15, 4(r6)
	load.hu r13, 6(r6)
	load.hu r12, 8(r6)
	load.hu r9, 12(r6)
	load.hu r10, 14(r6)
	load.hu r11, 16(r6)
	load.hu r7, 18(r6)
	load.hu r3, 20(r6)
	load.hu r8, 24(r6)
	load.hu r14, 26(r6)
	bfloat2float.rn r2, r2
	storeli.w r20, -524(r30)                # 4-byte Folded Spill
	load.hu r20, 30(r6)
	.loc	1 86 24                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:86:24
	mul.f.rn r1, r5, r1
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	storeli.w r20, -548(r30)                # 4-byte Folded Spill
	.loc	1 88 24                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:88:24
	add.f.rn r16, r1, r2
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	load.hu r2, 10(r6)
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r1, r16, r21
	setlt.u r18, r28, r1
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	.loc	1 71 42                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:71:42
	load.hu r1, 22(r6)
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	bneq r18, zero, .LBB0_376
# %bb.372:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	addli r25, r16, 0
	j .LBB0_377
.LBB0_373:                              #   in Loop: Header=BB0_296 Depth=2
	loadli.w r7,  -544(r30)                 # 4-byte Folded Reload
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r12
	and r19, r2, r10
	.loc	1 49 23 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r6, r1
	bneq r1, zero, .LBB0_368
.LBB0_374:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23 is_stmt 0                # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r2,  -540(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r12
	and r27, r1, r10
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r6, r8
	bneq r1, zero, .LBB0_369
.LBB0_375:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 23                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:23
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r12
	and r22, r1, r10
	.loc	1 49 23                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:49:23
	setlt.u r1, r6, r25
	beq r1, zero, .LBB0_370
	j .LBB0_371
.LBB0_376:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53 is_stmt 1               # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	lui r18, 1024
	or r25, r16, r18
.LBB0_377:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0 is_stmt 0                 # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r18,  -492(r30)                # 4-byte Folded Reload
	bfloat2float.rn r17, r17
	sub.f.rn r18, r18, r4
	mul.f.rn r18, r5, r18
	add.f.rn r18, r18, r17
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r17, r18, r21
	storeli.w r17, -532(r30)                # 4-byte Folded Spill
	setlt.u r17, r28, r17
	bneq r17, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r18, -492(r30)                # 4-byte Folded Spill
	j .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	lui r17, 1024
	or r17, r18, r17
	storeli.w r17, -492(r30)                # 4-byte Folded Spill
.LBB0_380:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r17,  -504(r30)                # 4-byte Folded Reload
	bfloat2float.rn r15, r15
	sub.f.rn r17, r17, r4
	mul.f.rn r17, r5, r17
	add.f.rn r20, r17, r15
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r15, r20, r21
	storeli.w r15, -536(r30)                # 4-byte Folded Spill
	setlt.u r15, r28, r15
	bneq r15, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	lui r17, 1024
	storeli.w r20, -504(r30)                # 4-byte Folded Spill
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_296 Depth=2
	lui r17, 1024
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r15, r20, r17
	storeli.w r15, -504(r30)                # 4-byte Folded Spill
.LBB0_383:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r15,  -500(r30)                # 4-byte Folded Reload
	bfloat2float.rn r13, r13
	sub.f.rn r15, r15, r4
	mul.f.rn r15, r5, r15
	add.f.rn r23, r15, r13
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r13, r23, r21
	storeli.w r13, -540(r30)                # 4-byte Folded Spill
	setlt.u r13, r28, r13
	bneq r13, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r23, -500(r30)                # 4-byte Folded Spill
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r13, r23, r17
	storeli.w r13, -500(r30)                # 4-byte Folded Spill
.LBB0_386:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r13,  -496(r30)                # 4-byte Folded Reload
	bfloat2float.rn r12, r12
	sub.f.rn r13, r13, r4
	mul.f.rn r13, r5, r13
	add.f.rn r24, r13, r12
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r12, r24, r21
	storeli.w r12, -544(r30)                # 4-byte Folded Spill
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r24, -496(r30)                # 4-byte Folded Spill
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r12, r24, r17
	storeli.w r12, -496(r30)                # 4-byte Folded Spill
.LBB0_389:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r12,  -488(r30)                # 4-byte Folded Reload
	bfloat2float.rn r2, r2
	sub.f.rn r12, r12, r4
	mul.f.rn r12, r5, r12
	add.f.rn r2, r12, r2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r12, r2, r21
	storeli.w r12, -552(r30)                # 4-byte Folded Spill
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	j .LBB0_392
.LBB0_391:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r12, r2, r17
	storeli.w r12, -488(r30)                # 4-byte Folded Spill
.LBB0_392:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r12,  -484(r30)                # 4-byte Folded Reload
	bfloat2float.rn r9, r9
	sub.f.rn r12, r12, r4
	mul.f.rn r12, r5, r12
	add.f.rn r9, r12, r9
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r12, r9, r21
	storeli.w r12, -556(r30)                # 4-byte Folded Spill
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r9, -484(r30)                 # 4-byte Folded Spill
	j .LBB0_395
.LBB0_394:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r12, r9, r17
	storeli.w r12, -484(r30)                # 4-byte Folded Spill
.LBB0_395:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r12,  -480(r30)                # 4-byte Folded Reload
	bfloat2float.rn r10, r10
	sub.f.rn r12, r12, r4
	mul.f.rn r12, r5, r12
	add.f.rn r10, r12, r10
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r12, r10, r21
	storeli.w r12, -560(r30)                # 4-byte Folded Spill
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r10, -480(r30)                # 4-byte Folded Spill
	j .LBB0_398
.LBB0_397:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r12, r10, r17
	storeli.w r12, -480(r30)                # 4-byte Folded Spill
.LBB0_398:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r12,  -476(r30)                # 4-byte Folded Reload
	bfloat2float.rn r11, r11
	sub.f.rn r12, r12, r4
	mul.f.rn r12, r5, r12
	add.f.rn r11, r12, r11
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r12, r11, r21
	storeli.w r12, -564(r30)                # 4-byte Folded Spill
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r11, -476(r30)                # 4-byte Folded Spill
	j .LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r12, r11, r17
	storeli.w r12, -476(r30)                # 4-byte Folded Spill
.LBB0_401:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r12,  -472(r30)                # 4-byte Folded Reload
	bfloat2float.rn r7, r7
	sub.f.rn r12, r12, r4
	mul.f.rn r12, r5, r12
	add.f.rn r13, r12, r7
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r7, r13, r21
	setlt.u r12, r28, r7
	storeli.w r7, -568(r30)                 # 4-byte Folded Spill
	bneq r12, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r13, -472(r30)                # 4-byte Folded Spill
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r7, r13, r17
	storeli.w r7, -472(r30)                 # 4-byte Folded Spill
.LBB0_404:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r12,  -468(r30)                # 4-byte Folded Reload
	bfloat2float.rn r3, r3
	lui r26, 1024
	sub.f.rn r12, r12, r4
	mul.f.rn r12, r5, r12
	add.f.rn r3, r12, r3
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r12, r3, r21
	setlt.u r15, r28, r12
	bneq r15, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r3, -468(r30)                 # 4-byte Folded Spill
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r7, r3, r17
	storeli.w r7, -468(r30)                 # 4-byte Folded Spill
.LBB0_407:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r15,  -464(r30)                # 4-byte Folded Reload
	bfloat2float.rn r1, r1
	sub.f.rn r15, r15, r4
	mul.f.rn r15, r5, r15
	add.f.rn r1, r15, r1
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r17, r1, r21
	setlt.u r15, r28, r17
	bneq r15, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r7, r1, r26
	storeli.w r7, -464(r30)                 # 4-byte Folded Spill
.LBB0_410:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	sub.f.rn r15, r19, r4
	bfloat2float.rn r8, r8
	mul.f.rn r15, r5, r15
	add.f.rn r8, r15, r8
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r19, r8, r21
	setlt.u r15, r28, r19
	bneq r15, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r8, -512(r30)                 # 4-byte Folded Spill
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r7, r8, r26
	storeli.w r7, -512(r30)                 # 4-byte Folded Spill
.LBB0_413:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	sub.f.rn r15, r27, r4
	bfloat2float.rn r14, r14
	mul.f.rn r15, r5, r15
	add.f.rn r14, r15, r14
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	and r7, r14, r21
	setlt.u r15, r28, r7
	bneq r15, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r14, -520(r30)                # 4-byte Folded Spill
	j .LBB0_416
.LBB0_415:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r15, r14, r26
	storeli.w r15, -520(r30)                # 4-byte Folded Spill
.LBB0_416:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	sub.f.rn r15, r22, r4
	loadli.w r21,  -524(r30)                # 4-byte Folded Reload
	bfloat2float.rn r21, r21
	mul.f.rn r15, r5, r15
	add.f.rn r27, r15, r21
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r15,  -456(r30)                # 4-byte Folded Reload
	and r22, r27, r15
	setlt.u r15, r28, r22
	bneq r15, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r27, -524(r30)                # 4-byte Folded Spill
	j .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r15, r27, r26
	storeli.w r15, -524(r30)                # 4-byte Folded Spill
.LBB0_419:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 0                           # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:0
	loadli.w r15,  -508(r30)                # 4-byte Folded Reload
	loadli.w r21,  -548(r30)                # 4-byte Folded Reload
	sub.f.rn r15, r15, r4
	bfloat2float.rn r21, r21
	mul.f.rn r15, r5, r15
	add.f.rn r15, r15, r21
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r21,  -456(r30)                # 4-byte Folded Reload
	and r21, r15, r21
	setlt.u r28, r28, r21
	bneq r28, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	storeli.w r15, -508(r30)                # 4-byte Folded Spill
	j .LBB0_422
.LBB0_421:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	or r26, r15, r26
	storeli.w r26, -508(r30)                # 4-byte Folded Spill
.LBB0_422:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	addli r26, r25, 0
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r28,  -452(r30)                # 4-byte Folded Reload
	loadli.w r25,  -528(r30)                # 4-byte Folded Reload
	setlt.u r28, r28, r25
	bneq r28, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r28, r16, 16
	andi r28, r28, 1
	add.s r16, r16, r28
	loadli.w r28,  -460(r30)                # 4-byte Folded Reload
	add.s r16, r16, r28
	lui r28, 1048560
	and r26, r16, r28
.LBB0_424:                              #   in Loop: Header=BB0_296 Depth=2
	loadli.w r28,  -452(r30)                # 4-byte Folded Reload
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r16,  -532(r30)                # 4-byte Folded Reload
	setlt.u r16, r28, r16
	bneq r16, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r16, r18, 16
	andi r16, r16, 1
	add.s r16, r18, r16
	loadli.w r18,  -460(r30)                # 4-byte Folded Reload
	add.s r16, r16, r18
	lui r18, 1048560
	and r16, r16, r18
	storeli.w r16, -492(r30)                # 4-byte Folded Spill
.LBB0_426:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r16,  -536(r30)                # 4-byte Folded Reload
	setlt.u r16, r28, r16
	bneq r16, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r16, r20, 16
	loadli.w r18,  -460(r30)                # 4-byte Folded Reload
	andi r16, r16, 1
	add.s r16, r20, r16
	add.s r16, r16, r18
	lui r18, 1048560
	and r16, r16, r18
	storeli.w r16, -504(r30)                # 4-byte Folded Spill
.LBB0_428:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r16,  -540(r30)                # 4-byte Folded Reload
	setlt.u r16, r28, r16
	bneq r16, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r16, r23, 16
	loadli.w r18,  -460(r30)                # 4-byte Folded Reload
	andi r16, r16, 1
	add.s r16, r23, r16
	add.s r16, r16, r18
	lui r18, 1048560
	and r16, r16, r18
	storeli.w r16, -500(r30)                # 4-byte Folded Spill
.LBB0_430:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r16,  -544(r30)                # 4-byte Folded Reload
	loadli.w r18,  -496(r30)                # 4-byte Folded Reload
	lui r20, 1048560
	setlt.u r16, r28, r16
	bneq r16, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r16, r24, 16
	loadli.w r18,  -460(r30)                # 4-byte Folded Reload
	andi r16, r16, 1
	add.s r16, r24, r16
	add.s r16, r16, r18
	and r18, r16, r20
.LBB0_432:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r16,  -552(r30)                # 4-byte Folded Reload
	loadli.w r23,  -488(r30)                # 4-byte Folded Reload
	setlt.u r16, r28, r16
	bneq r16, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r16, r2, 16
	andi r16, r16, 1
	add.s r2, r2, r16
	loadli.w r16,  -460(r30)                # 4-byte Folded Reload
	add.s r2, r2, r16
	and r23, r2, r20
.LBB0_434:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -460(r30)                # 4-byte Folded Reload
	loadli.w r24,  -484(r30)                # 4-byte Folded Reload
	setlt.u r2, r28, r2
	bneq r2, zero, .LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r16
	and r24, r2, r20
.LBB0_436:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r2,  -560(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -480(r30)                 # 4-byte Folded Reload
	setlt.u r2, r28, r2
	bneq r2, zero, .LBB0_438
# %bb.437:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r16
	and r9, r2, r20
.LBB0_438:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r2,  -564(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -476(r30)                # 4-byte Folded Reload
	setlt.u r2, r28, r2
	bneq r2, zero, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r16
	and r10, r2, r20
.LBB0_440:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	loadli.w r2,  -568(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -472(r30)                # 4-byte Folded Reload
	setlt.u r2, r28, r2
	bneq r2, zero, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r2, r13, 16
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r16
	and r11, r2, r20
.LBB0_442:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	setlt.u r2, r28, r12
	loadli.w r12,  -468(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_444
# %bb.443:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r16
	and r12, r2, r20
.LBB0_444:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	setlt.u r2, r28, r17
	loadli.w r3,  -464(r30)                 # 4-byte Folded Reload
	loadli.w r13,  -512(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r3, r1, r20
.LBB0_446:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	setlt.u r1, r28, r19
	bneq r1, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r16
	and r13, r1, r20
.LBB0_448:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	setlt.u r1, r28, r7
	loadli.w r7,  -520(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r16
	and r7, r1, r20
.LBB0_450:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	setlt.u r1, r28, r22
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	loadli.w r8,  -524(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r8, r1, r20
.LBB0_452:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 90 53                         # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:90:53
	setlt.u r1, r28, r21
	loadli.w r14,  -508(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_295
# %bb.453:                              #   in Loop: Header=BB0_296 Depth=2
	.loc	1 0 53                          # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:0:53
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r16
	and r14, r1, r20
	j .LBB0_295
.LBB0_454:                              # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py:63:4
	addli sp, r30, -1664
	addli sp, sp, 1664
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	1728                            # 0x6c0
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
.asciz	"c7apup3gcwhq25xtih7i6kwkc3tmdhfb7lybsuup7eaq5xpsgfir.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/7a" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
