	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/qy" "cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py"
	.loc	1 22 0                          # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -344
	lui r1, :hi20:global_smem
	core_id r2
	addli r30, sp, 280
	slli r3, r2, 2
	addli r1, r1, :lo12:global_smem
	loadli.w r8,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r7,  40(r30)
	add.s r6, r3, r1
	mul.s r4, r8, r4
	addli r5, r6, 8208
	mul.s r4, r4, r7
	storeli.w r5, -184(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r5)
	lui r5, 15
	mfence { lm, sm, gm }
	ori r9, r5, 4095
	lui r5, 1046527
	ori r5, r5, 4095
	csr_set csr3, r9
	sync_group
	storeli.w r6, -180(r30)                 # 4-byte Folded Spill
	stores.w r5, 0(r6)
	load_param_i r6, 0
	mfence { lm, sm, gm }
	storeli.w r9, -132(r30)                 # 4-byte Folded Spill
	csr_set csr3, r9
	sync_group
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	ble.s r4, r6, .LBB0_127
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r5, 1
	lui r11, 1048575
	addli r28, zero, 1
	load.d r[7:8], 8(r30)
	load.d r[9:10], 16(r30)
	addli r15, r30, -128
	addli r16, zero, 32
	addli r17, r30, -64
	addli r18, zero, 16
	addli r19, zero, 28
	addli r20, zero, 2
	div.s r4, r2, r4
	storeli.w r5, -200(r30)                 # 4-byte Folded Spill
	ori r11, r11, 4064
	and r3, r3, r11
	add.s r21, r3, r1
	andi r1, r2, 7
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	addli r1, r21, 8208
	storeli.w r21, -276(r30)                # 4-byte Folded Spill
	sub.s r4, r2, r4
	storeli.w r1, -176(r30)                 # 4-byte Folded Spill
	slli r4, r4, 4
	ori r5, r4, 1
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	storeli.w r5, -204(r30)                 # 4-byte Folded Spill
	ori r5, r4, 2
	storeli.w r5, -208(r30)                 # 4-byte Folded Spill
	ori r5, r4, 3
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	ori r5, r4, 4
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	ori r5, r4, 5
	storeli.w r5, -220(r30)                 # 4-byte Folded Spill
	ori r5, r4, 6
	storeli.w r5, -224(r30)                 # 4-byte Folded Spill
	ori r5, r4, 7
	storeli.w r5, -228(r30)                 # 4-byte Folded Spill
	ori r5, r4, 8
	storeli.w r5, -232(r30)                 # 4-byte Folded Spill
	ori r5, r4, 9
	storeli.w r5, -236(r30)                 # 4-byte Folded Spill
	ori r5, r4, 10
	storeli.w r5, -240(r30)                 # 4-byte Folded Spill
	ori r5, r4, 11
	storeli.w r5, -244(r30)                 # 4-byte Folded Spill
	ori r5, r4, 12
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
	ori r5, r4, 13
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
	ori r5, r4, 14
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
	ori r5, r4, 15
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
	sext_int2long r[4:5], r4
	sll.d r[4:5], r[4:5], r28
	add.ul r[4:5], r[7:8], r[4:5]
	store.d r[4:5], -272(r30)               # 8-byte Folded Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_111 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 46 prologue_end            # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	add.s r2, r15, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r16, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 46 is_stmt 0                # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:46
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 29 23 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:29:23
	loadli.w r2,  -192(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:29:23
	add.s r24, r1, r2
	.loc	1 38 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:37
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	lui r2, 983040
	.loc	1 38 41                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:41
	slli r25, r24, 7
	.loc	1 38 46                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	or r2, r16, r2
	.loc	1 38 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:37
	add.s r1, r25, r1
	.loc	1 38 30                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 39 37 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:30
	sll.d r[7:8], r[3:4], r28
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	or r1, r16, r1
	store.d r[7:8], -144(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:30
	add.ul r[3:4], r[3:4], r[7:8]
	.loc	1 38 46 is_stmt 0               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	l_gm2lm r2, r15, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.d r[2:3], -272(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r17, 0(r[2:3])
	.loc	1 38 46                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.hu r3, -64(r30)
	.loc	1 38 46                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	load.hu r2, -126(r30)
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.hu r4, -62(r30)
	.loc	1 45 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:45:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 46 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:46:19
	hfloat2float.rn r26, r1
	hfloat2float.rn r27, r2
	addli r7, r26, 0
	addli r3, r27, 0
	.loc	1 49 35                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:49:35
	blt.s r24, r18, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:35
	lui r7, 1046528
	lui r3, 1046528
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r1, r15, 2
	addli r4, zero, 0
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	addli r4, r4, 4
	addli r3, r5, 0
	addli r7, r2, 0
	beq r4, r19, .LBB0_32
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	add.s r1, r15, r4
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	add.s r5, r17, r4
	.loc	1 38 46                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	load.hu r2, 4(r1)
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.hu r8, 4(r5)
	.loc	1 38 46                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	load.hu r1, 6(r1)
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.hu r5, 6(r5)
	.loc	1 45 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:45:19
	add.hf.rn r2, r2, r8
	addli r8, r7, 0
	.loc	1 46 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:46:19
	hfloat2float.rn r2, r2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r11, r2, r7
	bneq r11, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r8, r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	slli r11, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r7, 9
.Ltmp2:
	.loc	1 0 0                           # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	srli r13, r2, 23
.Ltmp3:
	.loc	2 113 29                        # triton_helpers.py:113:29
	srli r14, r7, 23
.Ltmp4:
	.loc	1 0 0                           # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	seteq r11, r11, zero
.Ltmp5:
	.loc	2 113 29                        # triton_helpers.py:113:29
	seteq r12, r12, zero
.Ltmp6:
	.loc	1 0 0                           # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	andi r13, r13, 255
.Ltmp7:
	.loc	2 113 29                        # triton_helpers.py:113:29
	andi r14, r14, 255
.Ltmp8:
	.loc	1 0 0                           # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	setlti r13, r13, 255
.Ltmp9:
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlti r14, r14, 255
.Ltmp10:
	.loc	1 0 0                           # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	or r11, r13, r11
.Ltmp11:
	.loc	2 113 29                        # triton_helpers.py:113:29
	or r12, r14, r12
	and r11, r12, r11
	beq r11, zero, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_29
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=2
	beq r2, zero, .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r11, 0
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r11, zero, r8
	setle.f r12, r8, zero
	and r11, r12, r11
	bneq r11, zero, .LBB0_16
.Ltmp12:
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r8, 0
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 49 35 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:49:35
	blt.s r24, r18, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 35 is_stmt 0                # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:35
	addli r2, r7, 0
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=2
	add.hf.rn r1, r1, r5
	hfloat2float.rn r5, r1
	addli r1, r3, 0
.Ltmp13:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r7, r5, r3
	bneq r7, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=2
	slli r7, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r3, 9
	srli r11, r5, 23
	srli r12, r3, 23
	seteq r7, r7, zero
	seteq r8, r8, zero
	andi r11, r11, 255
	andi r12, r12, 255
	setlti r11, r11, 255
	setlti r12, r12, 255
	or r7, r11, r7
	or r8, r12, r8
	and r7, r8, r7
	beq r7, zero, .LBB0_30
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=2
	beq r5, zero, .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r7, 0
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r7, zero, r1
	setle.f r8, r1, zero
	and r7, r8, r7
	bneq r7, zero, .LBB0_26
.Ltmp14:
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 49 35 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:49:35
	blt.s r24, r18, .LBB0_7
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 35 is_stmt 0                # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:35
	addli r5, r3, 0
	j .LBB0_7
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=2
	lui r8, 523264
	addli r11, r7, 0
.Ltmp15:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r7, zero, .LBB0_12
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r11, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_13
	j .LBB0_14
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r7, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_22
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_23
	j .LBB0_24
.LBB0_32:                               #   in Loop: Header=BB0_2 Depth=1
	setlt.f r3, r5, r2
	addli r1, r2, 0
	bneq r3, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_34:                               #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	slli r4, r2, 9
	srli r7, r5, 23
	srli r8, r2, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r3, r7, r3
	or r4, r8, r4
	and r3, r4, r3
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_100
# %bb.35:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r2, zero, .LBB0_101
.LBB0_36:                               #   in Loop: Header=BB0_2 Depth=1
	beq r5, zero, .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_38:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_40:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -180(r30)                 # 4-byte Folded Reload
	stores.w r5, 0(r1)
	mfence { lm, sm, gm }
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	csr_set csr3, r1
	sync_group
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_98
# %bb.41:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r3, 0(r21)
	loads.w r2, 4(r21)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r2, r3
	addli r1, r3, 0
	bneq r4, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_43:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r3, 9
	slli r5, r2, 9
	srli r7, r3, 23
	srli r8, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r4, r7, r4
	or r5, r8, r5
	and r4, r4, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_113
# %bb.44:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r3, zero, .LBB0_114
.LBB0_45:                               #   in Loop: Header=BB0_2 Depth=1
	beq r2, zero, .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_47:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_49:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r4, 8(r21)
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r4, r2
	bneq r3, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_51:                               #   in Loop: Header=BB0_2 Depth=1
	slli r3, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r2, 9
	srli r7, r4, 23
	srli r8, r2, 23
	seteq r3, r3, zero
	seteq r5, r5, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r3, r7, r3
	or r5, r8, r5
	and r3, r5, r3
	beq r3, zero, .LBB0_115
# %bb.52:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r2, zero, .LBB0_116
.LBB0_53:                               #   in Loop: Header=BB0_2 Depth=1
	beq r4, zero, .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_55:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_57:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r5, 12(r21)
	loads.w r3, 16(r21)
	loads.w r2, 20(r21)
	loads.w r8, 24(r21)
	loads.w r12, 28(r21)
	addli r1, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r7, r5, r4
	bneq r7, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_59:                               #   in Loop: Header=BB0_2 Depth=1
	slli r7, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r11, r4, 9
	srli r13, r5, 23
	srli r14, r4, 23
	seteq r7, r7, zero
	seteq r11, r11, zero
	andi r13, r13, 255
	andi r14, r14, 255
	setlti r13, r13, 255
	setlti r14, r14, 255
	or r7, r13, r7
	or r11, r14, r11
	and r7, r11, r7
	beq r7, zero, .LBB0_117
# %bb.60:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r4, zero, .LBB0_118
.LBB0_61:                               #   in Loop: Header=BB0_2 Depth=1
	beq r5, zero, .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r4, 0
.LBB0_63:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r7, r1, zero
	and r4, r7, r4
	bneq r4, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_65:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r3, r5
	addli r1, r5, 0
	bneq r4, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r5, 9
	srli r11, r3, 23
	srli r13, r5, 23
	seteq r4, r4, zero
	seteq r7, r7, zero
	andi r11, r11, 255
	andi r13, r13, 255
	setlti r11, r11, 255
	setlti r13, r13, 255
	or r4, r11, r4
	or r7, r13, r7
	and r4, r7, r4
	beq r4, zero, .LBB0_119
# %bb.68:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r5, zero, .LBB0_120
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	beq r3, zero, .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r2, r3
	addli r1, r3, 0
	bneq r4, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r3, 9
	srli r7, r2, 23
	srli r11, r3, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r7, r7, 255
	andi r11, r11, 255
	setlti r7, r7, 255
	setlti r11, r11, 255
	or r4, r7, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_121
# %bb.76:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r3, zero, .LBB0_122
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	beq r2, zero, .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r8, r2
	addli r1, r2, 0
	bneq r3, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	slli r3, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r8, 23
	srli r7, r2, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r7, r7, 255
	setlti r5, r5, 255
	setlti r7, r7, 255
	or r3, r5, r3
	or r4, r7, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_123
# %bb.84:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r2, zero, .LBB0_124
.LBB0_85:                               #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r2, 0
.LBB0_87:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_89:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_91:                               #   in Loop: Header=BB0_2 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r12, 23
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
	beq r2, zero, .LBB0_125
# %bb.92:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r8, zero, .LBB0_126
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r8, 0
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_97
.Ltmp16:
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_97:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	stores.w r12, 0(r21)
.LBB0_98:                               #   in Loop: Header=BB0_2 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r1
	sync_group
	loads.w r22, 0(r21)
	.loc	1 54 35 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:54:35
	blt.s r24, r18, .LBB0_102
# %bb.99:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:35
	addli r1, zero, 0
	addli r26, zero, 0
	j .LBB0_103
.LBB0_100:                              #   in Loop: Header=BB0_2 Depth=1
	lui r1, 523264
.Ltmp17:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r2, zero, .LBB0_36
.LBB0_101:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_37
	j .LBB0_38
.Ltmp18:
.LBB0_102:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 0                           # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	sub.f.rn r1, r26, r22
	sub.f.rn r2, r27, r22
	exp.f.rn r1, r1
	exp.f.rn r26, r2
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r8,  -240(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r25
	add.s r14, r2, r25
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	add.s r7, r4, r25
	loadli.w r4,  -236(r30)                 # 4-byte Folded Reload
	storeli.w r8, -172(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -244(r30)                 # 4-byte Folded Reload
	add.s r5, r2, r25
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r25
	add.s r8, r8, r25
	add.s r21, r2, r25
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	storeli.w r8, -168(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -248(r30)                 # 4-byte Folded Reload
	add.s r23, r2, r25
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r25
	storeli.w r8, -164(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -252(r30)                 # 4-byte Folded Reload
	add.s r3, r2, r25
	loadli.w r2,  -224(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r25
	add.s r11, r2, r25
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r8, -160(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -256(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	add.s r8, r8, r25
	storeli.w r8, -156(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -260(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r25
	addli r25, zero, 0
	storeli.w r8, -152(r30)                 # 4-byte Folded Spill
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_106 Depth=2
	addli r8, zero, 0
	addli r27, zero, 0
.LBB0_105:                              #   in Loop: Header=BB0_106 Depth=2
.Ltmp19:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r1, r8
	add.f.rn r26, r26, r27
	addli r25, r25, 4
	beq r25, r19, .LBB0_108
.Ltmp20:
.LBB0_106:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 54 35                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:54:35
	blt.s r24, r18, .LBB0_107
	j .LBB0_104
.LBB0_107:                              #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 0 is_stmt 0                 # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:0
	add.s r8, r15, r25
	add.s r27, r17, r25
	load.hu r12, 4(r8)
	load.hu r13, 4(r27)
	load.hu r8, 6(r8)
	load.hu r27, 6(r27)
	add.hf.rn r12, r12, r13
	add.hf.rn r8, r8, r27
	hfloat2float.rn r12, r12
	hfloat2float.rn r8, r8
	sub.f.rn r13, r8, r22
	sub.f.rn r12, r12, r22
	exp.f.rn r8, r12
	exp.f.rn r27, r13
	.loc	1 54 35                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:54:35
	j .LBB0_105
.LBB0_108:                              #   in Loop: Header=BB0_2 Depth=1
.Ltmp21:
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r1, r26
	loadli.w r8,  -184(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r8)
	mfence { lm, sm, gm }
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	csr_set csr3, r1
	sync_group
	loadli.w r8,  -136(r30)                 # 4-byte Folded Reload
	bneq r8, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r13,  -176(r30)                # 4-byte Folded Reload
	loads.w r1, 0(r13)
	loads.w r8, 4(r13)
	loads.w r12, 8(r13)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r8
	loads.w r8, 12(r13)
	add.f.rn r1, r1, r12
	loads.w r12, 16(r13)
	add.f.rn r1, r1, r8
	loads.w r8, 20(r13)
	add.f.rn r1, r1, r12
	loads.w r12, 24(r13)
	add.f.rn r1, r1, r8
	loads.w r8, 28(r13)
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r8
	stores.w r1, 0(r13)
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
.Ltmp22:
.LBB0_110:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r1
	sync_group
	loadli.w r1,  -176(r30)                 # 4-byte Folded Reload
	addli r24, zero, 0
	loads.w r1, 0(r1)
.LBB0_111:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	add.s r8, r15, r24
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	add.s r12, r17, r24
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r24, r24, 4
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.hu r26, 0(r12)
	.loc	1 38 46                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:38:46
	load.hu r13, 0(r8)
	load.hu r25, 2(r8)
	.loc	1 39 37                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:39:37
	load.hu r12, 2(r12)
	.loc	1 45 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:45:19
	add.hf.rn r13, r13, r26
	add.hf.rn r12, r25, r12
	.loc	1 46 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:46:19
	hfloat2float.rn r13, r13
	hfloat2float.rn r12, r12
	.loc	1 51 19                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:51:19
	sub.f.rn r13, r13, r22
	sub.f.rn r12, r12, r22
	.loc	1 52 26                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:52:26
	exp.f.rn r13, r13
	exp.f.rn r12, r12
	.loc	1 56 21                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:56:21
	div.f.rn r13, r13, r1
	div.f.rn r12, r12, r1
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	float2hfloat.rn r13, r13
	float2hfloat.rn r12, r12
	store.h r13, 0(r8)
	store.h r12, 2(r8)
	mfence { lm }
	bneq r24, r16, .LBB0_111
# %bb.112:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 58 25 is_stmt 0               # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[12:13], r14
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r1, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[24:25], r5
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	loadli.w r5,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[21:22], r21
	sext_int2long r[7:8], r7
	sll.d r[12:13], r[12:13], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r1, r20, r1
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[24:25], r[24:25], r28
	sll.d r[21:22], r[21:22], r28
	add.ul r[12:13], r[9:10], r[12:13]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r1, r5, 0(r[12:13])
	lui r1, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[12:13], r[9:10], r[24:25]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r5, r15, 4
	or r1, r20, r1
	s_lm2gm r1, r5, 0(r[12:13])
	lui r1, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[12:13], r[9:10], r[21:22]
	sext_int2long r[21:22], r23
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r5, r15, 6
	or r1, r20, r1
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[21:22], r[21:22], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r1, r5, 0(r[12:13])
	lui r1, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[12:13], r[9:10], r[21:22]
	sext_int2long r[21:22], r3
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r3, r15, 8
	addli r5, r15, 12
	or r1, r20, r1
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[21:22], r[21:22], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r1, r3, 0(r[12:13])
	lui r1, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[12:13], r[9:10], r[21:22]
	sext_int2long r[21:22], r11
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r3, r15, 10
	or r1, r20, r1
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[21:22], r[21:22], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r1, r3, 0(r[12:13])
	lui r3, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[1:2], r2
	add.ul r[11:12], r[9:10], r[21:22]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r3, r20, r3
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r3, r5, 0(r[11:12])
	lui r3, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r5, r15, 14
	addli r11, r15, 22
	or r3, r20, r3
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[1:2], r[7:8], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r5, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[3:4], r4
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r7, r15, 16
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r5, r20, r5
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[3:4], r[3:4], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r5, r7, 0(r[1:2])
	lui r1, 983040
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r2, r15, 18
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r1, r20, r1
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[7:8], r5
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r5, 983040
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[7:8], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r8, 983040
	addli r7, r15, 20
	or r5, r20, r5
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[1:2], r1
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r8, r20, r8
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r3, 983040
	addli r7, r15, 24
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r3, r20, r3
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[4:5], r4
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r8, r11, 0(r[1:2])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	load.d r[1:2], -144(r30)                # 8-byte Folded Reload
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	addli r11, r15, 30
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[4:5], r[4:5], r28
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r3, r15, 0(r[1:2])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[9:10], r[4:5]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r5, 983040
	or r5, r20, r5
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sext_int2long r[1:2], r1
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r5, r7, 0(r[3:4])
	lui r3, 983040
	addli r4, r15, 26
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[1:2], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	or r3, r20, r3
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[1:2], r[9:10], r[1:2]
	sext_int2long r[7:8], r5
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r5, 983040
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[7:8], r28
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	lui r8, 983040
	addli r7, r15, 28
	or r5, r20, r5
	or r8, r20, r8
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	add.ul r[3:4], r[9:10], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 58 25                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:25
	sll.d r[1:2], r[1:2], r28
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 58 48                         # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:48
	s_lm2gm r8, r11, 0(r[1:2])
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r21,  -276(r30)                # 4-byte Folded Reload
	add.s r6, r6, r1
	loadli.w r1,  -188(r30)                 # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_2
	j .LBB0_127
.LBB0_113:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 48                          # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:0:48
	lui r1, 523264
.Ltmp23:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_45
.LBB0_114:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_46
	j .LBB0_47
.LBB0_115:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_53
.LBB0_116:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_54
	j .LBB0_55
.LBB0_117:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_61
.LBB0_118:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_62
	j .LBB0_63
.LBB0_119:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_69
.LBB0_120:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_70
	j .LBB0_71
.LBB0_121:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_77
.LBB0_122:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_78
	j .LBB0_79
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_85
.LBB0_124:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_86
	j .LBB0_87
.LBB0_125:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_93
.LBB0_126:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_94
	j .LBB0_95
.Ltmp24:
.LBB0_127:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py:58:4
	addli sp, sp, 280
	mfence { lm, sm, gm }
	exit
.Ltmp25:
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
	.long	344                             # 0x158
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
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
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
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cqyswpvpniqkcyg3ypfiqy2oysvcand2fmecmrsneej5oj6pprb5.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/qy" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
