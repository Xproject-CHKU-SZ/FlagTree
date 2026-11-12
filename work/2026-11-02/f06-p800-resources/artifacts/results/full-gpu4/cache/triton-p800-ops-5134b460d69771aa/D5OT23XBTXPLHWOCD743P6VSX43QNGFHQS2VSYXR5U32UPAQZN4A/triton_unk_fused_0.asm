	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/6n" "c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py"
	.loc	1 22 0                          # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -312
	addli r30, sp, 248
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  44(r30)
	loadli.w r5,  40(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r8,  48(r30)
	ori r4, r4, 4095
	add.s r3, r7, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	stores.w zero, 0(r3)
	mul.s r6, r6, r8
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r6, -196(r30)                 # 4-byte Folded Spill
	ble.s r6, r5, .LBB0_15
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r18, zero, 2
	load.d r[10:11], 16(r30)
	load.d r[14:15], 8(r30)
	andi r24, r1, 63
	addli r26, r30, -192
	addli r27, zero, 16
	addli r28, r30, -128
	div.s r6, r1, r8
	load.d r[8:9], 24(r30)
	slli r12, r6, 6
	storeli.w r6, -200(r30)                 # 4-byte Folded Spill
	addli r6, r3, 1040
	sub.s r12, r1, r12
	storeli.w r6, -204(r30)                 # 4-byte Folded Spill
	load_param_i r6, 1
	slli r13, r12, 2
	lui r12, 1048575
	storeli.w r6, -208(r30)                 # 4-byte Folded Spill
	sext_int2long r[16:17], r13
	ori r6, r13, 1
	ori r12, r12, 3840
	sll.d r[16:17], r[16:17], r18
	and r7, r7, r12
	storeli.w r6, -212(r30)                 # 4-byte Folded Spill
	ori r6, r13, 2
	addli r12, zero, 4
	add.s r23, r7, r2
	storeli.w r6, -216(r30)                 # 4-byte Folded Spill
	ori r6, r13, 3
	add.ul r[10:11], r[10:11], r[16:17]
	lui r2, 239665
	add.ul r[14:15], r[14:15], r[16:17]
	storeli.w r6, -220(r30)                 # 4-byte Folded Spill
	store.d r[10:11], -240(r30)             # 8-byte Folded Spill
	ori r1, r2, 623
	addli r25, r23, 1040
	addli r10, r30, -64
	addli r6, zero, 32
	store.d r[14:15], -232(r30)             # 8-byte Folded Spill
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
.LBB0_2:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	loadli.w r1,  48(r30)
.Ltmp0:
	.loc	1 38 46 prologue_end            # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	storeli.w zero, -192(r30)
	storeli.w zero, -188(r30)
	lui r11, 983040
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	lui r17, 983040
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	or r11, r27, r11
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	or r17, r27, r17
	div.s r7, r5, r1
	loadli.w r1,  44(r30)
	div.s r7, r7, r1
	.loc	1 29 23                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:29:23
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	mfence { lm }
	storeli.w zero, -184(r30)
	storeli.w zero, -180(r30)
	.loc	1 29 23                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:29:23
	add.s r7, r7, r1
	.loc	1 38 30                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:30
	load.d r[1:2], 0(r30)
	.loc	1 38 46 is_stmt 0               # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	mfence { lm }
	.loc	1 38 41                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:41
	slli r16, r7, 8
	.loc	1 38 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:37
	add.s r14, r16, r13
	.loc	1 38 30                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:30
	sext_int2long r[14:15], r14
	sll.d r[14:15], r[14:15], r18
	add.ul r[19:20], r[1:2], r[14:15]
	.loc	1 39 37 is_stmt 1               # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	load.d r[1:2], -232(r30)                # 8-byte Folded Reload
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	l_gm2lm r11, r26, 0(r[19:20])
	.loc	1 40 38                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:40:38
	lui r11, 983040
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	l_gm2lm r17, r28, 0(r[1:2])
	.loc	1 40 38                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:40:38
	load.d r[1:2], -240(r30)                # 8-byte Folded Reload
	or r11, r27, r11
	l_gm2lm r11, r10, 0(r[1:2])
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	mfence { lm }
	loadli.w r11,  -192(r30)
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	loadli.w r19,  -128(r30)
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	loadli.w r17,  -188(r30)
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	loadli.w r20,  -124(r30)
	.loc	1 41 18                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:41:18
	add.f.rn r19, r11, r19
	add.f.rn r20, r17, r20
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	blt.s r7, r6, .LBB0_4
# %bb.3:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r11, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	loadli.w r11,  -184(r30)
	loadli.w r21,  -120(r30)
	loadli.w r17,  -180(r30)
	loadli.w r22,  -116(r30)
	add.f.rn r11, r11, r21
	add.f.rn r17, r17, r22
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r11, r19, r11
	add.f.rn r17, r20, r17
	add.f.rn r11, r11, r17
.LBB0_5:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	stores.w r11, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r24, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	loads.w r17, 0(r23)
	loads.w r21, 4(r23)
	loads.w r11, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r17, r17, r21
	loads.w r21, 12(r23)
	add.f.rn r11, r17, r11
	loads.w r17, 16(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 20(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 24(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 28(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 32(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 36(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 40(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 44(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 48(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 52(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 56(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 60(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 64(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 68(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 72(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 76(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 80(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 84(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 88(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 92(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 96(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 100(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 104(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 108(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 112(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 116(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 120(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 124(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 128(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 132(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 136(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 140(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 144(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 148(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 152(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 156(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 160(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 164(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 168(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 172(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 176(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 180(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 184(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 188(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 192(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 196(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 200(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 204(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 208(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 212(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 216(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 220(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 224(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 228(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 232(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 236(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 240(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 244(r23)
	add.f.rn r11, r11, r17
	loads.w r17, 248(r23)
	add.f.rn r11, r11, r21
	loads.w r21, 252(r23)
	add.f.rn r11, r11, r17
	add.f.rn r11, r11, r21
	stores.w r11, 0(r23)
.Ltmp2:
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r11, 0(r23)
	.loc	1 49 20 is_stmt 1               # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:49:20
	lui r1, 243712
	mul.f.rn r17, r11, r1
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r7, r6, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r7, zero, 0
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	loadli.w r7,  -184(r30)
	loadli.w r21,  -120(r30)
	loadli.w r11,  -180(r30)
	loadli.w r22,  -116(r30)
	sub.f.rn r19, r19, r17
	sub.f.rn r20, r20, r17
	add.f.rn r7, r7, r21
	add.f.rn r11, r11, r22
	mul.f.rn r19, r19, r19
	mul.f.rn r20, r20, r20
	sub.f.rn r7, r7, r17
	sub.f.rn r11, r11, r17
	mul.f.rn r7, r7, r7
	mul.f.rn r11, r11, r11
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r19, r7
	add.f.rn r11, r20, r11
	add.f.rn r7, r7, r11
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	stores.w r7, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r24, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r7, 0(r25)
	loads.w r19, 4(r25)
	loads.w r11, 8(r25)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r7, r19
	loads.w r19, 12(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 16(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 20(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 24(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 28(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 32(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 36(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 40(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 44(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 48(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 52(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 56(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 60(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 64(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 68(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 72(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 76(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 80(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 84(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 88(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 92(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 96(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 100(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 104(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 108(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 112(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 116(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 120(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 124(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 128(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 132(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 136(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 140(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 144(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 148(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 152(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 156(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 160(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 164(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 168(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 172(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 176(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 180(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 184(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 188(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 192(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 196(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 200(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 204(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 208(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 212(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 216(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 220(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 224(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 228(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 232(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 236(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 240(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 244(r25)
	add.f.rn r7, r7, r11
	loads.w r11, 248(r25)
	add.f.rn r7, r7, r19
	loads.w r19, 252(r25)
	add.f.rn r7, r7, r11
	add.f.rn r7, r7, r19
	stores.w r7, 0(r25)
.Ltmp4:
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r7, 0(r25)
	.loc	1 57 21 is_stmt 1               # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:57:21
	lui r1, 243712
	addli r21, zero, 0
	mul.f.rn r7, r7, r1
	.loc	1 59 20                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:59:20
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r1
	.loc	1 60 28                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:60:28
	lui r1, 260096
	sqrt.f.rn r7, r7
	div.f.rn r20, r1, r7
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	add.s r19, r1, r16
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r16
	loadli.w r1,  -220(r30)                 # 4-byte Folded Reload
	add.s r7, r1, r16
	addli r16, zero, 1
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	slli r21, r21, 2
	add.s r22, r26, r21
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	add.s r1, r28, r21
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	loadli.w r2,  0(r22)
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	loadli.w r6,  0(r1)
	.loc	1 38 46                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:38:46
	loadli.w r22,  4(r22)
	.loc	1 39 37                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:39:37
	loadli.w r1,  4(r1)
	.loc	1 41 18                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:41:18
	add.f.rn r2, r2, r6
	add.f.rn r1, r22, r1
	.loc	1 40 38                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:40:38
	add.s r6, r10, r21
	loadli.w r21,  0(r6)
	loadli.w r22,  4(r6)
	.loc	1 50 19                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:50:19
	sub.f.rn r2, r2, r17
	sub.f.rn r1, r1, r17
	.loc	1 61 20                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:61:20
	mul.f.rn r2, r20, r2
	mul.f.rn r1, r20, r1
	.loc	1 62 20                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:62:20
	add.f.rn r2, r21, r2
	add.f.rn r1, r22, r1
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	andi r22, r16, 1
	addli r21, zero, 2
	addli r16, zero, 0
	storeli.w r2, 0(r6)
	storeli.w r1, 4(r6)
	mfence { lm }
	bneq r22, zero, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 63 25 is_stmt 0               # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	sext_int2long r[1:2], r19
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	lui r6, 983040
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	sext_int2long r[16:17], r11
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	addli r11, r10, 4
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	add.ul r[14:15], r[8:9], r[14:15]
	sll.d r[1:2], r[1:2], r18
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	or r6, r12, r6
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	s_lm2gm r6, r11, 0(r[1:2])
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	sext_int2long r[1:2], r7
	sll.d r[6:7], r[16:17], r18
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	lui r16, 983040
	addli r17, r10, 8
	lui r11, 983040
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	add.ul r[6:7], r[8:9], r[6:7]
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	or r16, r12, r16
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	sll.d r[1:2], r[1:2], r18
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	or r11, r12, r11
	s_lm2gm r16, r17, 0(r[6:7])
	lui r6, 983040
	.loc	1 63 25                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:25
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 63 48                         # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:48
	addli r7, r10, 12
	s_lm2gm r11, r10, 0(r[14:15])
	or r6, r12, r6
	s_lm2gm r6, r7, 0(r[1:2])
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	mfence { lm }
	add.s r5, r5, r1
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_2
.LBB0_15:                               # %._crit_edge
	.loc	1 63 4 epilogue_begin           # c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py:63:4
	addli sp, sp, 248
	mfence { lm, sm, gm }
	exit
.Ltmp5:
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
	.long	312                             # 0x138
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x74 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x52 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5b:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	54                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x6b:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"c6njhkocvctpc2b7zqdd3zuebuqxmxqh6h7mek5cuab5rp7nw6xp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/6n" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
