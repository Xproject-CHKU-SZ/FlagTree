	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/inductor/kk" "ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py"
	.loc	1 22 0                          # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -256
	addli r30, sp, 192
	load_param_i r4, 0
	loadli.w r2,  32(r30)
	loadli.w r1,  28(r30)
	loadli.w r3,  36(r30)
	mul.s r1, r2, r1
	mul.s r1, r1, r3
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	ble.s r1, r4, .LBB0_9
# %bb.1:                                # %.lr.ph.preheader
	core_id r1
	load_param_i r2, 1
	lui r6, 261888
	addli r9, zero, 16
	addli r10, r30, -64
	addli r5, zero, 0
	slli r1, r1, 3
	storeli.w r2, -176(r30)                 # 4-byte Folded Spill
	lui r2, 256635
	store.d r[5:6], -144(r30)               # 8-byte Folded Spill
	storeli.w r1, -180(r30)                 # 4-byte Folded Spill
	lui r1, 258896
	ori r1, r1, 1267
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2565
	lui r2, 260959
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	lui r1, 785312
	ori r22, r2, 227
	lui r2, 256039
	ori r1, r1, 227
	ori r27, r2, 2310
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	lui r1, 260221
	ori r1, r1, 3106
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	lui r1, 780570
	ori r21, r1, 2446
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 50 25 prologue_end            # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:25
	load.d r[2:3], 16(r30)
	load.d r[4:5], -168(r30)                # 8-byte Folded Reload
	.loc	1 50 37 is_stmt 0               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:37
	lui r1, 983040
	or r1, r9, r1
	.loc	1 50 25                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:25
	add.ul r[2:3], r[2:3], r[4:5]
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	1 50 37                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:37
	s_lm2gm r1, r10, 0(r[2:3])
	loadli.w r1,  -176(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r4, r4, r1
	loadli.w r1,  -172(r30)                 # 4-byte Folded Reload
	blt.s r4, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	.loc	1 0 37                          # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:37
	loadli.w r1,  36(r30)
	loadli.w r2,  32(r30)
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	addli r7, zero, 1
	addli r28, zero, 0
	div.s r1, r4, r1
	div.s r1, r1, r2
	.loc	1 25 23 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:25:23
	loadli.w r2,  -180(r30)                 # 4-byte Folded Reload
	.loc	1 24 33                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:24:33
	slli r1, r1, 9
	.loc	1 25 23                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:25:23
	add.s r1, r1, r2
	.loc	1 28 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:28:19
	addli r2, zero, 2048
	mod.s r2, r1, r2
	.loc	1 29 30                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:30
	sext_int2long r[3:4], r1
	.loc	1 29 35 is_stmt 0               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	lui r1, 983040
	.loc	1 29 30                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:30
	sll.d r[11:12], r[3:4], r7
	.loc	1 29 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	or r1, r9, r1
	store.d r[11:12], -168(r30)             # 8-byte Folded Spill
	.loc	1 30 30 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:30
	sext_int2long r[5:6], r2
	.loc	1 30 35 is_stmt 0               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:35
	lui r2, 983040
	.loc	1 30 30                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:30
	sll.d r[3:4], r[5:6], r7
	.loc	1 29 30 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:30
	load.d r[5:6], 0(r30)
	.loc	1 30 30                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:30
	load.d r[7:8], 8(r30)
	.loc	1 30 35 is_stmt 0               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:35
	or r2, r9, r2
	.loc	1 30 30                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:30
	add.ul r[3:4], r[7:8], r[3:4]
	.loc	1 29 30 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:30
	add.ul r[5:6], r[5:6], r[11:12]
	.loc	1 29 35 is_stmt 0               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	addli r7, r30, -128
	l_gm2lm r1, r7, 0(r[5:6])
	.loc	1 30 35 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:35
	l_gm2lm r2, r10, 0(r[3:4])
	.loc	1 29 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	mfence { lm }
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 35 is_stmt 0                # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:35
	lui r5, 260096
	lui r3, 258048
	addli r9, zero, 16
	addli r10, r30, -64
	.loc	1 50 37 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:37
	addli r28, r28, 4
	.loc	1 0 0 is_stmt 0                 # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	mul.f.rn r2, r25, r3
	.loc	1 45 20 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:45:20
	add.f.rn r4, r20, r5
	.loc	1 0 0 is_stmt 0                 # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	mul.f.rn r3, r26, r3
	.loc	1 45 20                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:45:20
	add.f.rn r1, r1, r5
	.loc	1 46 20 is_stmt 1               # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:46:20
	mul.f.rn r2, r2, r4
	mul.f.rn r1, r3, r1
	.loc	1 48 21                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:48:21
	float2hfloat.rn r2, r2
	float2hfloat.rn r1, r1
	.loc	1 50 37                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:37
	store.h r2, 0(r19)
	store.h r1, 2(r19)
	mfence { lm }
	beq r28, r9, .LBB0_2
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 29 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	addli r1, r30, -128
	.loc	1 30 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:35
	add.s r19, r10, r28
	.loc	1 29 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	add.s r1, r1, r28
	.loc	1 30 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:30:35
	load.hu r3, 0(r19)
	load.hu r23, 2(r19)
	.loc	1 29 35                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:29:35
	load.hu r2, 0(r1)
	load.hu r26, 2(r1)
	.loc	1 36 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:36:19
	add.hf.rn r2, r2, r3
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	loadli.w r3,  -136(r30)                 # 4-byte Folded Reload
	.loc	1 37 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:37:19
	hfloat2float.rn r25, r2
	.loc	1 42 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:42:19
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r25, r2
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	abs.f r20, r7
	.loc	1 42 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:42:19
	slli r5, r7, 9
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	mul.f.rn r3, r20, r3
	.loc	1 42 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:42:19
	seteq r6, r5, zero
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	float2dfloat.rn r[8:9], r3
	load.d r[2:3], -144(r30)                # 8-byte Folded Reload
	add.d.rn r[4:5], r[8:9], r[2:3]
	.loc	1 42 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:42:19
	srli r8, r7, 23
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	setlt.f r7, r7, zero
	.loc	1 42 19                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:42:19
	andi r8, r8, 255
	setlti r8, r8, 255
	or r1, r8, r6
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	and r24, r7, r1
	jal __divdf3
	dfloat2float.rn r1, r[2:3]
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	neg.f r4, r20
	fmac.f.rn r2, r1, r3
	addli r3, r22, 0
	fmac.f.rn r3, r2, r1
	addli r2, r21, 0
	fmac.f.rn r2, r3, r1
	addli r3, r27, 0
	fmac.f.rn r3, r2, r1
	mul.f.rn r2, r20, r4
	lui r20, 260096
	neg.f r3, r3
	exp.f.rn r2, r2
	mul.f.rn r1, r1, r3
	fmac.f.rn r20, r1, r2
	beq r24, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	neg.f r20, r20
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 0 is_stmt 0                 # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	add.hf.rn r1, r26, r23
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	.loc	1 0 0                           # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	hfloat2float.rn r26, r1
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r26, r1
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	abs.f r23, r1
	.loc	1 0 0                           # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	slli r4, r1, 9
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	mul.f.rn r2, r23, r2
	.loc	1 0 0                           # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	seteq r6, r4, zero
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	float2dfloat.rn r[7:8], r2
	load.d r[2:3], -144(r30)                # 8-byte Folded Reload
	add.d.rn r[4:5], r[7:8], r[2:3]
	.loc	1 0 0                           # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	srli r7, r1, 23
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	setlt.f r1, r1, zero
	.loc	1 0 0                           # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:0:0
	andi r7, r7, 255
	setlti r7, r7, 255
	or r6, r7, r6
	.loc	1 43 26                         # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:43:26
	and r24, r1, r6
	jal __divdf3
	dfloat2float.rn r1, r[2:3]
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	neg.f r4, r23
	fmac.f.rn r2, r1, r3
	addli r3, r22, 0
	fmac.f.rn r3, r2, r1
	addli r2, r21, 0
	fmac.f.rn r2, r3, r1
	addli r3, r27, 0
	fmac.f.rn r3, r2, r1
	mul.f.rn r2, r23, r4
	neg.f r3, r3
	exp.f.rn r2, r2
	mul.f.rn r3, r1, r3
	lui r1, 260096
	fmac.f.rn r1, r3, r2
	beq r24, zero, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	neg.f r1, r1
	j .LBB0_4
.LBB0_9:                                # %._crit_edge
	.loc	1 50 4 epilogue_begin is_stmt 1 # ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py:50:4
	addli sp, sp, 192
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3xpu10xtransLockEv,"ax",@progbits
	.type	_ZN3xpu10xtransLockEv,@function # -- Begin function _ZN3xpu10xtransLockEv
_ZN3xpu10xtransLockEv:                  # @_ZN3xpu10xtransLockEv
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -8
	lui r5, :hi20:_ZN3xpu14XTransSpinLockE
	load_param_i r1, 6
	addli r2, zero, 32
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	zext_int2long r[3:4], r1
	load_param_i r1, 5
	addli r5, r5, :lo12:_ZN3xpu14XTransSpinLockE
	add.s r1, r1, r5
	sll.d r[2:3], r[3:4], r2
	zext_int2long r[4:5], r1
	or.d r[1:2], r[4:5], r[2:3]
	addli r3, zero, 1
	amoadd r4, r3, r[1:2]
	beq r4, zero, .LBB1_5
# %bb.1:                                # %for.cond.preheader.preheader
	addli r4, zero, 5
.LBB1_2:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	addli r5, r4, 0
.LBB1_3:                                # %for.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r5, r5, -1
	#APP
	nop
	#NO_APP
	bneq r5, zero, .LBB1_3
# %bb.4:                                # %for.cond.cleanup
                                        #   in Loop: Header=BB1_2 Depth=1
	amoadd r5, r3, r[1:2]
	addli r4, r4, 5
	bneq r5, zero, .LBB1_2
.LBB1_5:                                # %while.end
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end1:
	.size	_ZN3xpu10xtransLockEv, .Lfunc_end1-_ZN3xpu10xtransLockEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3xpu12xtransUnlockEv,"ax",@progbits
	.type	_ZN3xpu12xtransUnlockEv,@function # -- Begin function _ZN3xpu12xtransUnlockEv
_ZN3xpu12xtransUnlockEv:                # @_ZN3xpu12xtransUnlockEv
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -8
	lui r5, :hi20:_ZN3xpu14XTransSpinLockE
	load_param_i r1, 6
	addli r2, zero, 32
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	zext_int2long r[3:4], r1
	load_param_i r1, 5
	addli r5, r5, :lo12:_ZN3xpu14XTransSpinLockE
	add.s r1, r1, r5
	sll.d r[2:3], r[3:4], r2
	zext_int2long r[4:5], r1
	or.d r[1:2], r[4:5], r[2:3]
	amoswap r1, zero, r[1:2]
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end2:
	.size	_ZN3xpu12xtransUnlockEv, .Lfunc_end2-_ZN3xpu12xtransUnlockEv
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN3xpu14XTransSpinLockE        # @_ZN3xpu14XTransSpinLockE
	.type	_ZN3xpu14XTransSpinLockE,@object
	.section	.gm._ZN3xpu14XTransSpinLockE,"a",@progbits
	.weak	_ZN3xpu14XTransSpinLockE
	.p2align	2, 0x0
_ZN3xpu14XTransSpinLockE:
	.long	0                               # 0x0
	.size	_ZN3xpu14XTransSpinLockE, 4

	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	40                              # 0x28
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	256                             # 0x100
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
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1b DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"ckklguuymvrqdmvcd54dpzxbgur2w7cqobynfrb3gytsfkxt5laq.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/inductor/kk" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
