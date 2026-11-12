	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/xs" "cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py"
	.loc	1 22 0                          # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -240
	addli r30, sp, 176
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  36(r30)
	loadli.w r5,  32(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r3,  40(r30)
	ori r4, r4, 4095
	add.s r8, r7, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r8, -132(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r3, r6, r3
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r3, -136(r30)                 # 4-byte Folded Spill
	ble.s r3, r5, .LBB0_15
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r18, zero, 2
	load.d r[10:11], 8(r30)
	andi r22, r1, 63
	addli r24, r30, -128
	addli r26, r30, -64
	lui r27, 243712
	div.s r3, r1, r8
	load.d r[8:9], 16(r30)
	slli r12, r3, 6
	storeli.w r3, -140(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -132(r30)                 # 4-byte Folded Reload
	sub.s r12, r1, r12
	lui r1, 239665
	addli r3, r3, 1040
	slli r14, r12, 2
	lui r12, 1048575
	ori r1, r1, 623
	storeli.w r3, -144(r30)                 # 4-byte Folded Spill
	load_param_i r3, 1
	sext_int2long r[15:16], r14
	ori r12, r12, 3840
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	addli r1, zero, 4
	storeli.w r3, -148(r30)                 # 4-byte Folded Spill
	ori r3, r14, 1
	sll.d r[15:16], r[15:16], r18
	and r7, r7, r12
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	ori r3, r14, 2
	add.ul r[10:11], r[10:11], r[15:16]
	add.s r21, r7, r2
	storeli.w r3, -156(r30)                 # 4-byte Folded Spill
	ori r3, r14, 3
	store.d r[10:11], -168(r30)             # 8-byte Folded Spill
	addli r23, r21, 1040
	addli r10, zero, 32
	storeli.w r3, -160(r30)                 # 4-byte Folded Spill
.LBB0_2:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	loadli.w r2,  40(r30)
	loadli.w r3,  36(r30)
.Ltmp0:
	.loc	1 38 46 prologue_end            # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	storeli.w zero, -128(r30)
	storeli.w zero, -124(r30)
	lui r7, 983040
	.loc	1 39 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	lui r13, 983040
	div.s r2, r5, r2
	div.s r2, r2, r3
	.loc	1 29 23                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:29:23
	loadli.w r3,  -140(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	mfence { lm }
	storeli.w zero, -120(r30)
	storeli.w zero, -116(r30)
	mfence { lm }
	.loc	1 38 30 is_stmt 0               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:30
	load.d r[16:17], 0(r30)
	.loc	1 29 23 is_stmt 1               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:29:23
	add.s r15, r2, r3
	addli r3, zero, 16
	.loc	1 38 41                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:41
	slli r2, r15, 8
	.loc	1 38 46 is_stmt 0               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	or r7, r3, r7
	.loc	1 39 37 is_stmt 1               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	or r13, r3, r13
	.loc	1 38 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:37
	add.s r11, r2, r14
	.loc	1 38 30 is_stmt 0               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:30
	sext_int2long r[11:12], r11
	sll.d r[11:12], r[11:12], r18
	add.ul r[16:17], r[16:17], r[11:12]
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	l_gm2lm r7, r24, 0(r[16:17])
	.loc	1 39 37 is_stmt 1               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	load.d r[6:7], -168(r30)                # 8-byte Folded Reload
	l_gm2lm r13, r26, 0(r[6:7])
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	mfence { lm }
	loadli.w r7,  -128(r30)
	.loc	1 39 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	loadli.w r16,  -64(r30)
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	loadli.w r13,  -124(r30)
	.loc	1 39 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	loadli.w r17,  -60(r30)
	.loc	1 40 18                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:40:18
	add.f.rn r16, r7, r16
	add.f.rn r7, r13, r17
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	blt.s r15, r10, .LBB0_4
# %bb.3:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r13, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	loadli.w r13,  -120(r30)
	loadli.w r19,  -56(r30)
	loadli.w r17,  -116(r30)
	loadli.w r20,  -52(r30)
	add.f.rn r13, r13, r19
	add.f.rn r17, r17, r20
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r13, r16, r13
	add.f.rn r17, r7, r17
	add.f.rn r13, r13, r17
.LBB0_5:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -132(r30)                 # 4-byte Folded Reload
	stores.w r13, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	loads.w r13, 0(r21)
	loads.w r25, 4(r21)
	loads.w r17, 8(r21)
	loads.w r19, 12(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r13, r13, r25
	add.f.rn r13, r13, r17
	loads.w r17, 16(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 20(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 24(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 28(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 32(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 36(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 40(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 44(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 48(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 52(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 56(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 60(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 64(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 68(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 72(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 76(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 80(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 84(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 88(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 92(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 96(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 100(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 104(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 108(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 112(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 116(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 120(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 124(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 128(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 132(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 136(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 140(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 144(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 148(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 152(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 156(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 160(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 164(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 168(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 172(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 176(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 180(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 184(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 188(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 192(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 196(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 200(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 204(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 208(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 212(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 216(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 220(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 224(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 228(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 232(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 236(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 240(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 244(r21)
	add.f.rn r13, r13, r17
	loads.w r17, 248(r21)
	add.f.rn r13, r13, r19
	loads.w r19, 252(r21)
	add.f.rn r13, r13, r17
	add.f.rn r13, r13, r19
	stores.w r13, 0(r21)
.Ltmp2:
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r13, 0(r21)
	.loc	1 48 20 is_stmt 1               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:48:20
	mul.f.rn r13, r13, r27
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r15, r10, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r7, zero, 0
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	loadli.w r15,  -120(r30)
	loadli.w r19,  -56(r30)
	loadli.w r17,  -116(r30)
	loadli.w r20,  -52(r30)
	sub.f.rn r16, r16, r13
	sub.f.rn r7, r7, r13
	add.f.rn r15, r15, r19
	add.f.rn r17, r17, r20
	mul.f.rn r16, r16, r16
	mul.f.rn r7, r7, r7
	sub.f.rn r15, r15, r13
	sub.f.rn r17, r17, r13
	mul.f.rn r15, r15, r15
	mul.f.rn r17, r17, r17
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r15, r16, r15
	add.f.rn r7, r7, r17
	add.f.rn r7, r15, r7
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -144(r30)                 # 4-byte Folded Reload
	stores.w r7, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r22, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r7, 0(r23)
	loads.w r16, 4(r23)
	loads.w r15, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r7, r16
	loads.w r16, 12(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 16(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 20(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 24(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 28(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 32(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 36(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 40(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 44(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 48(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 52(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 56(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 60(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 64(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 68(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 72(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 76(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 80(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 84(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 88(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 92(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 96(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 100(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 104(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 108(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 112(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 116(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 120(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 124(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 128(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 132(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 136(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 140(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 144(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 148(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 152(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 156(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 160(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 164(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 168(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 172(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 176(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 180(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 184(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 188(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 192(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 196(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 200(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 204(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 208(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 212(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 216(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 220(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 224(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 228(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 232(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 236(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 240(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 244(r23)
	add.f.rn r7, r7, r15
	loads.w r15, 248(r23)
	add.f.rn r7, r7, r16
	loads.w r16, 252(r23)
	add.f.rn r7, r7, r15
	add.f.rn r7, r7, r16
	stores.w r7, 0(r23)
.Ltmp4:
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r7, 0(r23)
	.loc	1 58 20 is_stmt 1               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:58:20
	loadli.w r3,  -172(r30)                 # 4-byte Folded Reload
	addli r15, r26, 4
	addli r19, zero, 1
	addli r20, zero, 0
	.loc	1 56 21                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:56:21
	mul.f.rn r7, r7, r27
	.loc	1 58 20                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:58:20
	add.f.rn r7, r7, r3
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	add.s r25, r3, r2
	loadli.w r3,  -156(r30)                 # 4-byte Folded Reload
	.loc	1 59 28                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:59:28
	sqrt.f.rn r7, r7
	add.s r17, r3, r2
	lui r3, 260096
	div.f.rn r27, r3, r7
	loadli.w r3,  -160(r30)                 # 4-byte Folded Reload
	addli r7, r26, 12
	add.s r16, r3, r2
	addli r2, r26, 8
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	slli r20, r20, 2
	add.s r28, r24, r20
	.loc	1 39 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	add.s r20, r26, r20
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	loadli.w r10,  0(r28)
	.loc	1 39 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	loadli.w r6,  0(r20)
	.loc	1 38 46                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:38:46
	loadli.w r28,  4(r28)
	.loc	1 39 37                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:39:37
	loadli.w r3,  4(r20)
	.loc	1 40 18                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:40:18
	add.f.rn r6, r10, r6
	add.f.rn r3, r28, r3
	.loc	1 61 48                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:48
	andi r10, r19, 1
	addli r19, zero, 0
	.loc	1 49 19                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:49:19
	sub.f.rn r6, r6, r13
	sub.f.rn r3, r3, r13
	.loc	1 60 20                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:60:20
	mul.f.rn r6, r27, r6
	mul.f.rn r3, r27, r3
	.loc	1 61 48                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:48
	storeli.w r6, 0(r20)
	storeli.w r3, 4(r20)
	addli r20, zero, 2
	mfence { lm }
	bneq r10, zero, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	lui r3, 983040
	.loc	1 61 25 is_stmt 0               # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:25
	sext_int2long r[19:20], r25
	add.ul r[10:11], r[8:9], r[11:12]
	.loc	1 61 48                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:48
	lui r6, 983040
	lui r27, 243712
	or r3, r1, r3
	.loc	1 61 25                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:25
	sll.d r[12:13], r[19:20], r18
	sext_int2long r[19:20], r17
	sext_int2long r[16:17], r16
	.loc	1 61 48                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:48
	or r6, r1, r6
	s_lm2gm r3, r26, 0(r[10:11])
	lui r3, 983040
	.loc	1 61 25                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:25
	add.ul r[12:13], r[8:9], r[12:13]
	sll.d r[19:20], r[19:20], r18
	sll.d r[10:11], r[16:17], r18
	.loc	1 61 48                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:48
	or r3, r1, r3
	.loc	1 61 25                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:25
	add.ul r[19:20], r[8:9], r[19:20]
	add.ul r[10:11], r[8:9], r[10:11]
	.loc	1 61 48                         # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:48
	s_lm2gm r3, r15, 0(r[12:13])
	lui r3, 983040
	s_lm2gm r6, r7, 0(r[10:11])
	addli r10, zero, 32
	or r3, r1, r3
	s_lm2gm r3, r2, 0(r[19:20])
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r5, r5, r2
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	blt.s r5, r2, .LBB0_2
.LBB0_15:                               # %._crit_edge
	.loc	1 61 4 epilogue_begin           # cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py:61:4
	addli sp, sp, 176
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
	.long	240                             # 0xf0
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
	.byte	45                              # DW_AT_call_line
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
	.byte	53                              # DW_AT_call_line
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
.asciz	"cxshf7q6dj2sx3v3mtmhldkt3db7bs7c4axvhvgknvbia7mnvfhd.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/xs" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
