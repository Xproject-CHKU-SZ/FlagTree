	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/de" "cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py"
	.loc	1 22 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -360
	addli r30, sp, 296
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  52(r30)
	loadli.w r5,  48(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r8,  56(r30)
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
	ble.s r6, r5, .LBB0_31
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r13, r3, 1040
	addli r18, zero, 1
	load.d r[10:11], 16(r30)
	load.d r[14:15], 8(r30)
	andi r22, r1, 63
	addli r25, zero, 4
	addli r28, r30, -64
	lui r27, 522240
	div.s r12, r1, r8
	storeli.w r13, -264(r30)                # 4-byte Folded Spill
	load_param_i r13, 1
	load.d r[8:9], 24(r30)
	storeli.w r13, -268(r30)                # 4-byte Folded Spill
	storeli.w r12, -260(r30)                # 4-byte Folded Spill
	slli r12, r12, 6
	sub.s r12, r1, r12
	lui r1, 7
	slli r13, r12, 1
	lui r12, 1048575
	ori r1, r1, 4095
	ori r12, r12, 3840
	sext_int2long r[16:17], r13
	and r7, r7, r12
	sll.d r[16:17], r[16:17], r18
	ori r18, r13, 1
	add.s r21, r7, r2
	lui r2, 524287
	add.ul r[10:11], r[10:11], r[16:17]
	lui r7, 522239
	add.ul r[14:15], r[14:15], r[16:17]
	add.ul r[8:9], r[8:9], r[16:17]
	storeli.w r18, -272(r30)                # 4-byte Folded Spill
	ori r24, r2, 4095
	lui r2, 239665
	store.d r[10:11], -288(r30)             # 8-byte Folded Spill
	addli r10, zero, 1
	addli r23, r21, 1040
	ori r26, r7, 4095
	store.d r[14:15], -280(r30)             # 8-byte Folded Spill
	store.d r[8:9], -296(r30)               # 8-byte Folded Spill
	ori r11, r2, 623
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	loadli.w r9,  -272(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 75 48 prologue_end            # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	float2bfloat.rn r2, r2
	load.d r[18:19], 32(r30)
	addli r10, zero, 1
	store.h r2, -62(r30)
	lui r2, 983040
	add.s r7, r9, r7
	.loc	1 75 0 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	add.ul r[14:15], r[18:19], r[14:15]
	addli r9, r28, 2
	sext_int2long r[16:17], r7
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	float2bfloat.rn r7, r8
	addli r8, zero, 2
	store.h r7, -64(r30)
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	sll.d r[16:17], r[16:17], r10
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r7, 983040
	or r2, r8, r2
	mfence { lm }
	s_lm2gm r2, r28, 0(r[14:15])
	loadli.w r2,  -268(r30)                 # 4-byte Folded Reload
	.loc	1 75 0                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:0
	add.ul r[16:17], r[18:19], r[16:17]
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	or r7, r8, r7
	s_lm2gm r7, r9, 0(r[16:17])
	add.s r5, r5, r2
	mfence { lm }
	blt.s r5, r6, .LBB0_3
	j .LBB0_31
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	loadli.w r2,  56(r30)
	loadli.w r7,  52(r30)
	.loc	1 38 46 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	store.h zero, -256(r30)
	store.h zero, -254(r30)
	div.s r2, r5, r2
	div.s r2, r2, r7
	.loc	1 29 23                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:29:23
	loadli.w r7,  -260(r30)                 # 4-byte Folded Reload
	add.s r20, r2, r7
	.loc	1 38 41                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:41
	slli r7, r20, 7
	.loc	1 38 37 is_stmt 0               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:37
	add.s r2, r7, r13
	.loc	1 38 30                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:30
	sext_int2long r[8:9], r2
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	lui r2, 983040
	.loc	1 38 30                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:30
	sll.d r[14:15], r[8:9], r10
	load.d r[8:9], 0(r30)
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	or r2, r25, r2
	addli r10, r30, -256
	mfence { lm }
	.loc	1 39 37 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	load.d r[16:17], -280(r30)              # 8-byte Folded Reload
	.loc	1 38 30                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:30
	add.ul r[8:9], r[8:9], r[14:15]
	.loc	1 38 46 is_stmt 0               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	l_gm2lm r2, r10, 0(r[8:9])
	.loc	1 39 37 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	lui r2, 983040
	addli r10, r30, -192
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	lui r8, 983040
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	lui r9, 983040
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	or r2, r25, r2
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	or r8, r25, r8
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	or r9, r25, r9
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	l_gm2lm r2, r10, 0(r[16:17])
	.loc	1 40 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	load.d r[16:17], -288(r30)              # 8-byte Folded Reload
	addli r2, r30, -128
	l_gm2lm r8, r2, 0(r[16:17])
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	load.d r[16:17], -296(r30)              # 8-byte Folded Reload
	l_gm2lm r9, r28, 0(r[16:17])
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	mfence { lm }
	load.hu r2, -256(r30)
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	load.hu r8, -192(r30)
	.loc	1 38 46                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:38:46
	bfloat2float.rn r2, r2
	.loc	1 39 37                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:39:37
	bfloat2float.rn r8, r8
	.loc	1 46 18                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:46:18
	add.f.rn r9, r2, r8
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	and r12, r9, r24
	setlt.u r2, r27, r12
	bneq r2, zero, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	addli r2, r9, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	lui r2, 1024
	or r2, r9, r2
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	load.hu r8, -254(r30)
	load.hu r10, -190(r30)
	bfloat2float.rn r8, r8
	bfloat2float.rn r10, r10
	add.f.rn r10, r8, r10
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	and r16, r10, r24
	setlt.u r8, r27, r16
	bneq r8, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	addli r8, r10, 0
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r12, r26, r12
	beq r12, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	lui r8, 1024
	or r8, r10, r8
	setlt.u r12, r26, r12
	bneq r12, zero, .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	lui r9, 1048560
	add.s r2, r2, r1
	and r2, r2, r9
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:47:19
	setlt.u r9, r26, r16
	bneq r9, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:19
	srli r8, r10, 16
	lui r9, 1048560
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r1
	and r8, r8, r9
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 40 38 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:40:38
	load.hu r18, -128(r30)
	load.hu r16, -126(r30)
	.loc	1 41 38                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:41:38
	load.hu r19, -64(r30)
	load.hu r17, -62(r30)
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	addli r9, zero, 16
	blt.s r20, r9, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r9, zero, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r9, r2, r8
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	stores.w r9, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r9, 0(r21)
	loads.w r12, 4(r21)
	loads.w r10, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r9, r9, r12
	loads.w r12, 12(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 16(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 20(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 24(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 28(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 32(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 36(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 40(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 44(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 48(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 52(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 56(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 60(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 64(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 68(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 72(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 76(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 80(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 84(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 88(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 92(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 96(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 100(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 104(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 108(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 112(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 116(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 120(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 124(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 128(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 132(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 136(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 140(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 144(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 148(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 152(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 156(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 160(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 164(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 168(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 172(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 176(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 180(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 184(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 188(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 192(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 196(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 200(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 204(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 208(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 212(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 216(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 220(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 224(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 228(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 232(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 236(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 240(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 244(r21)
	add.f.rn r9, r9, r10
	loads.w r10, 248(r21)
	add.f.rn r9, r9, r12
	loads.w r12, 252(r21)
	add.f.rn r9, r9, r10
	add.f.rn r9, r9, r12
	stores.w r9, 0(r21)
.Ltmp2:
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r9, 0(r21)
	.loc	1 57 21 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:57:21
	lui r10, 245760
	mul.f.rn r10, r9, r10
	.loc	1 58 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:58:20
	sub.f.rn r9, r2, r10
	sub.f.rn r2, r8, r10
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	addli r8, zero, 16
	blt.s r20, r8, .LBB0_19
.Ltmp4:
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r8, zero, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r8, r9, r9
	mul.f.rn r10, r2, r2
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r8, r8, r10
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r10,  -264(r30)                # 4-byte Folded Reload
	stores.w r8, 0(r10)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r8, 0(r23)
	loads.w r12, 4(r23)
	loads.w r10, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r8, r8, r12
	loads.w r12, 12(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 16(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 20(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 24(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 28(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 32(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 36(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 40(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 44(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 48(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 52(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 56(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 60(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 64(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 68(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 72(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 76(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 80(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 84(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 88(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 92(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 96(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 100(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 104(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 108(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 112(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 116(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 120(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 124(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 128(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 132(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 136(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 140(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 144(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 148(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 152(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 156(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 160(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 164(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 168(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 172(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 176(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 180(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 184(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 188(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 192(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 196(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 200(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 204(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 208(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 212(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 216(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 220(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 224(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 228(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 232(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 236(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 240(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 244(r23)
	add.f.rn r8, r8, r10
	loads.w r10, 248(r23)
	add.f.rn r8, r8, r12
	loads.w r12, 252(r23)
	add.f.rn r8, r8, r10
	add.f.rn r8, r8, r12
	stores.w r8, 0(r23)
.Ltmp6:
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r8, 0(r23)
	.loc	1 65 21 is_stmt 1               # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:65:21
	lui r10, 245760
	mul.f.rn r8, r8, r10
	.loc	1 68 28                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:68:28
	lui r10, 260096
	.loc	1 67 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:67:20
	add.f.rn r8, r8, r11
	.loc	1 68 28                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:68:28
	sqrt.f.rn r8, r8
	div.f.rn r10, r10, r8
	.loc	1 69 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:69:20
	mul.f.rn r8, r9, r10
	bfloat2float.rn r9, r18
	.loc	1 71 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:71:20
	mul.f.rn r8, r8, r9
	bfloat2float.rn r9, r19
	.loc	1 73 20                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:73:20
	add.f.rn r9, r8, r9
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	and r12, r9, r24
	setlt.u r8, r27, r12
	bneq r8, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	addli r8, r9, 0
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	lui r8, 1024
	or r8, r9, r8
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:0
	mul.f.rn r2, r2, r10
	bfloat2float.rn r10, r16
	mul.f.rn r2, r2, r10
	bfloat2float.rn r10, r17
	add.f.rn r10, r2, r10
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	and r16, r10, r24
	setlt.u r2, r27, r16
	bneq r2, zero, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	addli r2, r10, 0
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r12, r26, r12
	beq r12, zero, .LBB0_28
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	lui r2, 1024
	or r2, r10, r2
	setlt.u r12, r26, r12
	bneq r12, zero, .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	lui r9, 1048560
	add.s r8, r8, r1
	and r8, r8, r9
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 75 48                         # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:48
	setlt.u r9, r26, r16
	bneq r9, zero, .LBB0_2
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:0:48
	srli r2, r10, 16
	lui r9, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r1
	and r2, r2, r9
	j .LBB0_2
.LBB0_31:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py:75:4
	addli sp, sp, 296
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
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	360                             # 0x168
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
	.byte	6                               # Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
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
.asciz	"cde6g6op2gilbczfcxdm5zjphdiibjwmyba2wdfqvzxkcz4s6htc.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/de" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
