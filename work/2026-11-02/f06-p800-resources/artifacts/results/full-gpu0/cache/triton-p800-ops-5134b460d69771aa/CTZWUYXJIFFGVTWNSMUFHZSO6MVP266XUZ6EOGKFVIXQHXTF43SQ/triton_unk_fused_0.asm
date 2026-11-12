	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/sf" "csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py"
	.loc	1 22 0                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -288
	addli r30, sp, 224
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  44(r30)
	loadli.w r5,  40(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r26,  48(r30)
	ori r4, r4, 4095
	add.s r3, r7, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	stores.w zero, 0(r3)
	mul.s r6, r6, r26
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_31
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r13, r3, 1040
	addli r20, zero, 1
	load.d r[10:11], 8(r30)
	andi r22, r1, 63
	addli r25, zero, 4
	addli r27, r30, -64
	div.s r12, r1, r8
	storeli.w r13, -200(r30)                # 4-byte Folded Spill
	load_param_i r13, 1
	load.d r[8:9], 16(r30)
	storeli.w r13, -204(r30)                # 4-byte Folded Spill
	lui r13, 1048575
	storeli.w r12, -196(r30)                # 4-byte Folded Spill
	slli r12, r12, 6
	sub.s r12, r1, r12
	lui r1, 7
	slli r15, r12, 1
	ori r12, r13, 3840
	ori r28, r1, 4095
	lui r1, 524287
	sext_int2long r[13:14], r15
	and r7, r7, r12
	sll.d r[12:13], r[13:14], r20
	add.s r21, r7, r2
	lui r2, 522239
	ori r14, r15, 1
	add.ul r[8:9], r[8:9], r[12:13]
	add.ul r[10:11], r[10:11], r[12:13]
	addli r23, r21, 1040
	lui r12, 1048560
	storeli.w r14, -208(r30)                # 4-byte Folded Spill
	store.d r[8:9], -224(r30)               # 8-byte Folded Spill
	lui r8, 239665
	store.d r[10:11], -216(r30)             # 8-byte Folded Spill
	ori r11, r1, 4095
	ori r1, r2, 4095
	lui r2, 522240
	ori r8, r8, 623
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -208(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 72 48 prologue_end            # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	float2bfloat.rn r9, r9
	float2bfloat.rn r10, r10
	addli r20, zero, 1
	addli r14, r27, 2
	store.h r9, -64(r30)
	store.h r10, -62(r30)
	lui r9, 983040
	lui r10, 983040
	add.s r13, r7, r13
	addli r7, zero, 2
	.loc	1 72 0 is_stmt 0                # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:0
	sext_int2long r[18:19], r13
	load.d r[12:13], 24(r30)
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	mfence { lm }
	or r9, r7, r9
	or r10, r7, r10
	loadli.w r7,  -204(r30)                 # 4-byte Folded Reload
	.loc	1 72 0                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:0
	sll.d r[18:19], r[18:19], r20
	add.ul r[16:17], r[12:13], r[16:17]
	add.ul r[18:19], r[12:13], r[18:19]
	lui r12, 1048560
	add.s r5, r5, r7
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	s_lm2gm r9, r27, 0(r[16:17])
	s_lm2gm r10, r14, 0(r[18:19])
	mfence { lm }
	blt.s r5, r6, .LBB0_3
	j .LBB0_31
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:48
	div.s r9, r5, r26
	loadli.w r7,  44(r30)
	.loc	1 38 46 is_stmt 1               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:46
	lui r14, 983040
	store.h zero, -192(r30)
	store.h zero, -190(r30)
	div.s r9, r9, r7
	.loc	1 29 23                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:29:23
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	add.s r18, r9, r7
	.loc	1 38 46                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:46
	addli r7, r30, -192
	.loc	1 38 41 is_stmt 0               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:41
	slli r13, r18, 7
	.loc	1 38 37                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:37
	add.s r9, r13, r15
	.loc	1 38 30                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:30
	sext_int2long r[9:10], r9
	sll.d r[16:17], r[9:10], r20
	load.d r[19:20], 0(r30)
	.loc	1 38 46                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:46
	or r9, r25, r14
	mfence { lm }
	.loc	1 40 38 is_stmt 1               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:40:38
	lui r10, 983040
	or r10, r25, r10
	.loc	1 38 30                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:30
	add.ul r[19:20], r[19:20], r[16:17]
	.loc	1 38 46 is_stmt 0               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:46
	l_gm2lm r9, r7, 0(r[19:20])
	.loc	1 39 37 is_stmt 1               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:39:37
	lui r9, 983040
	load.d r[19:20], -216(r30)              # 8-byte Folded Reload
	addli r7, r30, -128
	or r9, r25, r9
	l_gm2lm r9, r7, 0(r[19:20])
	.loc	1 40 38                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:40:38
	load.d r[19:20], -224(r30)              # 8-byte Folded Reload
	l_gm2lm r10, r27, 0(r[19:20])
	.loc	1 38 46                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:46
	mfence { lm }
	load.hu r9, -192(r30)
	.loc	1 39 37                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:39:37
	load.hu r10, -128(r30)
	.loc	1 38 46                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:38:46
	bfloat2float.rn r9, r9
	.loc	1 39 37                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:39:37
	bfloat2float.rn r10, r10
	.loc	1 45 18                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:45:18
	add.f.rn r9, r9, r10
	.loc	1 46 19                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:46:19
	and r14, r9, r11
	setlt.u r10, r2, r14
	bneq r10, zero, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:19
	addli r19, r9, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:46:19
	lui r7, 1024
	or r19, r9, r7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:0
	load.hu r10, -190(r30)
	load.hu r20, -126(r30)
	bfloat2float.rn r10, r10
	bfloat2float.rn r20, r20
	add.f.rn r10, r10, r20
	.loc	1 46 19                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:46:19
	and r24, r10, r11
	setlt.u r20, r2, r24
	bneq r20, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:19
	addli r20, r10, 0
	.loc	1 46 19                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:46:19
	setlt.u r14, r1, r14
	beq r14, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	lui r7, 1024
	or r20, r10, r7
	setlt.u r14, r1, r14
	bneq r14, zero, .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r28
	and r19, r9, r12
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 46 19                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:46:19
	setlt.u r9, r1, r24
	bneq r9, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r28
	and r20, r9, r12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 40 38 is_stmt 1               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:40:38
	load.hu r9, -64(r30)
	load.hu r14, -62(r30)
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	addli r7, zero, 16
	blt.s r18, r7, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r10, zero, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r10, r19, r20
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	stores.w r10, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	addli r7, r26, 0
	loads.w r10, 0(r21)
	loads.w r26, 4(r21)
	loads.w r24, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r10, r10, r26
	loads.w r26, 12(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 16(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 20(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 24(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 28(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 32(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 36(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 40(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 44(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 48(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 52(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 56(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 60(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 64(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 68(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 72(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 76(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 80(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 84(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 88(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 92(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 96(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 100(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 104(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 108(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 112(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 116(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 120(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 124(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 128(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 132(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 136(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 140(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 144(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 148(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 152(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 156(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 160(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 164(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 168(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 172(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 176(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 180(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 184(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 188(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 192(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 196(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 200(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 204(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 208(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 212(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 216(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 220(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 224(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 228(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 232(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 236(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 240(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 244(r21)
	add.f.rn r10, r10, r24
	loads.w r24, 248(r21)
	add.f.rn r10, r10, r26
	loads.w r26, 252(r21)
	add.f.rn r10, r10, r24
	add.f.rn r10, r10, r26
	addli r26, r7, 0
	stores.w r10, 0(r21)
.Ltmp2:
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r10, 0(r21)
	.loc	1 56 21 is_stmt 1               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:56:21
	lui r7, 245760
	mul.f.rn r24, r10, r7
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	addli r7, zero, 16
.Ltmp4:
	.loc	1 57 20                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:57:20
	sub.f.rn r10, r19, r24
	sub.f.rn r19, r20, r24
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r18, r7, .LBB0_19
.Ltmp6:
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r18, zero, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r18, r10, r10
	mul.f.rn r20, r19, r19
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r18, r18, r20
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r7,  -200(r30)                 # 4-byte Folded Reload
	stores.w r18, 0(r7)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r18, 0(r23)
	loads.w r24, 4(r23)
	loads.w r20, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r18, r18, r24
	loads.w r24, 12(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 16(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 20(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 24(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 28(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 32(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 36(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 40(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 44(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 48(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 52(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 56(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 60(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 64(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 68(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 72(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 76(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 80(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 84(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 88(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 92(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 96(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 100(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 104(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 108(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 112(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 116(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 120(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 124(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 128(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 132(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 136(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 140(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 144(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 148(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 152(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 156(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 160(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 164(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 168(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 172(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 176(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 180(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 184(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 188(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 192(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 196(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 200(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 204(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 208(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 212(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 216(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 220(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 224(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 228(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 232(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 236(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 240(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 244(r23)
	add.f.rn r18, r18, r20
	loads.w r20, 248(r23)
	add.f.rn r18, r18, r24
	loads.w r24, 252(r23)
	add.f.rn r18, r18, r20
	add.f.rn r18, r18, r24
	stores.w r18, 0(r23)
.Ltmp8:
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r18, 0(r23)
	.loc	1 64 21 is_stmt 1               # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:64:21
	lui r7, 245760
	bfloat2float.rn r9, r9
	mul.f.rn r18, r18, r7
	.loc	1 67 28                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:67:28
	lui r7, 260096
	.loc	1 66 20                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:66:20
	add.f.rn r18, r18, r8
	.loc	1 67 28                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:67:28
	sqrt.f.rn r18, r18
	div.f.rn r24, r7, r18
	.loc	1 68 20                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:68:20
	mul.f.rn r10, r10, r24
	.loc	1 70 20                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:70:20
	mul.f.rn r18, r10, r9
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	and r20, r18, r11
	setlt.u r9, r2, r20
	bneq r9, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:48
	addli r9, r18, 0
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	lui r7, 1024
	or r9, r18, r7
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:0
	mul.f.rn r10, r19, r24
	bfloat2float.rn r14, r14
	mul.f.rn r14, r10, r14
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	and r19, r14, r11
	setlt.u r10, r2, r19
	bneq r10, zero, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:48
	addli r10, r14, 0
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	setlt.u r20, r1, r20
	beq r20, zero, .LBB0_28
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	lui r7, 1024
	or r10, r14, r7
	setlt.u r20, r1, r20
	bneq r20, zero, .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:48
	srli r9, r18, 16
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r28
	and r9, r9, r12
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 72 48                         # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:48
	setlt.u r18, r1, r19
	bneq r18, zero, .LBB0_2
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:0:48
	srli r10, r14, 16
	andi r10, r10, 1
	add.s r10, r14, r10
	add.s r10, r10, r28
	and r10, r10, r12
	j .LBB0_2
.LBB0_31:                               # %._crit_edge
	.loc	1 72 4 epilogue_begin           # csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py:72:4
	addli sp, sp, 224
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	288                             # 0x120
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x4a DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x67:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
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
.asciz	"csf3f3e4iklbvmsplbegbt4ltrparfuoxnliepv6ikln57b6t3nj.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/sf" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
