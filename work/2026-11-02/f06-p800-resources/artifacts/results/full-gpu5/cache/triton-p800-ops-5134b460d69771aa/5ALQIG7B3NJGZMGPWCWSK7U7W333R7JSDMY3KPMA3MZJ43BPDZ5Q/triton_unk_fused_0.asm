	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/fz" "cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py"
	.loc	1 22 0                          # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:22:0
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
	ble.s r6, r5, .LBB0_13
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r13, r3, 1040
	addli r18, zero, 1
	load.d r[10:11], 8(r30)
	andi r22, r1, 63
	addli r25, zero, 4
	addli r26, r30, -128
	addli r20, zero, 16
	div.s r12, r1, r8
	storeli.w r13, -200(r30)                # 4-byte Folded Spill
	load_param_i r13, 1
	load.d r[8:9], 16(r30)
	storeli.w r13, -204(r30)                # 4-byte Folded Spill
	lui r13, 1048575
	storeli.w r12, -196(r30)                # 4-byte Folded Spill
	slli r12, r12, 6
	sub.s r12, r1, r12
	lui r1, 239665
	slli r15, r12, 1
	ori r12, r13, 3840
	sext_int2long r[13:14], r15
	and r7, r7, r12
	sll.d r[12:13], r[13:14], r18
	add.s r21, r7, r2
	ori r14, r15, 1
	addli r2, zero, 2
	add.ul r[10:11], r[10:11], r[12:13]
	add.ul r[8:9], r[8:9], r[12:13]
	addli r23, r21, 1040
	storeli.w r14, -208(r30)                # 4-byte Folded Spill
	store.d r[10:11], -216(r30)             # 8-byte Folded Spill
	lui r10, 245760
	ori r11, r1, 623
	store.d r[8:9], -224(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r9, 0(r23)
.Ltmp0:
	.loc	1 67 28 prologue_end            # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:67:28
	lui r12, 260096
	hfloat2float.rn r16, r27
	hfloat2float.rn r1, r1
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r17, 983040
	load.d r[27:28], 24(r30)
	.loc	1 72 25 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[7:8], r[27:28], r[7:8]
	.loc	1 64 21 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:64:21
	mul.f.rn r9, r9, r10
	.loc	1 66 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:66:20
	add.f.rn r9, r9, r11
	.loc	1 67 28                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:67:28
	sqrt.f.rn r9, r9
	div.f.rn r9, r12, r9
	loadli.w r12,  -208(r30)                # 4-byte Folded Reload
	add.s r12, r12, r24
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sext_int2long r[18:19], r12
	.loc	1 72 48 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r12, r2, r17
	.loc	1 68 20 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:68:20
	mul.f.rn r14, r14, r9
	mul.f.rn r9, r13, r9
	addli r13, r26, 2
	.loc	1 70 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:70:20
	mul.f.rn r1, r14, r1
	mul.f.rn r9, r9, r16
	addli r16, zero, 1
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r14, 983040
	.loc	1 72 25 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[16:17], r[18:19], r16
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r14, r2, r14
	addli r18, zero, 1
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[16:17], r[27:28], r[16:17]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	float2hfloat.rn r1, r1
	float2hfloat.rn r9, r9
	store.h r1, -128(r30)
	store.h r9, -126(r30)
	mfence { lm }
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	s_lm2gm r12, r26, 0(r[7:8])
	s_lm2gm r14, r13, 0(r[16:17])
	mfence { lm }
	add.s r5, r5, r1
	blt.s r5, r6, .LBB0_3
	j .LBB0_13
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:0:48
	loadli.w r1,  48(r30)
	loadli.w r7,  44(r30)
	.loc	1 38 30 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:30
	load.d r[13:14], 0(r30)
	.loc	1 38 46 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	lui r9, 983040
	store.h zero, -192(r30)
	store.h zero, -190(r30)
	addli r16, r30, -192
	or r9, r25, r9
	div.s r1, r5, r1
	div.s r1, r1, r7
	.loc	1 29 23 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:29:23
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	mfence { lm }
	.loc	1 29 23                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:29:23
	add.s r12, r1, r7
	.loc	1 38 41                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:41
	slli r24, r12, 7
	.loc	1 38 37 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:37
	add.s r1, r24, r15
	.loc	1 38 30                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:30
	sext_int2long r[7:8], r1
	.loc	1 39 37 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:30
	sll.d r[7:8], r[7:8], r18
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	or r1, r25, r1
	.loc	1 38 30                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:30
	add.ul r[13:14], r[13:14], r[7:8]
	.loc	1 38 46 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	l_gm2lm r9, r16, 0(r[13:14])
	.loc	1 39 37 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	load.d r[13:14], -216(r30)              # 8-byte Folded Reload
	.loc	1 40 38                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:38
	lui r9, 983040
	or r9, r25, r9
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	l_gm2lm r1, r26, 0(r[13:14])
	.loc	1 40 38                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:38
	load.d r[13:14], -224(r30)              # 8-byte Folded Reload
	addli r1, r30, -64
	l_gm2lm r9, r1, 0(r[13:14])
	mfence { lm }
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	load.hu r1, -192(r30)
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	load.hu r13, -128(r30)
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	load.hu r9, -190(r30)
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	load.hu r14, -126(r30)
	.loc	1 46 19                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:46:19
	add.hf.rn r1, r1, r13
	add.hf.rn r9, r9, r14
	.loc	1 47 19                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:47:19
	hfloat2float.rn r13, r1
	hfloat2float.rn r9, r9
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	blt.s r12, r20, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r14, zero, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r14, r13, r9
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	load.hu r1, -64(r30)
	load.hu r27, -62(r30)
	stores.w r14, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r14, 0(r21)
	loads.w r17, 4(r21)
	loads.w r16, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r14, r14, r17
	loads.w r17, 12(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 16(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 20(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 24(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 28(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 32(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 36(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 40(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 44(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 48(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 52(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 56(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 60(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 64(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 68(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 72(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 76(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 80(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 84(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 88(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 92(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 96(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 100(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 104(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 108(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 112(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 116(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 120(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 124(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 128(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 132(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 136(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 140(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 144(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 148(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 152(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 156(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 160(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 164(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 168(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 172(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 176(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 180(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 184(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 188(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 192(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 196(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 200(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 204(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 208(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 212(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 216(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 220(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 224(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 228(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 232(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 236(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 240(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 244(r21)
	add.f.rn r14, r14, r16
	loads.w r16, 248(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 252(r21)
	add.f.rn r14, r14, r16
	add.f.rn r14, r14, r17
	stores.w r14, 0(r21)
.Ltmp2:
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r14, 0(r21)
	.loc	1 56 21 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:56:21
	mul.f.rn r16, r14, r10
	.loc	1 57 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:57:20
	sub.f.rn r14, r13, r16
	sub.f.rn r13, r9, r16
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r12, r20, .LBB0_10
.Ltmp4:
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r9, zero, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r9, r14, r14
	mul.f.rn r12, r13, r13
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r9, r9, r12
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r12,  -200(r30)                # 4-byte Folded Reload
	stores.w r9, 0(r12)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_2
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r9, 0(r23)
	loads.w r16, 4(r23)
	loads.w r12, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r9, r9, r16
	loads.w r16, 12(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 16(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 20(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 24(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 28(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 32(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 36(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 40(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 44(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 48(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 52(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 56(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 60(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 64(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 68(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 72(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 76(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 80(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 84(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 88(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 92(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 96(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 100(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 104(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 108(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 112(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 116(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 120(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 124(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 128(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 132(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 136(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 140(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 144(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 148(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 152(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 156(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 160(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 164(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 168(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 172(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 176(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 180(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 184(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 188(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 192(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 196(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 200(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 204(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 208(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 212(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 216(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 220(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 224(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 228(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 232(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 236(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 240(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 244(r23)
	add.f.rn r9, r9, r12
	loads.w r12, 248(r23)
	add.f.rn r9, r9, r16
	loads.w r16, 252(r23)
	add.f.rn r9, r9, r12
	add.f.rn r9, r9, r16
	stores.w r9, 0(r23)
	j .LBB0_2
.Ltmp6:
.LBB0_13:                               # %._crit_edge
	.loc	1 72 4 epilogue_begin is_stmt 1 # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:4
	addli sp, sp, 224
	mfence { lm, sm, gm }
	exit
.Ltmp7:
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
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/fz" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
