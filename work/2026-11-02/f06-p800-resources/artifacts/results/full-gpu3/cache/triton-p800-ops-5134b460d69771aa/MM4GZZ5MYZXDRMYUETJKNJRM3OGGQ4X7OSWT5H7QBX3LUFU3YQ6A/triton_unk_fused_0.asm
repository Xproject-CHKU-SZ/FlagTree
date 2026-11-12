	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/2a" "c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py"
	.loc	1 22 0                          # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -344
	addli r30, sp, 280
	lui r2, :hi20:global_smem
	core_id r3
	lui r4, 15
	loadli.w r5,  36(r30)
	loadli.w r1,  32(r30)
	slli r6, r3, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  40(r30)
	ori r4, r4, 4095
	add.s r8, r6, r2
	mul.s r1, r5, r1
	load_param_i r5, 0
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r8, -184(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r1, r1, r7
	mfence { lm, sm, gm }
	storeli.w r4, -132(r30)                 # 4-byte Folded Spill
	csr_set csr3, r4
	sync_group
	storeli.w r1, -188(r30)                 # 4-byte Folded Spill
	ble.s r1, r5, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r7, zero, 64
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	load.d r[11:12], 8(r30)
	load.d r[9:10], 16(r30)
	addli r16, r30, -128
	addli r17, zero, 32
	addli r19, r30, -64
	addli r20, zero, 28
	addli r22, zero, 2
	div.s r1, r3, r7
	addli r4, r4, 1040
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	load_param_i r4, 1
	storeli.w r4, -204(r30)                 # 4-byte Folded Spill
	storeli.w r1, -192(r30)                 # 4-byte Folded Spill
	slli r1, r1, 6
	sub.s r1, r3, r1
	andi r3, r3, 63
	slli r1, r1, 4
	storeli.w r3, -136(r30)                 # 4-byte Folded Spill
	lui r3, 239665
	ori r4, r1, 1
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
	sext_int2long r[13:14], r1
	ori r3, r3, 623
	storeli.w r4, -208(r30)                 # 4-byte Folded Spill
	ori r4, r1, 2
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
	storeli.w r4, -212(r30)                 # 4-byte Folded Spill
	ori r4, r1, 3
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	ori r4, r1, 4
	storeli.w r4, -220(r30)                 # 4-byte Folded Spill
	ori r4, r1, 5
	storeli.w r4, -224(r30)                 # 4-byte Folded Spill
	ori r4, r1, 6
	storeli.w r4, -228(r30)                 # 4-byte Folded Spill
	ori r4, r1, 7
	storeli.w r4, -232(r30)                 # 4-byte Folded Spill
	ori r4, r1, 8
	storeli.w r4, -236(r30)                 # 4-byte Folded Spill
	ori r4, r1, 9
	storeli.w r4, -240(r30)                 # 4-byte Folded Spill
	ori r4, r1, 10
	storeli.w r4, -244(r30)                 # 4-byte Folded Spill
	ori r4, r1, 11
	storeli.w r4, -248(r30)                 # 4-byte Folded Spill
	ori r4, r1, 12
	storeli.w r4, -252(r30)                 # 4-byte Folded Spill
	ori r4, r1, 13
	storeli.w r4, -256(r30)                 # 4-byte Folded Spill
	ori r4, r1, 14
	storeli.w r4, -260(r30)                 # 4-byte Folded Spill
	ori r4, r1, 15
	addli r1, zero, 1
	storeli.w r4, -264(r30)                 # 4-byte Folded Spill
	lui r4, 1048575
	sll.d r[13:14], r[13:14], r1
	ori r4, r4, 3840
	add.ul r[11:12], r[11:12], r[13:14]
	and r4, r6, r4
	store.d r[11:12], -272(r30)             # 8-byte Folded Spill
	add.s r2, r4, r2
	addli r15, r2, 1040
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r3, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	add.s r4, r16, r3
	addli r3, r3, 4
	store.h zero, 0(r4)
	store.h zero, 2(r4)
	mfence { lm }
	bneq r3, r17, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:0:47
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	div.s r3, r5, r3
	div.s r3, r3, r4
	.loc	1 29 23 is_stmt 1               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:29:23
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	add.s r25, r3, r4
	.loc	1 38 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:37
	loadli.w r3,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 38 47 is_stmt 0               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	lui r4, 983040
	.loc	1 38 42                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:42
	slli r26, r25, 10
	.loc	1 38 47                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	or r4, r17, r4
	.loc	1 38 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:37
	add.s r3, r26, r3
	.loc	1 38 30                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:30
	sext_int2long r[11:12], r3
	.loc	1 39 37 is_stmt 1               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	lui r3, 983040
	.loc	1 38 30                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:30
	sll.d r[13:14], r[11:12], r1
	load.d r[11:12], 0(r30)
	.loc	1 39 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	or r3, r17, r3
	store.d r[13:14], -144(r30)             # 8-byte Folded Spill
	.loc	1 38 30                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:30
	add.ul r[11:12], r[11:12], r[13:14]
	.loc	1 38 47 is_stmt 0               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	l_gm2lm r4, r16, 0(r[11:12])
	.loc	1 39 37 is_stmt 1               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	load.d r[11:12], -272(r30)              # 8-byte Folded Reload
	l_gm2lm r3, r19, 0(r[11:12])
	.loc	1 38 47                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	mfence { lm }
	load.hu r3, -128(r30)
	.loc	1 39 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	load.hu r6, -64(r30)
	.loc	1 38 47                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	load.hu r4, -126(r30)
	.loc	1 39 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	load.hu r8, -62(r30)
	.loc	1 45 19                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:45:19
	add.hf.rn r3, r3, r6
	add.hf.rn r4, r4, r8
	.loc	1 46 19                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:46:19
	hfloat2float.rn r3, r3
	hfloat2float.rn r6, r4
	addli r8, r3, 0
	addli r11, r6, 0
	.loc	1 51 35                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:51:35
	blt.s r25, r7, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:0:35
	addli r8, zero, 0
	addli r11, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r4, r19, 2
	addli r12, zero, 0
	storeli.w r4, -148(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r13, zero, 0
	addli r14, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r8, r8, r13
	add.f.rn r11, r11, r14
	addli r12, r12, 4
	beq r12, r20, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 51 35                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:51:35
	blt.s r25, r7, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:0:0
	add.s r4, r16, r12
	add.s r13, r19, r12
	load.hu r14, 4(r4)
	load.hu r18, 4(r13)
	load.hu r4, 6(r4)
	load.hu r13, 6(r13)
	add.hf.rn r14, r14, r18
	add.hf.rn r4, r4, r13
	hfloat2float.rn r13, r14
	hfloat2float.rn r14, r4
	.loc	1 51 35                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:51:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r4, r8, r11
	loadli.w r8,  -184(r30)                 # 4-byte Folded Reload
	stores.w r4, 0(r8)
	mfence { lm, sm, gm }
	loadli.w r13,  -132(r30)                # 4-byte Folded Reload
	csr_set csr3, r13
	sync_group
	loadli.w r4,  -136(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r8, 0(r2)
	loads.w r12, 4(r2)
	loads.w r11, 8(r2)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r4, r8, r12
	loads.w r8, 12(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 16(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 20(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 24(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 28(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 32(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 36(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 40(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 44(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 48(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 52(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 56(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 60(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 64(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 68(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 72(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 76(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 80(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 84(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 88(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 92(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 96(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 100(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 104(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 108(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 112(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 116(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 120(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 124(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 128(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 132(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 136(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 140(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 144(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 148(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 152(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 156(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 160(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 164(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 168(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 172(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 176(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 180(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 184(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 188(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 192(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 196(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 200(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 204(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 208(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 212(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 216(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 220(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 224(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 228(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 232(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 236(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 240(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 244(r2)
	add.f.rn r4, r4, r11
	loads.w r11, 248(r2)
	add.f.rn r4, r4, r8
	loads.w r8, 252(r2)
	add.f.rn r4, r4, r11
	add.f.rn r4, r4, r8
	stores.w r4, 0(r2)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	loads.w r4, 0(r2)
	.loc	1 55 21 is_stmt 1               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:55:21
	lui r8, 239616
	mul.f.rn r24, r4, r8
	.loc	1 59 35                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:59:35
	blt.s r25, r7, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:0:35
	addli r8, zero, 0
	addli r13, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r3, r3, r24
	sub.f.rn r4, r6, r24
	mul.f.rn r8, r3, r3
	mul.f.rn r13, r4, r4
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -208(r30)                 # 4-byte Folded Reload
	add.s r6, r4, r26
	loadli.w r4,  -236(r30)                 # 4-byte Folded Reload
	add.s r28, r3, r26
	loadli.w r3,  -212(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	add.s r27, r3, r26
	loadli.w r3,  -216(r30)                 # 4-byte Folded Reload
	storeli.w r4, -180(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -240(r30)                 # 4-byte Folded Reload
	add.s r23, r3, r26
	loadli.w r3,  -220(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	add.s r11, r3, r26
	loadli.w r3,  -224(r30)                 # 4-byte Folded Reload
	storeli.w r4, -176(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -244(r30)                 # 4-byte Folded Reload
	add.s r12, r3, r26
	loadli.w r3,  -228(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	storeli.w r4, -172(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -248(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r26
	add.s r4, r4, r26
	storeli.w r4, -168(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -252(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	storeli.w r4, -164(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -256(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	storeli.w r4, -160(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -260(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -264(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r26
	addli r26, zero, 0
	storeli.w r4, -152(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r14, zero, 0
	addli r4, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r8, r8, r14
	add.f.rn r13, r13, r4
	addli r26, r26, 4
	beq r26, r20, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 59 35                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:59:35
	blt.s r25, r7, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:0:0
	add.s r4, r16, r26
	add.s r14, r19, r26
	load.hu r21, 4(r4)
	load.hu r18, 4(r14)
	load.hu r4, 6(r4)
	load.hu r14, 6(r14)
	add.hf.rn r4, r4, r14
	add.hf.rn r18, r21, r18
	hfloat2float.rn r14, r18
	hfloat2float.rn r4, r4
	sub.f.rn r14, r14, r24
	sub.f.rn r4, r4, r24
	mul.f.rn r14, r14, r14
	mul.f.rn r4, r4, r4
	.loc	1 59 35                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:59:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r4, r8, r13
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	stores.w r4, 0(r8)
	mfence { lm, sm, gm }
	loadli.w r14,  -132(r30)                # 4-byte Folded Reload
	csr_set csr3, r14
	sync_group
	loadli.w r4,  -136(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r8, 0(r15)
	loads.w r25, 4(r15)
	loads.w r13, 8(r15)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r4, r8, r25
	loads.w r8, 12(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 16(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 20(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 24(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 28(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 32(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 36(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 40(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 44(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 48(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 52(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 56(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 60(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 64(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 68(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 72(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 76(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 80(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 84(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 88(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 92(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 96(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 100(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 104(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 108(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 112(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 116(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 120(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 124(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 128(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 132(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 136(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 140(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 144(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 148(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 152(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 156(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 160(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 164(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 168(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 172(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 176(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 180(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 184(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 188(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 192(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 196(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 200(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 204(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 208(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 212(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 216(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 220(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 224(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 228(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 232(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 236(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 240(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 244(r15)
	add.f.rn r4, r4, r13
	loads.w r13, 248(r15)
	add.f.rn r4, r4, r8
	loads.w r8, 252(r15)
	add.f.rn r4, r4, r13
	add.f.rn r4, r4, r8
	stores.w r4, 0(r15)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loads.w r4, 0(r15)
	.loc	1 63 21 is_stmt 1               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:63:21
	lui r8, 239616
	addli r13, zero, 0
	mul.f.rn r4, r4, r8
	.loc	1 65 20                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:65:20
	loadli.w r8,  -276(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r8
	.loc	1 66 28                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:66:28
	lui r8, 260096
	sqrt.f.rn r4, r4
	div.f.rn r8, r8, r4
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	add.s r14, r19, r13
	.loc	1 38 47                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	add.s r4, r16, r13
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r13, r13, 4
	.loc	1 38 47                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	load.hu r18, 0(r4)
	.loc	1 39 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	load.hu r21, 0(r14)
	.loc	1 38 47                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:38:47
	load.hu r4, 2(r4)
	.loc	1 39 37                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:39:37
	load.hu r25, 2(r14)
	.loc	1 45 19                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:45:19
	add.hf.rn r18, r18, r21
	add.hf.rn r4, r4, r25
	.loc	1 46 19                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:46:19
	hfloat2float.rn r18, r18
	hfloat2float.rn r4, r4
	.loc	1 56 20                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:56:20
	sub.f.rn r18, r18, r24
	sub.f.rn r4, r4, r24
	.loc	1 67 20                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:67:20
	mul.f.rn r18, r8, r18
	mul.f.rn r4, r8, r4
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	float2hfloat.rn r18, r18
	float2hfloat.rn r4, r4
	store.h r18, 0(r14)
	store.h r4, 2(r14)
	mfence { lm }
	bneq r13, r17, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 69 25 is_stmt 0               # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[13:14], r28
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r4, 983040
	loadli.w r8,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[24:25], r27
	sll.d r[13:14], r[13:14], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r4, r22, r4
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[24:25], r[24:25], r1
	add.ul r[13:14], r[9:10], r[13:14]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r4, r8, 0(r[13:14])
	lui r4, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[13:14], r[9:10], r[24:25]
	sext_int2long r[23:24], r23
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 4
	or r4, r22, r4
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[23:24], r[23:24], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r4, r8, 0(r[13:14])
	lui r4, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[13:14], r[9:10], r[23:24]
	sext_int2long r[23:24], r11
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[11:12], r12
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r4, r22, r4
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[23:24], r[23:24], r1
	sll.d r[11:12], r[11:12], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r4, r8, 0(r[13:14])
	lui r4, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[13:14], r[9:10], r[23:24]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 8
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[11:12], r[9:10], r[11:12]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r4, r22, r4
	s_lm2gm r4, r8, 0(r[13:14])
	lui r8, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[3:4], r3
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r13, r19, 10
	or r8, r22, r8
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[3:4], r[3:4], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r8, r13, 0(r[11:12])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[11:12], r6
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r6, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 12
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[11:12], r[11:12], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[3:4])
	lui r6, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[3:4], r[9:10], r[11:12]
	loadli.w r11,  -180(r30)                # 4-byte Folded Reload
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 14
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[11:12], r11
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[3:4])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r6,  -176(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 16
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[3:4], r[11:12], r1
	sext_int2long r[11:12], r6
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r6, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[11:12], r[11:12], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[3:4])
	lui r3, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[11:12], r[9:10], r[11:12]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r4, r19, 18
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 20
	or r3, r22, r3
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[13:14], r6
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r6, 983040
	s_lm2gm r3, r4, 0(r[11:12])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r3,  -168(r30)                 # 4-byte Folded Reload
	sll.d r[11:12], r[13:14], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r13, 983040
	addli r14, r19, 22
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[3:4], r3
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r13, r22, r13
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[11:12], r[9:10], r[11:12]
	sll.d r[3:4], r[3:4], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[11:12])
	lui r6, 983040
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r8,  -164(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[11:12], r8
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	addli r8, r19, 24
	s_lm2gm r13, r14, 0(r[3:4])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	load.d r[3:4], -144(r30)                # 8-byte Folded Reload
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r13, 983040
	addli r14, r19, 30
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[11:12], r[11:12], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r13, r22, r13
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[3:4], r[9:10], r[3:4]
	add.ul r[11:12], r[9:10], r[11:12]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r19, 0(r[3:4])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r3,  -160(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r6, 983040
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[3:4], r3
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[11:12])
	lui r6, 983040
	addli r8, r19, 26
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r11,  -156(r30)                # 4-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[3:4], r[9:10], r[3:4]
	sext_int2long r[11:12], r11
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[3:4])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	sll.d r[11:12], r[11:12], r1
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	lui r6, 983040
	addli r8, r19, 28
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	add.ul r[11:12], r[9:10], r[11:12]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	or r6, r22, r6
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sext_int2long r[3:4], r3
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r6, r8, 0(r[11:12])
	.loc	1 69 25                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:25
	sll.d r[3:4], r[3:4], r1
	add.ul r[3:4], r[9:10], r[3:4]
	.loc	1 69 49                         # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:49
	s_lm2gm r13, r14, 0(r[3:4])
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r5, r5, r3
	loadli.w r3,  -188(r30)                 # 4-byte Folded Reload
	blt.s r5, r3, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 69 4 epilogue_begin           # c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py:69:4
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
.asciz	"c2avphyqgenqxipagyt3l3k67wrtanchxgmjl6ddz4ygxnnqra57.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/2a" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
