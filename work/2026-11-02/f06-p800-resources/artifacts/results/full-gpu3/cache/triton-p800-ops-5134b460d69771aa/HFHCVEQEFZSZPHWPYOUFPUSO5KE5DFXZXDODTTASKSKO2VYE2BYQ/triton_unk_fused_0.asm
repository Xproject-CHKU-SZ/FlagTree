	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/fx" "cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py"
	.loc	1 22 0                          # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -392
	addli r30, sp, 328
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  52(r30)
	loadli.w r5,  48(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r3,  56(r30)
	ori r4, r4, 4095
	add.s r8, r7, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r8, -260(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r3, r6, r3
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r3, -264(r30)                 # 4-byte Folded Spill
	ble.s r3, r5, .LBB0_15
# %bb.1:                                # %.lr.ph
	addli r6, zero, 64
	addli r24, zero, 1
	load.d r[18:19], 8(r30)
	load.d r[14:15], 16(r30)
	load.d r[10:11], 24(r30)
	addli r28, r30, -256
	addli r13, zero, 32
	lui r16, 243712
	div.s r3, r1, r6
	slli r6, r3, 6
	storeli.w r3, -268(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -260(r30)                 # 4-byte Folded Reload
	sub.s r6, r1, r6
	addli r3, r3, 1040
	storeli.w r3, -272(r30)                 # 4-byte Folded Spill
	slli r3, r6, 2
	load_param_i r6, 1
	storeli.w r6, -280(r30)                 # 4-byte Folded Spill
	ori r6, r3, 1
	sext_int2long r[20:21], r3
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
	storeli.w r6, -284(r30)                 # 4-byte Folded Spill
	ori r6, r3, 2
	sll.d r[20:21], r[20:21], r24
	ori r3, r3, 3
	storeli.w r6, -288(r30)                 # 4-byte Folded Spill
	lui r6, 1048575
	add.ul r[8:9], r[18:19], r[20:21]
	storeli.w r3, -292(r30)                 # 4-byte Folded Spill
	ori r6, r6, 3840
	store.d r[8:9], -304(r30)               # 8-byte Folded Spill
	add.ul r[8:9], r[14:15], r[20:21]
	and r6, r7, r6
	store.d r[8:9], -312(r30)               # 8-byte Folded Spill
	add.ul r[7:8], r[10:11], r[20:21]
	andi r10, r1, 63
	addli r11, r30, -192
	addli r1, r30, -128
	add.s r25, r6, r2
	lui r6, 239665
	addli r2, r30, -64
	store.d r[7:8], -320(r30)               # 8-byte Folded Spill
	addli r27, r25, 1040
	ori r3, r6, 623
	storeli.w r3, -324(r30)                 # 4-byte Folded Spill
.LBB0_2:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	loadli.w r3,  56(r30)
.Ltmp0:
	.loc	1 38 46 prologue_end            # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	store.h zero, -256(r30)
	store.h zero, -254(r30)
	lui r7, 983040
	div.s r6, r5, r3
	loadli.w r3,  52(r30)
	div.s r6, r6, r3
	.loc	1 29 23                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:29:23
	loadli.w r3,  -268(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	mfence { lm }
	.loc	1 38 30 is_stmt 0               # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:30
	load.d r[8:9], 0(r30)
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	store.h zero, -252(r30)
	store.h zero, -250(r30)
	.loc	1 29 23 is_stmt 1               # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:29:23
	add.s r21, r6, r3
	.loc	1 38 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:37
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	lui r6, 983040
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	mfence { lm }
	.loc	1 38 41 is_stmt 0               # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:41
	slli r20, r21, 8
	.loc	1 38 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:37
	add.s r12, r20, r3
	addli r3, zero, 8
	.loc	1 38 30                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:30
	sext_int2long r[14:15], r12
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	or r7, r3, r7
	.loc	1 39 37 is_stmt 1               # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	or r6, r3, r6
	.loc	1 41 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:38
	lui r12, 983040
	.loc	1 38 30                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:30
	sll.d r[18:19], r[14:15], r24
	.loc	1 41 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:38
	or r12, r3, r12
	.loc	1 38 30                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:30
	add.ul r[14:15], r[8:9], r[18:19]
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	load.d r[8:9], -304(r30)                # 8-byte Folded Reload
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	l_gm2lm r7, r28, 0(r[14:15])
	.loc	1 40 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:38
	lui r7, 983040
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	l_gm2lm r6, r11, 0(r[8:9])
	.loc	1 40 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:38
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	or r7, r3, r7
	l_gm2lm r7, r1, 0(r[8:9])
	.loc	1 41 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:38
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	l_gm2lm r12, r2, 0(r[6:7])
	.loc	1 40 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:38
	mfence { lm }
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	load.hu r6, -256(r30)
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	load.hu r12, -192(r30)
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	load.hu r7, -254(r30)
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	load.hu r14, -190(r30)
	.loc	1 47 19                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:47:19
	add.hf.rn r6, r6, r12
	add.hf.rn r7, r7, r14
	.loc	1 48 19                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:48:19
	hfloat2float.rn r22, r6
	hfloat2float.rn r12, r7
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	blt.s r21, r13, .LBB0_4
# %bb.3:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r6, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	load.hu r6, -252(r30)
	load.hu r14, -188(r30)
	load.hu r7, -250(r30)
	load.hu r15, -186(r30)
	add.hf.rn r6, r6, r14
	add.hf.rn r7, r7, r15
	hfloat2float.rn r6, r6
	hfloat2float.rn r7, r7
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r22, r6
	add.f.rn r7, r12, r7
	add.f.rn r6, r6, r7
.LBB0_5:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -260(r30)                 # 4-byte Folded Reload
	stores.w r6, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r10, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	loads.w r7, 0(r25)
	loads.w r23, 4(r25)
	loads.w r14, 8(r25)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r7, r23
	loads.w r7, 12(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 16(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 20(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 24(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 28(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 32(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 36(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 40(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 44(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 48(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 52(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 56(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 60(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 64(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 68(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 72(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 76(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 80(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 84(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 88(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 92(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 96(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 100(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 104(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 108(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 112(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 116(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 120(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 124(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 128(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 132(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 136(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 140(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 144(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 148(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 152(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 156(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 160(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 164(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 168(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 172(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 176(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 180(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 184(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 188(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 192(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 196(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 200(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 204(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 208(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 212(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 216(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 220(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 224(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 228(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 232(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 236(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 240(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 244(r25)
	add.f.rn r6, r6, r14
	loads.w r14, 248(r25)
	add.f.rn r6, r6, r7
	loads.w r7, 252(r25)
	add.f.rn r6, r6, r14
	add.f.rn r6, r6, r7
	stores.w r6, 0(r25)
.Ltmp2:
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r6, 0(r25)
	.loc	1 57 21 is_stmt 1               # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:57:21
	mul.f.rn r7, r6, r16
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r21, r13, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r6, zero, 0
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	load.hu r6, -252(r30)
	load.hu r15, -188(r30)
	load.hu r14, -250(r30)
	load.hu r21, -186(r30)
	sub.f.rn r12, r12, r7
	add.hf.rn r6, r6, r15
	add.hf.rn r14, r14, r21
	sub.f.rn r15, r22, r7
	mul.f.rn r12, r12, r12
	hfloat2float.rn r6, r6
	hfloat2float.rn r14, r14
	mul.f.rn r15, r15, r15
	sub.f.rn r6, r6, r7
	sub.f.rn r14, r14, r7
	mul.f.rn r6, r6, r6
	mul.f.rn r14, r14, r14
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r15, r6
	add.f.rn r12, r12, r14
	add.f.rn r6, r6, r12
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -272(r30)                 # 4-byte Folded Reload
	addli r26, r10, 0
	stores.w r6, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r10, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r12, 0(r27)
	loads.w r21, 4(r27)
	loads.w r14, 8(r27)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r12, r21
	loads.w r12, 12(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 16(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 20(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 24(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 28(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 32(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 36(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 40(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 44(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 48(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 52(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 56(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 60(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 64(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 68(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 72(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 76(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 80(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 84(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 88(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 92(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 96(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 100(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 104(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 108(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 112(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 116(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 120(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 124(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 128(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 132(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 136(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 140(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 144(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 148(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 152(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 156(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 160(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 164(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 168(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 172(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 176(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 180(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 184(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 188(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 192(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 196(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 200(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 204(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 208(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 212(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 216(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 220(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 224(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 228(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 232(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 236(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 240(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 244(r27)
	add.f.rn r6, r6, r14
	loads.w r14, 248(r27)
	add.f.rn r6, r6, r12
	loads.w r12, 252(r27)
	add.f.rn r6, r6, r14
	add.f.rn r6, r6, r12
	stores.w r6, 0(r27)
.Ltmp4:
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r6, 0(r27)
	.loc	1 67 20 is_stmt 1               # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:67:20
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	addli r21, r11, 2
	addli r12, r11, 4
	addli r15, zero, 1
	.loc	1 65 21                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:65:21
	mul.f.rn r6, r6, r16
	.loc	1 67 20                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:67:20
	add.f.rn r6, r6, r3
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	add.s r24, r3, r20
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	.loc	1 68 28                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:68:28
	sqrt.f.rn r6, r6
	add.s r23, r3, r20
	lui r3, 260096
	div.f.rn r14, r3, r6
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	addli r6, zero, 0
	add.s r22, r3, r20
	addli r20, r11, 6
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:38
	slli r6, r6, 1
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	add.s r13, r11, r6
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	add.s r3, r28, r6
	load.hu r8, 0(r3)
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	load.hu r9, 0(r13)
	.loc	1 38 46                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:38:46
	load.hu r3, 2(r3)
	.loc	1 39 37                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:39:37
	load.hu r17, 2(r13)
	.loc	1 47 19                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:47:19
	add.hf.rn r8, r8, r9
	add.hf.rn r3, r3, r17
	.loc	1 40 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:38
	add.s r9, r1, r6
	.loc	1 41 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:38
	add.s r6, r2, r6
	.loc	1 40 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:38
	load.hu r17, 0(r9)
	load.hu r9, 2(r9)
	.loc	1 41 38                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:38
	load.hu r10, 0(r6)
	load.hu r6, 2(r6)
	.loc	1 40 77                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:40:77
	hfloat2float.rn r17, r17
	hfloat2float.rn r9, r9
	.loc	1 41 77                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:77
	hfloat2float.rn r6, r6
	.loc	1 48 19                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:48:19
	hfloat2float.rn r8, r8
	hfloat2float.rn r3, r3
	.loc	1 58 20                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:58:20
	sub.f.rn r8, r8, r7
	sub.f.rn r3, r3, r7
	.loc	1 69 20                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:69:20
	mul.f.rn r8, r14, r8
	mul.f.rn r3, r14, r3
	.loc	1 71 20                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:71:20
	mul.f.rn r3, r3, r9
	mul.f.rn r8, r8, r17
	.loc	1 41 77                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:41:77
	hfloat2float.rn r9, r10
	.loc	1 73 20                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:73:20
	add.f.rn r3, r3, r6
	add.f.rn r8, r8, r9
	.loc	1 75 48                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:48
	andi r9, r15, 1
	addli r15, zero, 0
	float2hfloat.rn r6, r8
	float2hfloat.rn r3, r3
	store.h r6, 0(r13)
	store.h r3, 2(r13)
	addli r6, zero, 2
	mfence { lm }
	bneq r9, zero, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 48 is_stmt 0                # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:0:48
	load.d r[15:16], 32(r30)
	.loc	1 75 48                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:48
	lui r3, 983040
	addli r10, zero, 2
	.loc	1 75 25                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:25
	sext_int2long r[6:7], r24
	addli r24, zero, 1
	sext_int2long r[13:14], r23
	.loc	1 75 48                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:48
	or r3, r10, r3
	.loc	1 75 25                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:25
	sll.d r[6:7], r[6:7], r24
	sll.d r[13:14], r[13:14], r24
	add.ul r[8:9], r[15:16], r[18:19]
	sext_int2long r[17:18], r22
	add.ul r[6:7], r[15:16], r[6:7]
	add.ul r[13:14], r[15:16], r[13:14]
	.loc	1 75 48                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:48
	s_lm2gm r3, r11, 0(r[8:9])
	lui r3, 983040
	.loc	1 75 25                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:25
	sll.d r[8:9], r[17:18], r24
	.loc	1 75 48                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:48
	or r3, r10, r3
	.loc	1 75 25                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:25
	add.ul r[8:9], r[15:16], r[8:9]
	lui r16, 243712
	.loc	1 75 48                         # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:48
	s_lm2gm r3, r21, 0(r[6:7])
	lui r3, 983040
	lui r6, 983040
	or r3, r10, r3
	or r6, r10, r6
	addli r10, r26, 0
	s_lm2gm r3, r12, 0(r[13:14])
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	s_lm2gm r6, r20, 0(r[8:9])
	addli r13, zero, 32
	mfence { lm }
	add.s r5, r5, r3
	loadli.w r3,  -264(r30)                 # 4-byte Folded Reload
	blt.s r5, r3, .LBB0_2
.LBB0_15:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py:75:4
	addli sp, sp, 328
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
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	392                             # 0x188
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
	.byte	54                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
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
	.byte	62                              # DW_AT_call_line
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
.asciz	"cfx7q7sairnid2jkix43h3i3vlvtxx633m65h7ikipjxmgerz5pl.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/fx" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
