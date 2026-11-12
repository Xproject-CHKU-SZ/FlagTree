	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/bg" "cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py"
	.loc	1 22 0                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -272
	addli r30, sp, 208
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  36(r30)
	loadli.w r5,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  40(r30)
	ori r16, r4, 4095
	add.s r8, r3, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	storeli.w r8, -152(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r6, r7
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	ble.s r4, r5, .LBB0_60
# %bb.1:                                # %.lr.ph
	addli r6, zero, 64
	andi r17, r1, 63
	addli r12, zero, 1
	addli r24, r30, -128
	addli r26, r30, -64
	lui r28, 1048560
	addli r18, zero, 32
	lui r22, 243712
	storeli.w r16, -160(r30)                # 4-byte Folded Spill
	div.s r4, r1, r6
	load.d r[6:7], 8(r30)
	storeli.w r17, -204(r30)                # 4-byte Folded Spill
	slli r8, r4, 6
	storeli.w r4, -164(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	sub.s r8, r1, r8
	lui r1, 7
	addli r4, r4, 1040
	ori r27, r1, 4095
	lui r1, 524287
	storeli.w r4, -168(r30)                 # 4-byte Folded Spill
	load_param_i r4, 1
	storeli.w r4, -172(r30)                 # 4-byte Folded Spill
	slli r4, r8, 2
	lui r8, 1048575
	ori r9, r4, 1
	ori r8, r8, 3840
	storeli.w r4, -176(r30)                 # 4-byte Folded Spill
	storeli.w r9, -180(r30)                 # 4-byte Folded Spill
	ori r9, r4, 2
	and r3, r3, r8
	storeli.w r9, -184(r30)                 # 4-byte Folded Spill
	ori r9, r4, 3
	add.s r21, r3, r2
	lui r3, 239665
	lui r2, 522239
	storeli.w r9, -188(r30)                 # 4-byte Folded Spill
	sext_int2long r[9:10], r4
	ori r11, r2, 4095
	ori r3, r3, 623
	addli r23, r21, 1040
	lui r2, 1024
	sll.d r[9:10], r[9:10], r12
	storeli.w r3, -208(r30)                 # 4-byte Folded Spill
	add.ul r[6:7], r[6:7], r[9:10]
	ori r10, r1, 4095
	lui r1, 522240
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 69 25 prologue_end            # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:25
	sext_int2long r[8:9], r6
	load.d r[6:7], 16(r30)
	load.d r[3:4], -144(r30)                # 8-byte Folded Reload
	addli r18, zero, 2
	addli r12, zero, 1
	sext_int2long r[14:15], r15
	lui r22, 243712
	sll.d r[8:9], r[8:9], r12
	sll.d r[14:15], r[14:15], r12
	add.ul r[16:17], r[6:7], r[3:4]
	.loc	1 69 48 is_stmt 0               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	lui r3, 983040
	.loc	1 69 25                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:25
	sext_int2long r[4:5], r20
	add.ul r[8:9], r[6:7], r[8:9]
	add.ul r[14:15], r[6:7], r[14:15]
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	or r3, r18, r3
	.loc	1 69 25                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:25
	sll.d r[4:5], r[4:5], r12
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	s_lm2gm r3, r26, 0(r[16:17])
	lui r3, 983040
	.loc	1 69 25                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:25
	add.ul r[4:5], r[6:7], r[4:5]
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	lui r6, 983040
	loadli.w r7,  -148(r30)                 # 4-byte Folded Reload
	or r3, r18, r3
	or r6, r18, r6
	s_lm2gm r3, r19, 0(r[8:9])
	lui r3, 983040
	s_lm2gm r6, r13, 0(r[4:5])
	loadli.w r5,  -132(r30)                 # 4-byte Folded Reload
	or r3, r18, r3
	addli r18, zero, 32
	s_lm2gm r3, r7, 0(r[14:15])
	loadli.w r3,  -172(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r16,  -160(r30)                # 4-byte Folded Reload
	loadli.w r17,  -204(r30)                # 4-byte Folded Reload
	add.s r5, r5, r3
	loadli.w r3,  -156(r30)                 # 4-byte Folded Reload
	blt.s r5, r3, .LBB0_3
	j .LBB0_60
.LBB0_3:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
	.loc	1 0 48                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:48
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	.loc	1 38 46 is_stmt 1               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	store.h zero, -128(r30)
	store.h zero, -126(r30)
	lui r6, 983040
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	lui r7, 983040
	div.s r3, r5, r3
	div.s r3, r3, r4
	.loc	1 29 23                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:29:23
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	mfence { lm }
	store.h zero, -124(r30)
	store.h zero, -122(r30)
	.loc	1 29 23                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:29:23
	add.s r20, r3, r4
	.loc	1 38 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:37
	loadli.w r3,  -176(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	mfence { lm }
	addli r4, zero, 8
	.loc	1 38 41                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:41
	slli r19, r20, 8
	.loc	1 38 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:37
	add.s r3, r19, r3
	.loc	1 38 30                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:30
	sext_int2long r[8:9], r3
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	or r3, r4, r6
	.loc	1 39 37 is_stmt 1               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	or r6, r4, r7
	.loc	1 38 30                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:30
	sll.d r[12:13], r[8:9], r12
	load.d r[8:9], 0(r30)
	store.d r[12:13], -144(r30)             # 8-byte Folded Spill
	add.ul r[8:9], r[8:9], r[12:13]
	.loc	1 38 46 is_stmt 0               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	l_gm2lm r3, r24, 0(r[8:9])
	.loc	1 39 37 is_stmt 1               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	load.d r[3:4], -200(r30)                # 8-byte Folded Reload
	l_gm2lm r6, r26, 0(r[3:4])
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	mfence { lm }
	load.hu r3, -128(r30)
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	load.hu r6, -64(r30)
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	bfloat2float.rn r3, r3
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	bfloat2float.rn r6, r6
	.loc	1 44 18                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:44:18
	add.f.rn r3, r3, r6
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	and r8, r3, r10
	setlt.u r6, r1, r8
	bneq r6, zero, .LBB0_5
# %bb.4:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	addli r7, r3, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	or r7, r3, r2
.LBB0_6:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:0
	load.hu r6, -126(r30)
	load.hu r9, -62(r30)
	bfloat2float.rn r6, r6
	bfloat2float.rn r9, r9
	add.f.rn r6, r6, r9
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	and r9, r6, r10
	setlt.u r12, r1, r9
	bneq r12, zero, .LBB0_8
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	addli r13, r6, 0
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	setlt.u r8, r11, r8
	beq r8, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	or r13, r6, r2
	setlt.u r8, r11, r8
	bneq r8, zero, .LBB0_10
.LBB0_9:                                # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	srli r7, r3, 16
	andi r7, r7, 1
	add.s r3, r3, r7
	add.s r3, r3, r27
	and r7, r3, r28
.LBB0_10:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	setlt.u r3, r11, r9
	bneq r3, zero, .LBB0_12
# %bb.11:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	srli r3, r6, 16
	andi r3, r3, 1
	add.s r3, r6, r3
	add.s r3, r3, r27
	and r13, r3, r28
.LBB0_12:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	load.hu r3, -124(r30)
	load.hu r6, -60(r30)
	load.hu r8, -122(r30)
	load.hu r9, -58(r30)
	bfloat2float.rn r3, r3
	bfloat2float.rn r6, r6
	add.f.rn r6, r3, r6
	and r12, r6, r10
	setlt.u r3, r1, r12
	bneq r3, zero, .LBB0_14
# %bb.13:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r3, r6, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	or r3, r6, r2
.LBB0_15:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	bfloat2float.rn r8, r8
	bfloat2float.rn r9, r9
	add.f.rn r8, r8, r9
	and r14, r8, r10
	setlt.u r9, r1, r14
	bneq r9, zero, .LBB0_17
# %bb.16:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r9, r8, 0
	setlt.u r12, r11, r12
	beq r12, zero, .LBB0_18
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	or r9, r8, r2
	setlt.u r12, r11, r12
	bneq r12, zero, .LBB0_19
.LBB0_18:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	srli r3, r6, 16
	andi r3, r3, 1
	add.s r3, r6, r3
	add.s r3, r3, r27
	and r3, r3, r28
.LBB0_19:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setlt.u r6, r11, r14
	beq r6, zero, .LBB0_22
# %bb.20:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	blt.s r20, r18, .LBB0_23
.LBB0_21:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r3, zero, 0
	j .LBB0_24
.LBB0_22:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r27
	and r9, r6, r28
	.loc	2 263 15                        # standard.py:263:15
	blt.s r20, r18, .LBB0_23
	j .LBB0_21
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r3, r7, r3
	add.f.rn r6, r13, r9
	add.f.rn r3, r3, r6
.LBB0_24:                               # %.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	bneq r17, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r21)
	loads.w r8, 4(r21)
	loads.w r6, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r8
	loads.w r8, 12(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 16(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 20(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 24(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 28(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 32(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 36(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 40(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 44(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 48(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 52(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 56(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 60(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 64(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 68(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 72(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 76(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 80(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 84(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 88(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 92(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 96(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 100(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 104(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 108(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 112(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 116(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 120(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 124(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 128(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 132(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 136(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 140(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 144(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 148(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 152(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 156(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 160(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 164(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 168(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 172(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 176(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 180(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 184(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 188(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 192(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 196(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 200(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 204(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 208(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 212(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 216(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 220(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 224(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 228(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 232(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 236(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 240(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 244(r21)
	add.f.rn r3, r3, r6
	loads.w r6, 248(r21)
	add.f.rn r3, r3, r8
	loads.w r8, 252(r21)
	add.f.rn r3, r3, r6
	add.f.rn r3, r3, r8
	stores.w r3, 0(r21)
.Ltmp2:
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	load.hu r3, -124(r30)
	load.hu r6, -60(r30)
	load.hu r9, -122(r30)
	load.hu r12, -58(r30)
	bfloat2float.rn r3, r3
	bfloat2float.rn r6, r6
	add.f.rn r8, r3, r6
	loads.w r3, 0(r21)
	and r14, r8, r10
	setlt.u r6, r1, r14
	bneq r6, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	addli r6, r8, 0
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	or r6, r8, r2
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	bfloat2float.rn r9, r9
	bfloat2float.rn r12, r12
	add.f.rn r12, r9, r12
	and r15, r12, r10
	setlt.u r9, r1, r15
	bneq r9, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	addli r9, r12, 0
	setlt.u r14, r11, r14
	beq r14, zero, .LBB0_32
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	or r9, r12, r2
	setlt.u r14, r11, r14
	bneq r14, zero, .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r27
	and r6, r6, r28
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r8, r11, r15
	bneq r8, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=1
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r9, r8, r28
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r12, r3, r22
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r20, r18, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	addli r3, zero, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	sub.f.rn r3, r7, r12
	sub.f.rn r7, r13, r12
	sub.f.rn r6, r6, r12
	sub.f.rn r8, r9, r12
	mul.f.rn r3, r3, r3
	mul.f.rn r6, r6, r6
	mul.f.rn r7, r7, r7
	mul.f.rn r8, r8, r8
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r6
	add.f.rn r6, r7, r8
	add.f.rn r3, r3, r6
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	bneq r17, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r23)
	loads.w r7, 4(r23)
	loads.w r6, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r7
	loads.w r7, 12(r23)
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
	storeli.w r5, -132(r30)                 # 4-byte Folded Spill
	addli r13, r26, 6
	addli r8, zero, 0
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loads.w r3, 0(r23)
	.loc	1 65 20 is_stmt 1               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:65:20
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	1 63 21                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:63:21
	mul.f.rn r3, r3, r22
	.loc	1 65 20                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:65:20
	add.f.rn r3, r3, r4
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	add.s r6, r4, r19
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	1 66 28                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:66:28
	sqrt.f.rn r3, r3
	add.s r15, r4, r19
	lui r4, 260096
	div.f.rn r14, r4, r3
	loadli.w r3,  -188(r30)                 # 4-byte Folded Reload
	add.s r20, r3, r19
	addli r3, r26, 4
	addli r19, r26, 2
	storeli.w r3, -148(r30)                 # 4-byte Folded Spill
	addli r3, zero, 1
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	float2bfloat.rn r9, r9
	float2bfloat.rn r16, r16
	store.h r9, 0(r8)
	store.h r16, 2(r8)
	andi r9, r3, 1
	addli r8, zero, 2
	addli r3, zero, 0
	mfence { lm }
	beq r9, zero, .LBB0_2
.LBB0_42:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	slli r8, r8, 1
	add.s r17, r24, r8
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	add.s r8, r26, r8
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	load.hu r9, 0(r17)
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	load.hu r16, 0(r8)
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	load.hu r17, 2(r17)
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	load.hu r18, 2(r8)
	.loc	1 38 46                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:38:46
	bfloat2float.rn r9, r9
	.loc	1 39 37                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:39:37
	bfloat2float.rn r16, r16
	.loc	1 44 18                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:44:18
	add.f.rn r9, r9, r16
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	and r16, r9, r10
	setlt.u r22, r1, r16
	bneq r22, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19 is_stmt 0                # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	addli r22, r9, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	or r22, r9, r2
.LBB0_45:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 0                           # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:0
	bfloat2float.rn r17, r17
	bfloat2float.rn r18, r18
	add.f.rn r18, r17, r18
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	and r17, r18, r10
	setlt.u r25, r1, r17
	bneq r25, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	addli r25, r18, 0
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	setlt.u r16, r11, r16
	beq r16, zero, .LBB0_48
	j .LBB0_49
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=2
	or r25, r18, r2
	setlt.u r16, r11, r16
	bneq r16, zero, .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	srli r16, r9, 16
	andi r16, r16, 1
	add.s r9, r9, r16
	add.s r9, r9, r27
	and r22, r9, r28
.LBB0_49:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 45 19                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:45:19
	setlt.u r9, r11, r17
	bneq r9, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:19
	srli r9, r18, 16
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r27
	and r25, r9, r28
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 56 20 is_stmt 1               # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:56:20
	sub.f.rn r9, r22, r12
	.loc	1 67 20                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:67:20
	mul.f.rn r22, r14, r9
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	and r17, r22, r10
	setlt.u r9, r1, r17
	bneq r9, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48 is_stmt 0                # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:48
	addli r9, r22, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	or r9, r22, r2
.LBB0_54:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 0                           # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:0
	sub.f.rn r16, r25, r12
	mul.f.rn r18, r14, r16
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	and r25, r18, r10
	setlt.u r16, r1, r25
	bneq r16, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:48
	addli r16, r18, 0
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	setlt.u r17, r11, r17
	beq r17, zero, .LBB0_57
	j .LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_42 Depth=2
	or r16, r18, r2
	setlt.u r17, r11, r17
	bneq r17, zero, .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:48
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r27
	and r9, r9, r28
.LBB0_58:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 69 48                         # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:48
	setlt.u r17, r11, r25
	bneq r17, zero, .LBB0_41
# %bb.59:                               #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 48                          # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:0:48
	srli r16, r18, 16
	andi r16, r16, 1
	add.s r16, r18, r16
	add.s r16, r16, r27
	and r16, r16, r28
	j .LBB0_41
.LBB0_60:                               # %._crit_edge
	.loc	1 69 4 epilogue_begin           # cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py:69:4
	addli sp, sp, 208
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
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	272                             # 0x110
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
	.byte	52                              # DW_AT_call_line
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
	.byte	60                              # DW_AT_call_line
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
.asciz	"cbgwsepndxch6j5b6tgqiq7c47vge5wfmyrysmy2hzab356jezqu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/bg" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
