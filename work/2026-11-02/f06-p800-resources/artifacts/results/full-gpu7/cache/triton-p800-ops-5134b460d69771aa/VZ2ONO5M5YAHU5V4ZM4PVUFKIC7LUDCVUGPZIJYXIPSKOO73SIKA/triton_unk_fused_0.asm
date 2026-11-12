	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/y4" "cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py"
	.loc	1 22 0                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -264
	addli r30, sp, 200
	lui r8, :hi20:global_smem
.Ltmp0:
	.loc	1 50 37 prologue_end            # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	core_id r7
	lui r4, 15
	loadli.w r1,  36(r30)
	loadli.w r5,  32(r30)
	slli r3, r7, 2
	addli r8, r8, :lo12:global_smem
	loadli.w r2,  40(r30)
	ori r4, r4, 4095
	add.s r3, r3, r8
	mul.s r6, r1, r5
	load_param_i r5, 0
	stores.w zero, 0(r3)
	mul.s r6, r6, r2
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_22
# %bb.1:                                # %.lr.ph
	.loc	1 0 37 is_stmt 0                # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:37
	addli r9, zero, 64
	lui r16, 262143
	andi r14, r7, 63
	addli r13, zero, 1
	load.d r[10:11], 8(r30)
	load_param_i r12, 1
	addli r22, zero, 4
	lui r28, 522240
	div.s r9, r7, r9
	ori r16, r16, 4032
	storeli.w r14, -196(r30)                # 4-byte Folded Spill
	and r16, r7, r16
	slli r20, r16, 2
	slli r15, r9, 6
	sub.s r17, r7, r15
	setlti r7, r7, 64
	seteq r19, r17, zero
	slli r15, r17, 1
	sext_int2long r[17:18], r15
	sll.d r[17:18], r[17:18], r13
	add.ul r[16:17], r[10:11], r[17:18]
	add.s r18, r20, r8
	lui r8, 522239
	addli r20, zero, 15
	and r19, r7, r19
	lui r7, 7
	ori r27, r8, 4095
	ori r24, r7, 4095
	lui r7, 524287
	ori r26, r7, 4095
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 50 25                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:25
	sext_int2long r[7:8], r8
	addli r1, zero, 1
	.loc	1 50 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	float2bfloat.rn r10, r10
	lui r11, 983040
	.loc	1 50 25                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:25
	sll.d r[7:8], r[7:8], r1
	load.d r[1:2], 16(r30)
	.loc	1 50 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	store.h r10, -64(r30)
	mfence { lm }
	.loc	1 50 25                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:25
	add.ul r[7:8], r[1:2], r[7:8]
	.loc	1 50 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	addli r1, zero, 2
	addli r2, r13, 0
	or r10, r1, r11
	addli r1, r30, -64
	s_lm2gm r10, r1, 0(r[7:8])
	addli r1, r21, 0
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:37
	add.s r5, r5, r12
	blt.s r5, r6, .LBB0_4
	j .LBB0_22
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	div.s r7, r5, r2
	div.s r7, r7, r1
	.loc	1 29 23 is_stmt 1               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:29:23
	add.s r8, r7, r9
	blt.s r20, r8, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 38 41                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:41
	slli r7, r8, 7
	.loc	1 38 30 is_stmt 0               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:30
	addli r13, zero, 1
	.loc	1 38 46                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	store.h zero, -192(r30)
	store.h zero, -190(r30)
	.loc	1 39 37 is_stmt 1               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:39:37
	lui r21, 983040
	.loc	1 38 46                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	mfence { lm }
	.loc	1 38 37 is_stmt 0               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:37
	add.s r7, r7, r15
	.loc	1 39 37 is_stmt 1               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:39:37
	or r21, r22, r21
	.loc	1 38 30                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:30
	sext_int2long r[10:11], r7
	.loc	1 38 46 is_stmt 0               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	lui r7, 983040
	.loc	1 38 30                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:30
	sll.d r[10:11], r[10:11], r13
	load.d r[13:14], 0(r30)
	.loc	1 38 46                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	or r7, r22, r7
	.loc	1 38 30                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:30
	add.ul r[10:11], r[13:14], r[10:11]
	.loc	1 38 46                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	addli r13, r30, -192
	l_gm2lm r7, r13, 0(r[10:11])
	.loc	1 39 37 is_stmt 1               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:39:37
	addli r7, r30, -128
	l_gm2lm r21, r7, 0(r[16:17])
	.loc	1 38 46                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	mfence { lm }
	load.hu r7, -192(r30)
	.loc	1 39 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:39:37
	load.hu r10, -128(r30)
	.loc	1 38 46                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:38:46
	bfloat2float.rn r7, r7
	.loc	1 39 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:39:37
	bfloat2float.rn r10, r10
	.loc	1 44 18                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:44:18
	mul.f.rn r11, r7, r10
	.loc	1 45 19                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:45:19
	and r23, r11, r26
	setlt.u r7, r28, r23
	bneq r7, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19 is_stmt 0                # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:19
	addli r10, r11, 0
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 45 19                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:45:19
	lui r7, 1024
	or r10, r11, r7
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 0                           # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:0
	load.hu r7, -190(r30)
	load.hu r21, -126(r30)
	bfloat2float.rn r7, r7
	bfloat2float.rn r21, r21
	mul.f.rn r21, r7, r21
	.loc	1 45 19                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:45:19
	and r7, r21, r26
	setlt.u r25, r28, r7
	bneq r25, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:19
	addli r25, r21, 0
	.loc	1 45 19                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:45:19
	setlt.u r23, r27, r23
	beq r23, zero, .LBB0_11
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	lui r13, 1024
	or r25, r21, r13
	setlt.u r23, r27, r23
	bneq r23, zero, .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	lui r11, 1048560
	add.s r10, r10, r24
	and r10, r10, r11
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 45 19                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:45:19
	setlt.u r7, r27, r7
	bneq r7, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:19
	srli r7, r21, 16
	lui r11, 1048560
	andi r7, r7, 1
	add.s r7, r21, r7
	add.s r7, r7, r24
	and r25, r7, r11
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r7, r10, r25
	stores.w r7, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	bneq r7, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r10, 0(r18)
	loads.w r21, 4(r18)
	loads.w r11, 8(r18)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r10, r21
	loads.w r10, 12(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 16(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 20(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 24(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 28(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 32(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 36(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 40(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 44(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 48(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 52(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 56(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 60(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 64(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 68(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 72(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 76(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 80(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 84(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 88(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 92(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 96(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 100(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 104(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 108(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 112(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 116(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 120(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 124(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 128(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 132(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 136(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 140(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 144(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 148(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 152(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 156(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 160(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 164(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 168(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 172(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 176(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 180(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 184(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 188(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 192(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 196(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 200(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 204(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 208(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 212(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 216(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 220(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 224(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 228(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 232(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 236(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 240(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 244(r18)
	add.f.rn r7, r7, r11
	loads.w r11, 248(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 252(r18)
	add.f.rn r7, r7, r11
	add.f.rn r7, r7, r10
	stores.w r7, 0(r18)
.Ltmp2:
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	.loc	1 50 37 is_stmt 1               # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	beq r19, zero, .LBB0_3
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37 is_stmt 0                # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:37
	loads.w r7, 0(r18)
	.loc	1 50 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	and r11, r7, r26
	setlt.u r10, r28, r11
	bneq r10, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:37
	addli r10, r7, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 50 37                         # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:37
	lui r10, 1024
	or r10, r7, r10
.LBB0_20:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.u r11, r27, r11
	addli r13, r2, 0
	addli r21, r1, 0
	bneq r11, zero, .LBB0_2
# %bb.21:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:0:37
	srli r10, r7, 16
	lui r1, 1048560
	andi r10, r10, 1
	add.s r7, r7, r10
	add.s r7, r7, r24
	and r10, r7, r1
	j .LBB0_2
.LBB0_22:                               # %._crit_edge
	.loc	1 50 4 epilogue_begin           # cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py:50:4
	addli sp, sp, 200
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
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	264                             # 0x108
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
	.byte	1                               # Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
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
.asciz	"cy43g7zwnoo6clirufbdxg2js5iub3dajowpixwmdygqsu77svk7.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/y4" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
