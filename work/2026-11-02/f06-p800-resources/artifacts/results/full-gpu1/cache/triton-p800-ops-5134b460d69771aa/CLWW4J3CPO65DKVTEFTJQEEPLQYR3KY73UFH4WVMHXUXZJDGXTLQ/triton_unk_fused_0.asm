	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fi" "cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py"
	.loc	1 22 0                          # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -344
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 280
	lui r5, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r7,  40(r30)
	ori r21, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r6, r4
	load_param_i r6, 0
	addli r9, r8, 8208
	mul.s r4, r4, r7
	storeli.w r9, -188(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	storeli.w r8, -184(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	ble.s r4, r6, .LBB0_26
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
	addli r20, zero, 28
	storeli.w r21, -132(r30)                # 4-byte Folded Spill
	div.s r4, r1, r4
	storeli.w r5, -204(r30)                 # 4-byte Folded Spill
	ori r11, r11, 4064
	and r3, r3, r11
	add.s r12, r3, r2
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	addli r14, r12, 8208
	sub.s r4, r1, r4
	andi r1, r1, 7
	slli r4, r4, 4
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r5, r4, 1
	storeli.w r4, -200(r30)                 # 4-byte Folded Spill
	ori r1, r1, 623
	storeli.w r5, -208(r30)                 # 4-byte Folded Spill
	ori r5, r4, 2
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	ori r5, r4, 3
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	ori r5, r4, 4
	storeli.w r5, -220(r30)                 # 4-byte Folded Spill
	ori r5, r4, 5
	storeli.w r5, -224(r30)                 # 4-byte Folded Spill
	ori r5, r4, 6
	storeli.w r5, -228(r30)                 # 4-byte Folded Spill
	ori r5, r4, 7
	storeli.w r5, -232(r30)                 # 4-byte Folded Spill
	ori r5, r4, 8
	storeli.w r5, -236(r30)                 # 4-byte Folded Spill
	ori r5, r4, 9
	storeli.w r5, -240(r30)                 # 4-byte Folded Spill
	ori r5, r4, 10
	storeli.w r5, -244(r30)                 # 4-byte Folded Spill
	ori r5, r4, 11
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
	ori r5, r4, 12
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
	ori r5, r4, 13
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
	ori r5, r4, 14
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
	ori r5, r4, 15
	storeli.w r5, -264(r30)                 # 4-byte Folded Spill
	sext_int2long r[4:5], r4
	sll.d r[4:5], r[4:5], r28
	add.ul r[4:5], r[7:8], r[4:5]
	addli r8, zero, 2
	store.d r[4:5], -272(r30)               # 8-byte Folded Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 46 prologue_end            # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	add.s r2, r15, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r16, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 46 is_stmt 0                # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:0:46
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 29 23 is_stmt 1               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:29:23
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:29:23
	add.s r24, r1, r2
	.loc	1 38 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:37
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	lui r2, 983040
	.loc	1 38 41                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:41
	slli r26, r24, 7
	.loc	1 38 46                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	or r2, r16, r2
	.loc	1 38 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:37
	add.s r1, r26, r1
	.loc	1 38 30                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 39 37 is_stmt 1               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:30
	sll.d r[22:23], r[3:4], r28
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	or r1, r16, r1
	store.d r[22:23], -144(r30)             # 8-byte Folded Spill
	.loc	1 38 30                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:30
	add.ul r[3:4], r[3:4], r[22:23]
	.loc	1 38 46 is_stmt 0               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	l_gm2lm r2, r15, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	load.d r[2:3], -272(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r17, 0(r[2:3])
	.loc	1 38 46                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	load.hu r3, -64(r30)
	.loc	1 38 46                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	load.hu r2, -126(r30)
	.loc	1 39 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	load.hu r4, -62(r30)
	.loc	1 45 19                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:45:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 46 19                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:46:19
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	addli r3, r1, 0
	addli r4, r2, 0
	.loc	1 51 35                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:51:35
	blt.s r24, r18, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:0:35
	addli r3, zero, 0
	addli r4, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r5, r15, 2
	storeli.w r5, -148(r30)                 # 4-byte Folded Spill
	addli r5, zero, 0
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r7, zero, 0
	addli r11, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r7
	add.f.rn r4, r4, r11
	addli r5, r5, 4
	beq r5, r20, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 51 35                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:51:35
	blt.s r24, r18, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:0:0
	add.s r7, r15, r5
	add.s r11, r17, r5
	load.hu r13, 4(r7)
	load.hu r19, 4(r11)
	load.hu r7, 6(r7)
	load.hu r11, 6(r11)
	add.hf.rn r11, r7, r11
	add.hf.rn r13, r13, r19
	hfloat2float.rn r7, r13
	hfloat2float.rn r11, r11
	.loc	1 51 35                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:51:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r4
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	loadli.w r3,  -136(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r3, 0(r12)
	loads.w r4, 4(r12)
	loads.w r5, 8(r12)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r4
	loads.w r4, 12(r12)
	add.f.rn r3, r3, r5
	loads.w r5, 16(r12)
	add.f.rn r3, r3, r4
	loads.w r4, 20(r12)
	add.f.rn r3, r3, r5
	loads.w r5, 24(r12)
	add.f.rn r3, r3, r4
	loads.w r4, 28(r12)
	add.f.rn r3, r3, r5
	add.f.rn r3, r3, r4
	stores.w r3, 0(r12)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	loads.w r3, 0(r12)
	.loc	1 55 21 is_stmt 1               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:55:21
	lui r4, 245760
	mul.f.rn r4, r3, r4
	.loc	1 59 35                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:59:35
	blt.s r24, r18, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:0:35
	addli r23, zero, 0
	addli r5, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r1, r1, r4
	sub.f.rn r2, r2, r4
	mul.f.rn r23, r1, r1
	mul.f.rn r5, r2, r2
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	add.s r22, r1, r26
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	add.s r27, r1, r26
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	add.s r25, r1, r26
	loadli.w r1,  -220(r30)                 # 4-byte Folded Reload
	add.s r13, r1, r26
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r26
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	add.s r19, r1, r26
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	add.s r3, r1, r26
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -180(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -176(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -168(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -160(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r26
	addli r26, zero, 0
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r1, zero, 0
	addli r2, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r23, r23, r1
	add.f.rn r5, r5, r2
	addli r26, r26, 4
	beq r26, r20, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 59 35                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:59:35
	blt.s r24, r18, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:0:0
	add.s r1, r15, r26
	add.s r2, r17, r26
	load.hu r7, 4(r1)
	load.hu r21, 4(r2)
	load.hu r1, 6(r1)
	load.hu r2, 6(r2)
	add.hf.rn r1, r1, r2
	add.hf.rn r7, r7, r21
	hfloat2float.rn r2, r7
	hfloat2float.rn r1, r1
	sub.f.rn r2, r2, r4
	sub.f.rn r7, r1, r4
	mul.f.rn r1, r2, r2
	mul.f.rn r2, r7, r7
	.loc	1 59 35                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:59:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r23, r5
	loadli.w r2,  -188(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r7,  -132(r30)                 # 4-byte Folded Reload
	csr_set csr3, r7
	sync_group
	loadli.w r1,  -136(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r1, 0(r14)
	loads.w r2, 4(r14)
	loads.w r5, 8(r14)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r2
	loads.w r2, 12(r14)
	add.f.rn r1, r1, r5
	loads.w r5, 16(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r14)
	add.f.rn r1, r1, r5
	loads.w r5, 24(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r14)
	add.f.rn r1, r1, r5
	add.f.rn r1, r1, r2
	stores.w r1, 0(r14)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loads.w r1, 0(r14)
	.loc	1 63 21 is_stmt 1               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:63:21
	lui r2, 245760
	addli r23, zero, 0
	mul.f.rn r1, r1, r2
	.loc	1 65 20                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:65:20
	loadli.w r2,  -276(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	.loc	1 66 28                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:66:28
	lui r2, 260096
	sqrt.f.rn r1, r1
	div.f.rn r5, r2, r1
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	add.s r1, r15, r23
	.loc	1 39 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	add.s r2, r17, r23
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r23, r23, 4
	.loc	1 39 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	load.hu r24, 0(r2)
	.loc	1 38 46                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:38:46
	load.hu r7, 0(r1)
	load.hu r21, 2(r1)
	.loc	1 39 37                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:39:37
	load.hu r2, 2(r2)
	.loc	1 45 19                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:45:19
	add.hf.rn r7, r7, r24
	add.hf.rn r2, r21, r2
	.loc	1 46 19                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:46:19
	hfloat2float.rn r7, r7
	hfloat2float.rn r2, r2
	.loc	1 56 20                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:56:20
	sub.f.rn r7, r7, r4
	sub.f.rn r2, r2, r4
	.loc	1 67 20                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:67:20
	mul.f.rn r7, r5, r7
	mul.f.rn r2, r5, r2
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	float2hfloat.rn r7, r7
	float2hfloat.rn r2, r2
	store.h r7, 0(r1)
	store.h r2, 2(r1)
	mfence { lm }
	bneq r23, r16, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 69 25 is_stmt 0               # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[1:2], r22
	sext_int2long r[4:5], r27
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r7, 983040
	loadli.w r21,  -148(r30)                # 4-byte Folded Reload
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r7, r8, r7
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[4:5], r[4:5], r28
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r7, r21, 0(r[1:2])
	lui r7, 983040
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[4:5]
	sext_int2long r[4:5], r25
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r21, r15, 4
	or r7, r8, r7
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[4:5], r[4:5], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r7, r21, 0(r[1:2])
	lui r7, 983040
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[4:5]
	sext_int2long r[4:5], r13
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r13, r15, 6
	or r7, r8, r7
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[4:5], r[4:5], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r7, r13, 0(r[1:2])
	lui r7, 983040
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[4:5]
	sext_int2long r[4:5], r11
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r11, r15, 8
	addli r13, r15, 22
	or r7, r8, r7
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[4:5], r[4:5], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r7, r11, 0(r[1:2])
	lui r7, 983040
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[4:5]
	sext_int2long r[4:5], r19
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r11, r15, 10
	or r7, r8, r7
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[4:5], r[4:5], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r7, r11, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[4:5]
	sext_int2long r[3:4], r3
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r5, 983040
	addli r7, r15, 12
	lui r11, 983040
	or r5, r8, r5
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[3:4], r[3:4], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r11, r8, r11
	s_lm2gm r5, r7, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[3:4]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r3, 983040
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r4, r15, 14
	addli r7, r15, 16
	or r3, r8, r3
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[21:22], r5
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r5, 983040
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r3,  -176(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[21:22], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r5, r8, r5
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[3:4], r3
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r5, r7, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[3:4], r[3:4], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r1, 983040
	addli r2, r15, 18
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r7, r15, 20
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r1, r8, r1
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[21:22], r5
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r5, 983040
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[21:22], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r5, r8, r5
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[1:2], r1
	add.ul r[3:4], r[9:10], r[3:4]
	sll.d r[1:2], r[1:2], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r3, 983040
	addli r7, r15, 24
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r3, r8, r3
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[4:5], r4
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r11, r13, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	load.d r[1:2], -144(r30)                # 8-byte Folded Reload
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r11, 983040
	addli r13, r15, 30
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[4:5], r[4:5], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r11, r8, r11
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r3, r15, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[9:10], r[4:5]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r5, 983040
	or r5, r8, r5
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sext_int2long r[1:2], r1
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r5, r7, 0(r[3:4])
	lui r3, 983040
	addli r4, r15, 26
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	addli r7, r15, 28
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r3, r8, r3
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[1:2], r[9:10], r[1:2]
	sext_int2long r[21:22], r5
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	lui r5, 983040
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[21:22], r28
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	or r5, r8, r5
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	add.ul r[3:4], r[9:10], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 69 25                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:25
	sll.d r[1:2], r[1:2], r28
	add.ul r[1:2], r[9:10], r[1:2]
	.loc	1 69 48                         # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:48
	s_lm2gm r11, r13, 0(r[1:2])
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r21,  -132(r30)                # 4-byte Folded Reload
	add.s r6, r6, r1
	loadli.w r1,  -192(r30)                 # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 69 4 epilogue_begin           # cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py:69:4
	addli sp, sp, 280
	mfence { lm, sm, gm }
	exit
.Ltmp9:
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
	.byte	52                              # DW_AT_call_line
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
	.byte	60                              # DW_AT_call_line
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
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cfihuhf4ktl2f5c6i76zygoa4wi4ngzvpbiwwm3qgcl3jpoafsfs.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fi" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
