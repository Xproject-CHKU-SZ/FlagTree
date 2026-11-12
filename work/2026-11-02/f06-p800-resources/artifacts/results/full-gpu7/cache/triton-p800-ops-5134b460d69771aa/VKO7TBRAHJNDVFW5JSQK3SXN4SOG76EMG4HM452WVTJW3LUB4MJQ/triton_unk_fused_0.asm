	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/bs" "cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py"
	.loc	1 22 0                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -264
	lui r8, :hi20:global_smem
.Ltmp0:
	.loc	1 50 37 prologue_end            # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	core_id r7
	addli r30, sp, 200
	lui r2, 15
	load_param_i r5, 0
	slli r1, r7, 2
	addli r8, r8, :lo12:global_smem
	loadli.w r23,  36(r30)
	loadli.w r21,  40(r30)
	ori r4, r2, 4095
	add.s r3, r1, r8
	loadli.w r1,  32(r30)
	stores.w zero, 0(r3)
	mul.s r1, r23, r1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	mul.s r6, r1, r21
	ble.s r6, r5, .LBB0_30
# %bb.1:                                # %.lr.ph
	.loc	1 0 37 is_stmt 0                # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:37
	addli r1, zero, 64
	andi r10, r7, 63
	addli r16, zero, 1
	lui r11, 262143
	load_param_i r12, 1
	addli r20, zero, 31
	addli r22, zero, 8
	lui r25, 1048560
	lui r28, 522240
	div.s r9, r7, r1
	storeli.w r10, -196(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	ori r11, r11, 4032
	and r11, r7, r11
	slli r11, r11, 2
	slli r10, r9, 6
	add.s r18, r11, r8
	sub.s r10, r7, r10
	slli r15, r10, 2
	seteq r10, r10, zero
	sext_int2long r[13:14], r15
	sll.d r[13:14], r[13:14], r16
	add.ul r[16:17], r[1:2], r[13:14]
	setlti r1, r7, 64
	lui r2, 522239
	lui r7, 1024
	and r19, r1, r10
	lui r1, 7
	ori r27, r2, 4095
	ori r24, r1, 4095
	lui r1, 524287
	ori r26, r1, 4095
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 50 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	float2bfloat.rn r1, r2
	.loc	1 50 25                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:25
	sext_int2long r[10:11], r8
	addli r2, zero, 1
	load.d r[13:14], 16(r30)
	sll.d r[10:11], r[10:11], r2
	.loc	1 50 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	store.h r1, -64(r30)
	lui r2, 983040
	addli r1, zero, 2
	mfence { lm }
	or r1, r1, r2
	.loc	1 50 25                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:25
	add.ul r[10:11], r[13:14], r[10:11]
	.loc	1 50 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	addli r2, r30, -64
	s_lm2gm r1, r2, 0(r[10:11])
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:37
	add.s r5, r5, r12
	blt.s r5, r6, .LBB0_4
	j .LBB0_30
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	div.s r1, r5, r21
	div.s r1, r1, r23
	.loc	1 29 23 is_stmt 1               # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:29:23
	add.s r8, r1, r9
	blt.s r20, r8, .LBB0_3
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 38 41                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:41
	slli r1, r8, 8
	.loc	1 38 46 is_stmt 0               # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	store.h zero, -192(r30)
	store.h zero, -190(r30)
	.loc	1 38 30                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:30
	addli r10, zero, 1
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	addli r13, r30, -192
	mfence { lm }
	store.h zero, -188(r30)
	store.h zero, -186(r30)
	.loc	1 38 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:37
	add.s r1, r1, r15
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	mfence { lm }
	.loc	1 38 30                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:30
	sext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r10
	load.d r[10:11], 0(r30)
	add.ul r[1:2], r[10:11], r[1:2]
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	lui r10, 983040
	.loc	1 39 37 is_stmt 1               # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:39:37
	lui r11, 983040
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	or r10, r22, r10
	.loc	1 39 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:39:37
	or r11, r22, r11
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	l_gm2lm r10, r13, 0(r[1:2])
	.loc	1 39 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:39:37
	addli r1, r30, -128
	l_gm2lm r11, r1, 0(r[16:17])
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	mfence { lm }
	load.hu r1, -192(r30)
	.loc	1 39 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:39:37
	load.hu r2, -128(r30)
	.loc	1 38 46                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:38:46
	bfloat2float.rn r1, r1
	.loc	1 39 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:39:37
	bfloat2float.rn r2, r2
	.loc	1 44 18                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:44:18
	mul.f.rn r21, r1, r2
	.loc	1 45 19                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:45:19
	and r13, r21, r26
	setlt.u r1, r28, r13
	bneq r1, zero, .LBB0_7
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19 is_stmt 0                # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:19
	addli r10, r21, 0
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 45 19                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:45:19
	or r10, r21, r7
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 0                           # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:0
	load.hu r1, -190(r30)
	load.hu r2, -126(r30)
	bfloat2float.rn r1, r1
	bfloat2float.rn r2, r2
	mul.f.rn r23, r1, r2
	.loc	1 45 19                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:45:19
	and r1, r23, r26
	setlt.u r2, r28, r1
	bneq r2, zero, .LBB0_10
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:19
	addli r11, r23, 0
	.loc	1 45 19                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:45:19
	setlt.u r2, r27, r13
	beq r2, zero, .LBB0_11
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	or r11, r23, r7
	setlt.u r2, r27, r13
	bneq r2, zero, .LBB0_12
.LBB0_11:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r24
	and r10, r2, r25
.LBB0_12:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 45 19                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:45:19
	setlt.u r1, r27, r1
	bneq r1, zero, .LBB0_14
# %bb.13:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r24
	and r11, r1, r25
.LBB0_14:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	load.hu r1, -188(r30)
	load.hu r2, -124(r30)
	load.hu r13, -122(r30)
	bfloat2float.rn r1, r1
	bfloat2float.rn r2, r2
	mul.f.rn r21, r1, r2
	load.hu r2, -186(r30)
	and r1, r21, r26
	setlt.u r14, r28, r1
	bneq r14, zero, .LBB0_16
# %bb.15:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addli r23, r21, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	or r23, r21, r7
.LBB0_17:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	bfloat2float.rn r2, r2
	bfloat2float.rn r13, r13
	mul.f.rn r13, r2, r13
	and r14, r13, r26
	setlt.u r2, r28, r14
	bneq r2, zero, .LBB0_19
# %bb.18:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addli r2, r13, 0
	setlt.u r1, r27, r1
	beq r1, zero, .LBB0_20
	j .LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	or r2, r13, r7
	setlt.u r1, r27, r1
	bneq r1, zero, .LBB0_21
.LBB0_20:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r24
	and r23, r1, r25
.LBB0_21:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	setlt.u r1, r27, r14
	bneq r1, zero, .LBB0_23
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r24
	and r2, r1, r25
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r10, r23
	add.f.rn r2, r11, r2
	add.f.rn r1, r1, r2
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r10, 0(r18)
	loads.w r21, 4(r18)
	loads.w r11, 8(r18)
	loads.w r2, 12(r18)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r10, r21
	loads.w r10, 16(r18)
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r2
	loads.w r2, 20(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 24(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 32(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 40(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 48(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 56(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 64(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 72(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 80(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 88(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 96(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 104(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 112(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 120(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 128(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 136(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 144(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 152(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 160(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 168(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 176(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 184(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 192(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 200(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 208(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 216(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 224(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 232(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 240(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r18)
	add.f.rn r1, r1, r10
	loads.w r10, 248(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r18)
	add.f.rn r1, r1, r10
	add.f.rn r1, r1, r2
	stores.w r1, 0(r18)
.Ltmp2:
.LBB0_25:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	loadli.w r21,  40(r30)
	loadli.w r23,  36(r30)
	csr_set csr3, r4
	sync_group
	.loc	1 50 37 is_stmt 1               # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	beq r19, zero, .LBB0_3
# %bb.26:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37 is_stmt 0                # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:37
	loads.w r1, 0(r18)
	.loc	1 50 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	and r10, r1, r26
	setlt.u r2, r28, r10
	bneq r2, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:37
	addli r2, r1, 0
	.loc	1 50 37                         # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:37
	setlt.u r10, r27, r10
	bneq r10, zero, .LBB0_2
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_4 Depth=1
	or r2, r1, r7
	setlt.u r10, r27, r10
	bneq r10, zero, .LBB0_2
.LBB0_29:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:0:37
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r24
	and r2, r1, r25
	j .LBB0_2
.LBB0_30:                               # %._crit_edge
	.loc	1 50 4 epilogue_begin           # cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py:50:4
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
.asciz	"cbszee23qby7za4rbhs2oxjcpihabli3ioocbvmmojvsaglcwlwc.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/bs" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
