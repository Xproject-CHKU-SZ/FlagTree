	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ps" "cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py"
	.loc	1 22 0                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -408
	addli r30, sp, 344
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  52(r30)
	loadli.w r5,  48(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  56(r30)
	ori r4, r4, 4095
	add.s r8, r3, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r8, -276(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r6, r6, r7
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r6, -280(r30)                 # 4-byte Folded Spill
	ble.s r6, r5, .LBB0_60
# %bb.1:                                # %.lr.ph
	addli r6, zero, 64
	loadli.w r12,  -276(r30)                # 4-byte Folded Reload
	addli r18, zero, 1
	load.d r[8:9], 16(r30)
	load.d r[10:11], 8(r30)
	addli r24, r30, -256
	addli r26, r30, -192
	addli r27, r30, -128
	addli r28, r30, -64
	div.s r13, r1, r6
	load.d r[6:7], 24(r30)
	addli r12, r12, 1040
	storeli.w r12, -288(r30)                # 4-byte Folded Spill
	load_param_i r12, 1
	storeli.w r12, -292(r30)                # 4-byte Folded Spill
	slli r12, r13, 6
	storeli.w r13, -284(r30)                # 4-byte Folded Spill
	lui r13, 1048575
	sub.s r12, r1, r12
	andi r1, r1, 63
	slli r15, r12, 2
	ori r12, r13, 3840
	storeli.w r1, -260(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r13, r15, 1
	and r3, r3, r12
	ori r16, r15, 2
	storeli.w r15, -296(r30)                # 4-byte Folded Spill
	ori r1, r1, 4095
	lui r12, 522240
	storeli.w r13, -300(r30)                # 4-byte Folded Spill
	sext_int2long r[13:14], r15
	add.s r21, r3, r2
	lui r3, 524287
	ori r15, r15, 3
	lui r2, 1048560
	storeli.w r16, -304(r30)                # 4-byte Folded Spill
	sll.d r[13:14], r[13:14], r18
	addli r23, r21, 1040
	storeli.w r15, -308(r30)                # 4-byte Folded Spill
	add.ul r[8:9], r[8:9], r[13:14]
	add.ul r[6:7], r[6:7], r[13:14]
	add.ul r[10:11], r[10:11], r[13:14]
	lui r13, 1024
	store.d r[8:9], -328(r30)               # 8-byte Folded Spill
	store.d r[6:7], -336(r30)               # 8-byte Folded Spill
	lui r6, 522239
	ori r8, r3, 4095
	lui r3, 239665
	store.d r[10:11], -320(r30)             # 8-byte Folded Spill
	ori r9, r6, 4095
	ori r3, r3, 623
	storeli.w r3, -340(r30)                 # 4-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 75 25 prologue_end            # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	sext_int2long r[10:11], r15
	load.d r[15:16], 32(r30)
	addli r18, zero, 1
	.loc	1 75 48 is_stmt 0               # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	lui r14, 983040
	addli r22, zero, 2
	.loc	1 75 25                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	sext_int2long r[6:7], r6
	sll.d r[10:11], r[10:11], r18
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	or r14, r22, r14
	.loc	1 75 25                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	sll.d r[6:7], r[6:7], r18
	addli.d r[19:20], r[15:16], 0
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	addli r15, r28, 2
	.loc	1 75 25                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	load.d r[16:17], -272(r30)              # 8-byte Folded Reload
	add.ul r[10:11], r[19:20], r[10:11]
	add.ul r[6:7], r[19:20], r[6:7]
	add.ul r[16:17], r[19:20], r[16:17]
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	s_lm2gm r14, r15, 0(r[10:11])
	lui r14, 983040
	.loc	1 75 25                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	sext_int2long r[10:11], r3
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	addli r15, r28, 4
	lui r3, 983040
	or r14, r22, r14
	.loc	1 75 25                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	sll.d r[10:11], r[10:11], r18
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	or r3, r22, r3
	s_lm2gm r14, r15, 0(r[6:7])
	lui r6, 983040
	.loc	1 75 25                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:25
	add.ul r[10:11], r[19:20], r[10:11]
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	addli r7, r28, 6
	s_lm2gm r3, r28, 0(r[16:17])
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	or r6, r22, r6
	add.s r5, r5, r3
	s_lm2gm r6, r7, 0(r[10:11])
	mfence { lm }
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	blt.s r5, r3, .LBB0_3
	j .LBB0_60
.LBB0_3:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
	.loc	1 0 48                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:48
	loadli.w r3,  56(r30)
	loadli.w r6,  52(r30)
	.loc	1 38 46 is_stmt 1               # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	store.h zero, -256(r30)
	store.h zero, -254(r30)
	addli r10, zero, 8
	div.s r3, r5, r3
	div.s r3, r3, r6
	.loc	1 29 23                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:29:23
	loadli.w r6,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	mfence { lm }
	store.h zero, -252(r30)
	store.h zero, -250(r30)
	.loc	1 29 23                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:29:23
	add.s r15, r3, r6
	.loc	1 38 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:37
	loadli.w r6,  -296(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	lui r3, 983040
	.loc	1 38 41                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:41
	slli r14, r15, 8
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	or r3, r10, r3
	.loc	1 38 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:37
	add.s r6, r14, r6
	.loc	1 38 30                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:30
	sext_int2long r[6:7], r6
	sll.d r[16:17], r[6:7], r18
	load.d r[6:7], 0(r30)
	store.d r[16:17], -272(r30)             # 8-byte Folded Spill
	add.ul r[6:7], r[6:7], r[16:17]
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	mfence { lm }
	l_gm2lm r3, r24, 0(r[6:7])
	.loc	1 39 37 is_stmt 1               # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	lui r3, 983040
	.loc	1 40 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:40:38
	lui r6, 983040
	.loc	1 41 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:41:38
	lui r7, 983040
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	or r3, r10, r3
	.loc	1 40 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:40:38
	or r6, r10, r6
	.loc	1 41 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:41:38
	or r7, r10, r7
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	l_gm2lm r3, r26, 0(r[10:11])
	.loc	1 40 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:40:38
	load.d r[10:11], -328(r30)              # 8-byte Folded Reload
	l_gm2lm r6, r27, 0(r[10:11])
	.loc	1 41 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:41:38
	load.d r[10:11], -336(r30)              # 8-byte Folded Reload
	l_gm2lm r7, r28, 0(r[10:11])
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	mfence { lm }
	load.hu r3, -256(r30)
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	load.hu r6, -192(r30)
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	bfloat2float.rn r3, r3
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	bfloat2float.rn r6, r6
	.loc	1 46 18                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:46:18
	add.f.rn r10, r3, r6
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	and r16, r10, r8
	setlt.u r3, r12, r16
	bneq r3, zero, .LBB0_5
# %bb.4:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	addli r6, r10, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	or r6, r10, r13
.LBB0_6:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:0
	load.hu r3, -254(r30)
	load.hu r7, -190(r30)
	bfloat2float.rn r3, r3
	bfloat2float.rn r7, r7
	add.f.rn r11, r3, r7
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	and r7, r11, r8
	setlt.u r3, r12, r7
	bneq r3, zero, .LBB0_8
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	addli r3, r11, 0
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	setlt.u r16, r9, r16
	beq r16, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	or r3, r11, r13
	setlt.u r16, r9, r16
	bneq r16, zero, .LBB0_10
.LBB0_9:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r1
	and r6, r6, r2
.LBB0_10:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	setlt.u r7, r9, r7
	bneq r7, zero, .LBB0_12
# %bb.11:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r1
	and r3, r3, r2
.LBB0_12:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	load.hu r7, -252(r30)
	load.hu r10, -188(r30)
	load.hu r16, -186(r30)
	bfloat2float.rn r7, r7
	bfloat2float.rn r10, r10
	add.f.rn r11, r7, r10
	load.hu r7, -250(r30)
	and r18, r11, r8
	setlt.u r10, r12, r18
	bneq r10, zero, .LBB0_14
# %bb.13:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r10, r11, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	or r10, r11, r13
.LBB0_15:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	bfloat2float.rn r7, r7
	bfloat2float.rn r16, r16
	add.f.rn r16, r7, r16
	and r7, r16, r8
	setlt.u r17, r12, r7
	bneq r17, zero, .LBB0_17
# %bb.16:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r17, r16, 0
	setlt.u r18, r9, r18
	beq r18, zero, .LBB0_18
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	or r17, r16, r13
	setlt.u r18, r9, r18
	bneq r18, zero, .LBB0_19
.LBB0_18:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r1
	and r10, r10, r2
.LBB0_19:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setlt.u r7, r9, r7
	bneq r7, zero, .LBB0_21
# %bb.20:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r1
	and r17, r7, r2
.LBB0_21:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	addli r7, zero, 32
	blt.s r15, r7, .LBB0_23
# %bb.22:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r7, zero, 0
	j .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r6, r10
	add.f.rn r10, r3, r17
	add.f.rn r7, r7, r10
.LBB0_24:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r10,  -276(r30)                # 4-byte Folded Reload
	stores.w r7, 0(r10)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r7,  -260(r30)                 # 4-byte Folded Reload
	bneq r7, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r10, 0(r21)
	loads.w r16, 4(r21)
	loads.w r11, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r10, r16
	loads.w r10, 12(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 16(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 20(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 24(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 28(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 32(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 36(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 40(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 44(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 48(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 52(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 56(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 60(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 64(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 68(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 72(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 76(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 80(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 84(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 88(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 92(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 96(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 100(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 104(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 108(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 112(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 116(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 120(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 124(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 128(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 132(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 136(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 140(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 144(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 148(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 152(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 156(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 160(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 164(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 168(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 172(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 176(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 180(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 184(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 188(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 192(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 196(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 200(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 204(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 208(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 212(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 216(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 220(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 224(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 228(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 232(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 236(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 240(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 244(r21)
	add.f.rn r7, r7, r11
	loads.w r11, 248(r21)
	add.f.rn r7, r7, r10
	loads.w r10, 252(r21)
	add.f.rn r7, r7, r11
	add.f.rn r7, r7, r10
	stores.w r7, 0(r21)
.Ltmp2:
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	load.hu r7, -252(r30)
	load.hu r10, -188(r30)
	load.hu r17, -186(r30)
	bfloat2float.rn r7, r7
	bfloat2float.rn r10, r10
	add.f.rn r16, r7, r10
	loads.w r10, 0(r21)
	load.hu r7, -250(r30)
	and r22, r16, r8
	setlt.u r11, r12, r22
	bneq r11, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	addli r11, r16, 0
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	or r11, r16, r13
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	bfloat2float.rn r7, r7
	bfloat2float.rn r17, r17
	add.f.rn r18, r7, r17
	and r7, r18, r8
	setlt.u r17, r12, r7
	bneq r17, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	addli r17, r18, 0
	setlt.u r19, r9, r22
	beq r19, zero, .LBB0_32
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	or r17, r18, r13
	setlt.u r19, r9, r22
	bneq r19, zero, .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	srli r11, r16, 16
	andi r11, r11, 1
	add.s r11, r16, r11
	add.s r11, r11, r1
	and r11, r11, r2
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r7, r9, r7
	bneq r7, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=1
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r1
	and r17, r7, r2
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	lui r7, 243712
	mul.f.rn r16, r10, r7
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	addli r7, zero, 32
	blt.s r15, r7, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	addli r3, zero, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	sub.f.rn r6, r6, r16
	sub.f.rn r3, r3, r16
	sub.f.rn r7, r11, r16
	sub.f.rn r10, r17, r16
	mul.f.rn r6, r6, r6
	mul.f.rn r7, r7, r7
	mul.f.rn r3, r3, r3
	mul.f.rn r10, r10, r10
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r6, r7
	add.f.rn r3, r3, r10
	add.f.rn r3, r6, r3
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r6,  -288(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r6)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r3,  -260(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r23)
	loads.w r10, 4(r23)
	loads.w r6, 8(r23)
	loads.w r7, 12(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r10
	add.f.rn r3, r3, r6
	loads.w r6, 16(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 20(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 24(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 28(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 32(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 36(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 40(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 44(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 48(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 52(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 56(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 60(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 64(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 68(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 72(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 76(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 80(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 84(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 88(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 92(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 96(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 100(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 104(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 108(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 112(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 116(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 120(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 124(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 128(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 132(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 136(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 140(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 144(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 148(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 152(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 156(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 160(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 164(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 168(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 172(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 176(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 180(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 184(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 188(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 192(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 196(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 200(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 204(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 208(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 212(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 216(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 220(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 224(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 228(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 232(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 236(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 240(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 244(r23)
	add.f.rn r3, r3, r6
	loads.w r6, 248(r23)
	add.f.rn r3, r3, r7
	loads.w r7, 252(r23)
	add.f.rn r3, r3, r6
	add.f.rn r3, r3, r7
	stores.w r3, 0(r23)
.Ltmp4:
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r3, 0(r23)
	.loc	1 65 21 is_stmt 1               # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:65:21
	lui r6, 243712
	addli r7, zero, 0
	mul.f.rn r3, r3, r6
	.loc	1 67 20                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:67:20
	loadli.w r6,  -340(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r6
	.loc	1 68 28                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:68:28
	lui r6, 260096
	sqrt.f.rn r3, r3
	div.f.rn r11, r6, r3
	loadli.w r3,  -300(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r14
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	add.s r6, r3, r14
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r14
	addli r14, zero, 1
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	float2bfloat.rn r17, r17
	float2bfloat.rn r7, r7
	store.h r7, 2(r10)
	store.h r17, 0(r10)
	andi r10, r14, 1
	addli r7, zero, 2
	addli r14, zero, 0
	mfence { lm }
	beq r10, zero, .LBB0_2
.LBB0_42:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	slli r10, r7, 1
	add.s r18, r24, r10
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	add.s r19, r26, r10
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	load.hu r7, 0(r18)
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	load.hu r17, 0(r19)
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	load.hu r18, 2(r18)
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	load.hu r19, 2(r19)
	.loc	1 38 46                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:38:46
	bfloat2float.rn r7, r7
	.loc	1 39 37                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:39:37
	bfloat2float.rn r17, r17
	.loc	1 46 18                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:46:18
	add.f.rn r17, r7, r17
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	and r7, r17, r8
	setlt.u r20, r12, r7
	bneq r20, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19 is_stmt 0                # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	addli r22, r17, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	or r22, r17, r13
.LBB0_45:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 0                           # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:0
	bfloat2float.rn r18, r18
	bfloat2float.rn r19, r19
	add.f.rn r18, r18, r19
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	and r19, r18, r8
	setlt.u r20, r12, r19
	bneq r20, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	addli r25, r18, 0
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	setlt.u r7, r9, r7
	beq r7, zero, .LBB0_48
	j .LBB0_49
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=2
	or r25, r18, r13
	setlt.u r7, r9, r7
	bneq r7, zero, .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	srli r7, r17, 16
	andi r7, r7, 1
	add.s r7, r17, r7
	add.s r7, r7, r1
	and r22, r7, r2
.LBB0_49:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 47 19                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:47:19
	setlt.u r7, r9, r19
	bneq r7, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r1
	and r25, r7, r2
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 58 20 is_stmt 1               # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:58:20
	sub.f.rn r7, r22, r16
	.loc	1 40 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:40:38
	add.s r17, r27, r10
	.loc	1 41 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:41:38
	add.s r10, r28, r10
	.loc	1 40 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:40:38
	load.hu r18, 0(r17)
	load.hu r19, 2(r17)
	bfloat2float.rn r18, r18
	.loc	1 69 20                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:69:20
	mul.f.rn r7, r11, r7
	.loc	1 71 20                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:71:20
	mul.f.rn r7, r7, r18
	.loc	1 41 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:41:38
	load.hu r18, 0(r10)
	bfloat2float.rn r18, r18
	.loc	1 73 20                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:73:20
	add.f.rn r22, r7, r18
	.loc	1 41 38                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:41:38
	load.hu r7, 2(r10)
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	and r18, r22, r8
	setlt.u r20, r12, r18
	bneq r20, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48 is_stmt 0                # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:48
	addli r17, r22, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	or r17, r22, r13
.LBB0_54:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 0                           # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:0
	sub.f.rn r20, r25, r16
	bfloat2float.rn r19, r19
	bfloat2float.rn r7, r7
	mul.f.rn r20, r11, r20
	mul.f.rn r19, r20, r19
	add.f.rn r25, r19, r7
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	and r19, r25, r8
	setlt.u r7, r12, r19
	bneq r7, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:48
	addli r7, r25, 0
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	setlt.u r18, r9, r18
	beq r18, zero, .LBB0_57
	j .LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_42 Depth=2
	or r7, r25, r13
	setlt.u r18, r9, r18
	bneq r18, zero, .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:48
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r17, r17, r2
.LBB0_58:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 75 48                         # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:48
	setlt.u r18, r9, r19
	bneq r18, zero, .LBB0_41
# %bb.59:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48                          # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:0:48
	srli r7, r25, 16
	andi r7, r7, 1
	add.s r7, r25, r7
	add.s r7, r7, r1
	and r7, r7, r2
	j .LBB0_41
.LBB0_60:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py:75:4
	addli sp, sp, 344
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
	.long	408                             # 0x198
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
.asciz	"cpsoccpw6hrkcqwngps3gldag5u46mozegi7ykfohzpfmnlpktas.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ps" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
