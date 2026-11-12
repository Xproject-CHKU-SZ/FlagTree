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
	addli sp, sp, -424
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 360
	lui r5, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  44(r30)
	loadli.w r4,  40(r30)
	loadli.w r7,  48(r30)
	ori r21, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r6, r4
	load_param_i r6, 0
	addli r9, r8, 8208
	mul.s r4, r4, r7
	storeli.w r9, -256(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	storeli.w r8, -252(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	storeli.w r4, -260(r30)                 # 4-byte Folded Spill
	ble.s r4, r6, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r5, 1
	lui r11, 1048575
	addli r26, zero, 1
	load.d r[9:10], 8(r30)
	load.d r[7:8], 16(r30)
	load.d r[19:20], 24(r30)
	addli r13, r30, -192
	addli r14, zero, 32
	addli r15, r30, -128
	addli r16, r30, -64
	addli r18, zero, 16
	addli r22, zero, 2
	storeli.w r21, -196(r30)                # 4-byte Folded Spill
	div.s r4, r1, r4
	storeli.w r5, -272(r30)                 # 4-byte Folded Spill
	ori r11, r11, 4064
	and r3, r3, r11
	storeli.w r4, -264(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	sub.s r4, r1, r4
	andi r1, r1, 7
	slli r4, r4, 4
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r5, r4, 1
	storeli.w r4, -268(r30)                 # 4-byte Folded Spill
	ori r1, r1, 623
	storeli.w r5, -276(r30)                 # 4-byte Folded Spill
	ori r5, r4, 2
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	storeli.w r5, -280(r30)                 # 4-byte Folded Spill
	ori r5, r4, 3
	storeli.w r5, -284(r30)                 # 4-byte Folded Spill
	ori r5, r4, 4
	storeli.w r5, -288(r30)                 # 4-byte Folded Spill
	ori r5, r4, 5
	storeli.w r5, -292(r30)                 # 4-byte Folded Spill
	ori r5, r4, 6
	storeli.w r5, -296(r30)                 # 4-byte Folded Spill
	ori r5, r4, 7
	storeli.w r5, -300(r30)                 # 4-byte Folded Spill
	ori r5, r4, 8
	storeli.w r5, -304(r30)                 # 4-byte Folded Spill
	ori r5, r4, 9
	storeli.w r5, -308(r30)                 # 4-byte Folded Spill
	ori r5, r4, 10
	storeli.w r5, -312(r30)                 # 4-byte Folded Spill
	ori r5, r4, 11
	storeli.w r5, -316(r30)                 # 4-byte Folded Spill
	ori r5, r4, 12
	storeli.w r5, -320(r30)                 # 4-byte Folded Spill
	ori r5, r4, 13
	storeli.w r5, -324(r30)                 # 4-byte Folded Spill
	ori r5, r4, 14
	storeli.w r5, -328(r30)                 # 4-byte Folded Spill
	ori r5, r4, 15
	storeli.w r5, -332(r30)                 # 4-byte Folded Spill
	sext_int2long r[4:5], r4
	sll.d r[4:5], r[4:5], r26
	add.ul r[9:10], r[9:10], r[4:5]
	add.ul r[4:5], r[7:8], r[4:5]
	addli r8, zero, 28
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	add.s r10, r3, r2
	store.d r[4:5], -352(r30)               # 8-byte Folded Spill
	addli r12, r10, 8208
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 46 prologue_end            # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	add.s r2, r13, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r14, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 46 is_stmt 0                # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:0:46
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	lui r3, 983040
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 29 23 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:29:23
	loadli.w r2,  -264(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:29:23
	add.s r27, r1, r2
	.loc	1 38 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:37
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	.loc	1 38 41 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:41
	slli r23, r27, 7
	.loc	1 38 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:37
	add.s r1, r23, r1
	.loc	1 38 30                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:30
	sext_int2long r[1:2], r1
	sll.d r[4:5], r[1:2], r26
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	or r1, r14, r3
	.loc	1 38 30                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:30
	load.d r[2:3], 0(r30)
	store.d r[4:5], -208(r30)               # 8-byte Folded Spill
	add.ul r[2:3], r[2:3], r[4:5]
	.loc	1 39 37 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	lui r4, 983040
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	l_gm2lm r1, r13, 0(r[2:3])
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	or r2, r14, r4
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	.loc	1 40 38                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:38
	lui r1, 983040
	or r1, r14, r1
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	l_gm2lm r2, r15, 0(r[3:4])
	.loc	1 40 38                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:38
	load.d r[2:3], -352(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r16, 0(r[2:3])
	mfence { lm }
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	load.hu r1, -192(r30)
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	load.hu r3, -128(r30)
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	load.hu r2, -190(r30)
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	load.hu r4, -126(r30)
	.loc	1 46 19                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:46:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 47 19                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:47:19
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	addli r3, r1, 0
	addli r4, r2, 0
	.loc	1 52 35                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:52:35
	blt.s r27, r18, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:0:35
	addli r3, zero, 0
	addli r4, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r5, r13, 2
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	addli r5, zero, 0
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r7, zero, 0
	addli r9, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r7
	add.f.rn r4, r4, r9
	addli r5, r5, 4
	beq r5, r8, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 52 35                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:52:35
	blt.s r27, r18, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:0:0
	add.s r7, r13, r5
	add.s r9, r15, r5
	load.hu r11, 4(r7)
	load.hu r17, 4(r9)
	load.hu r7, 6(r7)
	load.hu r9, 6(r9)
	add.hf.rn r9, r7, r9
	add.hf.rn r11, r11, r17
	hfloat2float.rn r7, r11
	hfloat2float.rn r9, r9
	.loc	1 52 35                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:52:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r4
	loadli.w r4,  -252(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	loadli.w r3,  -200(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r3, 0(r10)
	loads.w r4, 4(r10)
	loads.w r5, 8(r10)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r4
	loads.w r4, 12(r10)
	add.f.rn r3, r3, r5
	loads.w r5, 16(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 20(r10)
	add.f.rn r3, r3, r5
	loads.w r5, 24(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 28(r10)
	add.f.rn r3, r3, r5
	add.f.rn r3, r3, r4
	stores.w r3, 0(r10)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	loads.w r3, 0(r10)
	.loc	1 56 21 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:56:21
	lui r4, 245760
	mul.f.rn r28, r3, r4
	.loc	1 60 35                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:60:35
	blt.s r27, r18, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:0:35
	addli r2, zero, 0
	addli r5, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r3, r2, r28
	sub.f.rn r1, r1, r28
	mul.f.rn r2, r1, r1
	mul.f.rn r5, r3, r3
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	add.s r25, r3, r23
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	add.s r24, r1, r23
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.s r4, r3, r23
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r23
	add.s r11, r3, r23
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	add.s r9, r3, r23
	loadli.w r3,  -300(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -248(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -244(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -240(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -236(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -232(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -224(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -328(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	storeli.w r3, -220(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -332(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r23
	addli r23, zero, 0
	storeli.w r3, -216(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r7, zero, 0
	addli r21, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r7
	add.f.rn r5, r5, r21
	addli r23, r23, 4
	beq r23, r8, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 60 35                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:60:35
	blt.s r27, r18, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:0:0
	add.s r7, r13, r23
	add.s r21, r15, r23
	load.hu r17, 4(r7)
	load.hu r3, 4(r21)
	load.hu r7, 6(r7)
	load.hu r21, 6(r21)
	add.hf.rn r3, r17, r3
	add.hf.rn r7, r7, r21
	hfloat2float.rn r3, r3
	hfloat2float.rn r7, r7
	sub.f.rn r17, r7, r28
	sub.f.rn r3, r3, r28
	mul.f.rn r7, r3, r3
	mul.f.rn r21, r17, r17
	.loc	1 60 35                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:60:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r5
	loadli.w r3,  -256(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	mfence { lm, sm, gm }
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	csr_set csr3, r7
	sync_group
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r2, 0(r12)
	loads.w r3, 4(r12)
	loads.w r5, 8(r12)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r3
	loads.w r3, 12(r12)
	add.f.rn r2, r2, r5
	loads.w r5, 16(r12)
	add.f.rn r2, r2, r3
	loads.w r3, 20(r12)
	add.f.rn r2, r2, r5
	loads.w r5, 24(r12)
	add.f.rn r2, r2, r3
	loads.w r3, 28(r12)
	add.f.rn r2, r2, r5
	add.f.rn r2, r2, r3
	stores.w r2, 0(r12)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loads.w r2, 0(r12)
	.loc	1 64 21 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:64:21
	lui r3, 245760
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r5, r16, 2
	addli r23, zero, 0
	.loc	1 64 21                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:64:21
	mul.f.rn r2, r2, r3
	.loc	1 66 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:66:20
	loadli.w r3,  -356(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	.loc	1 67 28                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:67:28
	lui r3, 260096
	sqrt.f.rn r2, r2
	div.f.rn r2, r3, r2
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	add.s r3, r13, r23
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	add.s r7, r15, r23
	load.hu r27, 0(r7)
	.loc	1 38 46                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:38:46
	load.hu r17, 0(r3)
	load.hu r21, 2(r3)
	.loc	1 39 37                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:39:37
	load.hu r7, 2(r7)
	.loc	1 46 19                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:46:19
	add.hf.rn r17, r17, r27
	add.hf.rn r7, r21, r7
	.loc	1 40 38                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:38
	add.s r21, r16, r23
	add.s r27, r5, r23
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r23, r23, 4
	.loc	1 40 38                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:38
	load.hu r21, 0(r21)
	load.hu r27, 0(r27)
	.loc	1 40 77 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:40:77
	hfloat2float.rn r21, r21
	hfloat2float.rn r27, r27
	.loc	1 47 19 is_stmt 1               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:47:19
	hfloat2float.rn r17, r17
	hfloat2float.rn r7, r7
	.loc	1 57 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:57:20
	sub.f.rn r17, r17, r28
	sub.f.rn r7, r7, r28
	.loc	1 68 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:68:20
	mul.f.rn r17, r2, r17
	mul.f.rn r7, r2, r7
	.loc	1 70 20                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:70:20
	mul.f.rn r17, r17, r21
	mul.f.rn r7, r7, r27
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	float2hfloat.rn r17, r17
	float2hfloat.rn r7, r7
	store.h r17, 0(r3)
	store.h r7, 2(r3)
	mfence { lm }
	bneq r23, r14, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 72 25 is_stmt 0               # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sext_int2long r[2:3], r24
	sext_int2long r[23:24], r1
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	addli r7, r13, 6
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[1:2], r[2:3], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r3, 983040
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[23:24], r[23:24], r26
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r3, r22, r3
	s_lm2gm r3, r5, 0(r[1:2])
	lui r3, 983040
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[23:24]
	sext_int2long r[23:24], r25
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r5, r13, 4
	or r3, r22, r3
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[23:24], r[23:24], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sext_int2long r[3:4], r4
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r5, 983040
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[23:24]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[1:2])
	lui r5, 983040
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[3:4]
	sext_int2long r[3:4], r11
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r7, r13, 8
	addli r11, r13, 22
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[1:2])
	lui r5, 983040
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[3:4]
	sext_int2long r[3:4], r9
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r7, r13, 10
	lui r9, 983040
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r9, r22, r9
	s_lm2gm r5, r7, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r5, 983040
	addli r7, r13, 12
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sext_int2long r[3:4], r3
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r5,  -244(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r7, r13, 16
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[3:4], r[3:4], r26
	add.ul r[1:2], r[19:20], r[3:4]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r3, 983040
	addli r4, r13, 14
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sext_int2long r[23:24], r5
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r5, 983040
	or r3, r22, r3
	or r5, r22, r5
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r3,  -240(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[23:24], r26
	add.ul r[1:2], r[19:20], r[1:2]
	sext_int2long r[3:4], r3
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[1:2])
	lui r1, 983040
	addli r2, r13, 18
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r5,  -236(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r7, r13, 20
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r1, r22, r1
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[3:4], r[19:20], r[3:4]
	sext_int2long r[23:24], r5
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r5, 983040
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[23:24], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[3:4], r[19:20], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r3, 983040
	addli r7, r13, 24
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[1:2], r[1:2], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r3, r22, r3
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[1:2]
	sext_int2long r[4:5], r4
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r9, r11, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	load.d r[1:2], -208(r30)                # 8-byte Folded Reload
	sll.d r[4:5], r[4:5], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r9, 983040
	addli r11, r13, 30
	or r9, r22, r9
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r3, r13, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[19:20], r[4:5]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r5, 983040
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sext_int2long r[1:2], r1
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[3:4])
	lui r3, 983040
	addli r4, r13, 26
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	addli r7, r13, 28
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[1:2], r[1:2], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r3, r22, r3
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[1:2], r[19:20], r[1:2]
	sext_int2long r[23:24], r5
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	lui r5, 983040
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[23:24], r26
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	or r5, r22, r5
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	add.ul r[3:4], r[19:20], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 72 25                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:25
	sll.d r[1:2], r[1:2], r26
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 72 48                         # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:48
	s_lm2gm r9, r11, 0(r[1:2])
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r21,  -196(r30)                # 4-byte Folded Reload
	add.s r6, r6, r1
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 72 4 epilogue_begin           # cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py:72:4
	addli sp, sp, 360
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
	.long	424                             # 0x1a8
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
	.byte	53                              # DW_AT_call_line
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
	.byte	61                              # DW_AT_call_line
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
.asciz	"cfz3etm4oufkl4q7yqtvkzhm7zrgh2dk7k26byxbg7wjgoharlf6.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/fz" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
