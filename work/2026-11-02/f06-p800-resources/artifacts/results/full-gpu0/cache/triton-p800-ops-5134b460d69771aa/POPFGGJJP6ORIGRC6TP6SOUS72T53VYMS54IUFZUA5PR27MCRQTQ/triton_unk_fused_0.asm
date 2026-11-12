	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/wc" "cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py"
	.loc	1 22 0                          # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -384
	addli r30, sp, 320
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
	addli r8, zero, 64
	addli r17, zero, 2
	load.d r[10:11], 24(r30)
	load.d r[14:15], 16(r30)
	load.d r[18:19], 8(r30)
	andi r26, r1, 63
	addli r28, r30, -256
	addli r16, zero, 4
	div.s r3, r1, r8
	load.d r[8:9], 32(r30)
	slli r12, r3, 6
	storeli.w r3, -268(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -260(r30)                 # 4-byte Folded Reload
	sub.s r12, r1, r12
	addli r1, r30, -128
	addli r3, r3, 1040
	slli r13, r12, 2
	lui r12, 1048575
	storeli.w r3, -272(r30)                 # 4-byte Folded Spill
	load_param_i r3, 1
	sext_int2long r[20:21], r13
	ori r12, r12, 3840
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
	ori r3, r13, 1
	sll.d r[20:21], r[20:21], r17
	and r7, r7, r12
	storeli.w r3, -280(r30)                 # 4-byte Folded Spill
	ori r3, r13, 2
	add.s r25, r7, r2
	add.ul r[10:11], r[10:11], r[20:21]
	lui r7, 239665
	add.ul r[18:19], r[18:19], r[20:21]
	add.ul r[14:15], r[14:15], r[20:21]
	addli r2, r30, -64
	storeli.w r3, -284(r30)                 # 4-byte Folded Spill
	ori r3, r13, 3
	store.d r[10:11], -312(r30)             # 8-byte Folded Spill
	addli r27, r25, 1040
	addli r10, zero, 16
	addli r11, r30, -192
	store.d r[18:19], -296(r30)             # 8-byte Folded Spill
	store.d r[14:15], -304(r30)             # 8-byte Folded Spill
	storeli.w r3, -288(r30)                 # 4-byte Folded Spill
	ori r3, r7, 623
	storeli.w r3, -316(r30)                 # 4-byte Folded Spill
.LBB0_2:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	loadli.w r3,  56(r30)
.Ltmp0:
	.loc	1 38 46 prologue_end            # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	storeli.w zero, -256(r30)
	storeli.w zero, -252(r30)
	lui r12, 983040
	or r12, r10, r12
	div.s r7, r5, r3
	loadli.w r3,  52(r30)
	div.s r7, r7, r3
	.loc	1 29 23                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:29:23
	loadli.w r3,  -268(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	mfence { lm }
	.loc	1 38 30 is_stmt 0               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:30
	load.d r[14:15], 0(r30)
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	storeli.w zero, -248(r30)
	storeli.w zero, -244(r30)
	mfence { lm }
	.loc	1 29 23 is_stmt 1               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:29:23
	add.s r21, r7, r3
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	lui r7, 983040
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	addli r3, zero, 32
.Ltmp2:
	.loc	1 38 41                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:41
	slli r20, r21, 8
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	or r7, r10, r7
	.loc	1 38 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:37
	add.s r18, r20, r13
	.loc	1 38 30 is_stmt 0               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:30
	sext_int2long r[18:19], r18
	sll.d r[18:19], r[18:19], r17
	add.ul r[22:23], r[14:15], r[18:19]
	.loc	1 39 37 is_stmt 1               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	load.d r[14:15], -296(r30)              # 8-byte Folded Reload
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	l_gm2lm r12, r28, 0(r[22:23])
	.loc	1 40 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:40:38
	lui r12, 983040
	.loc	1 41 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:41:38
	lui r22, 983040
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	l_gm2lm r7, r11, 0(r[14:15])
	.loc	1 40 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:40:38
	load.d r[6:7], -304(r30)                # 8-byte Folded Reload
	or r12, r10, r12
	.loc	1 41 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:41:38
	or r22, r10, r22
	.loc	1 40 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:40:38
	l_gm2lm r12, r1, 0(r[6:7])
	.loc	1 41 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:41:38
	load.d r[6:7], -312(r30)                # 8-byte Folded Reload
	l_gm2lm r22, r2, 0(r[6:7])
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	mfence { lm }
	loadli.w r7,  -256(r30)
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	loadli.w r22,  -192(r30)
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	loadli.w r12,  -252(r30)
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	loadli.w r23,  -188(r30)
	.loc	1 42 18                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:42:18
	add.f.rn r22, r7, r22
	add.f.rn r23, r12, r23
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r21, r3, .LBB0_4
# %bb.3:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r7, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	loadli.w r7,  -248(r30)
	loadli.w r24,  -184(r30)
	loadli.w r12,  -244(r30)
	loadli.w r14,  -180(r30)
	add.f.rn r7, r7, r24
	add.f.rn r12, r12, r14
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r22, r7
	add.f.rn r12, r23, r12
	add.f.rn r7, r7, r12
.LBB0_5:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -260(r30)                 # 4-byte Folded Reload
	stores.w r7, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r26, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	loads.w r7, 0(r25)
	loads.w r12, 4(r25)
	loads.w r24, 8(r25)
	loads.w r14, 16(r25)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r7, r12
	loads.w r12, 12(r25)
	add.f.rn r7, r7, r24
	add.f.rn r7, r7, r12
	loads.w r12, 20(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 24(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 28(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 32(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 36(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 40(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 44(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 48(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 52(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 56(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 60(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 64(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 68(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 72(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 76(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 80(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 84(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 88(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 92(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 96(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 100(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 104(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 108(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 112(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 116(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 120(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 124(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 128(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 132(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 136(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 140(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 144(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 148(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 152(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 156(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 160(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 164(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 168(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 172(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 176(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 180(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 184(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 188(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 192(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 196(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 200(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 204(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 208(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 212(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 216(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 220(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 224(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 228(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 232(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 236(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 240(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 244(r25)
	add.f.rn r7, r7, r14
	loads.w r14, 248(r25)
	add.f.rn r7, r7, r12
	loads.w r12, 252(r25)
	add.f.rn r7, r7, r14
	add.f.rn r7, r7, r12
	stores.w r7, 0(r25)
.Ltmp4:
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r7, 0(r25)
	.loc	1 50 20 is_stmt 1               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:50:20
	lui r3, 243712
	mul.f.rn r7, r7, r3
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	addli r3, zero, 32
	blt.s r21, r3, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r12, zero, 0
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	loadli.w r12,  -248(r30)
	loadli.w r21,  -184(r30)
	loadli.w r14,  -244(r30)
	loadli.w r24,  -180(r30)
	add.f.rn r12, r12, r21
	add.f.rn r14, r14, r24
	sub.f.rn r21, r22, r7
	sub.f.rn r22, r23, r7
	sub.f.rn r12, r12, r7
	sub.f.rn r14, r14, r7
	mul.f.rn r21, r21, r21
	mul.f.rn r22, r22, r22
	mul.f.rn r12, r12, r12
	mul.f.rn r14, r14, r14
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r21, r12
	add.f.rn r14, r22, r14
	add.f.rn r12, r12, r14
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r3,  -272(r30)                 # 4-byte Folded Reload
	stores.w r12, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r26, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r21, 0(r27)
	loads.w r12, 4(r27)
	loads.w r22, 8(r27)
	loads.w r14, 12(r27)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r21, r12
	loads.w r21, 16(r27)
	add.f.rn r12, r12, r22
	add.f.rn r12, r12, r14
	loads.w r14, 20(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 24(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 28(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 32(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 36(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 40(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 44(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 48(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 52(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 56(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 60(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 64(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 68(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 72(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 76(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 80(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 84(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 88(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 92(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 96(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 100(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 104(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 108(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 112(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 116(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 120(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 124(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 128(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 132(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 136(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 140(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 144(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 148(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 152(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 156(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 160(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 164(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 168(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 172(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 176(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 180(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 184(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 188(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 192(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 196(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 200(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 204(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 208(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 212(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 216(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 220(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 224(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 228(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 232(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 236(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 240(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 244(r27)
	add.f.rn r12, r12, r21
	loads.w r21, 248(r27)
	add.f.rn r12, r12, r14
	loads.w r14, 252(r27)
	add.f.rn r12, r12, r21
	add.f.rn r12, r12, r14
	stores.w r12, 0(r27)
.Ltmp6:
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r12, 0(r27)
	.loc	1 58 21 is_stmt 1               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:58:21
	lui r3, 243712
	addli r23, zero, 1
	addli r24, zero, 0
	mul.f.rn r12, r12, r3
	.loc	1 60 20                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:60:20
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	add.f.rn r12, r12, r3
	.loc	1 61 28                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:61:28
	lui r3, 260096
	sqrt.f.rn r12, r12
	div.f.rn r22, r3, r12
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	add.s r21, r3, r20
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	add.s r12, r3, r20
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	add.s r20, r3, r20
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	slli r14, r24, 2
	add.s r24, r28, r14
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	add.s r15, r11, r14
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	loadli.w r6,  0(r24)
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	loadli.w r3,  0(r15)
	.loc	1 38 46                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:38:46
	loadli.w r24,  4(r24)
	.loc	1 39 37                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:39:37
	loadli.w r15,  4(r15)
	.loc	1 42 18                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:42:18
	add.f.rn r3, r6, r3
	add.f.rn r6, r24, r15
	.loc	1 40 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:40:38
	add.s r15, r1, r14
	.loc	1 41 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:41:38
	add.s r14, r2, r14
	.loc	1 40 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:40:38
	loadli.w r24,  0(r15)
	loadli.w r15,  4(r15)
	.loc	1 51 19                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:51:19
	sub.f.rn r3, r3, r7
	sub.f.rn r6, r6, r7
	.loc	1 62 20                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:62:20
	mul.f.rn r3, r22, r3
	mul.f.rn r6, r22, r6
	.loc	1 63 20                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:63:20
	mul.f.rn r3, r24, r3
	mul.f.rn r6, r15, r6
	.loc	1 41 38                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:41:38
	loadli.w r15,  0(r14)
	loadli.w r24,  4(r14)
	.loc	1 64 20                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:64:20
	add.f.rn r3, r3, r15
	add.f.rn r6, r6, r24
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	andi r15, r23, 1
	addli r24, zero, 2
	addli r23, zero, 0
	storeli.w r3, 0(r14)
	storeli.w r6, 4(r14)
	mfence { lm }
	bneq r15, zero, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 65 25 is_stmt 0               # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	sext_int2long r[6:7], r21
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	lui r3, 983040
	.loc	1 65 25                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	sext_int2long r[14:15], r12
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	addli r12, r2, 4
	.loc	1 65 25                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	add.ul r[18:19], r[8:9], r[18:19]
	sll.d r[6:7], r[6:7], r17
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	or r3, r16, r3
	.loc	1 65 25                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	sll.d r[14:15], r[14:15], r17
	add.ul r[6:7], r[8:9], r[6:7]
	add.ul r[14:15], r[8:9], r[14:15]
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	s_lm2gm r3, r12, 0(r[6:7])
	lui r12, 983040
	.loc	1 65 25                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	sext_int2long r[6:7], r20
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	addli r20, r2, 8
	lui r3, 983040
	or r12, r16, r12
	.loc	1 65 25                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	sll.d r[6:7], r[6:7], r17
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	or r3, r16, r3
	s_lm2gm r12, r20, 0(r[14:15])
	lui r12, 983040
	.loc	1 65 25                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:25
	add.ul r[6:7], r[8:9], r[6:7]
	.loc	1 65 48                         # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:48
	addli r14, r2, 12
	s_lm2gm r3, r2, 0(r[18:19])
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	or r12, r16, r12
	add.s r5, r5, r3
	s_lm2gm r12, r14, 0(r[6:7])
	mfence { lm }
	loadli.w r3,  -264(r30)                 # 4-byte Folded Reload
	blt.s r5, r3, .LBB0_2
.LBB0_15:                               # %._crit_edge
	.loc	1 65 4 epilogue_begin           # cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py:65:4
	addli sp, sp, 320
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
	.long	384                             # 0x180
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	4                               # Abbrev [4] 0x39:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	47                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x53:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	55                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x63:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cwcdpwnmg6ivhierhtw4deqfxhibn3bk4xti55qjxw446bnmrisp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/wc" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
