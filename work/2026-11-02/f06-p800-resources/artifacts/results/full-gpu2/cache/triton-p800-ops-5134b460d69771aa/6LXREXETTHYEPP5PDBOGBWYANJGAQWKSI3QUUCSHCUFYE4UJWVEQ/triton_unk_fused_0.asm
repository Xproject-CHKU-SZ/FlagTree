	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/zz" "czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py"
	.loc	1 22 0                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1288
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1224
	lui r23, 260096
	load_param_i r15, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r14,  36(r30)
	loadli.w r5,  32(r30)
	loadli.w r11,  40(r30)
	add.s r6, r3, r2
	mul.s r5, r14, r5
	stores.w zero, 0(r6)
	stores.w zero, 256(r6)
	storeli.w r6, -164(r30)                 # 4-byte Folded Spill
	stores.w r23, 512(r6)
	lui r6, 15
	mul.s r16, r5, r11
	mfence { lm, sm, gm }
	ori r18, r6, 4095
	csr_set csr3, r18
	sync_group
	ble.s r16, r15, .LBB0_183
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	loadli.w r7,  -164(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	load.d r[5:6], 8(r30)
	addli r26, r30, -128
	addli r27, r30, -64
	lui r13, 522240
	lui r17, 1024
	storeli.w r18, -156(r30)                # 4-byte Folded Spill
	storeli.w r16, -312(r30)                # 4-byte Folded Spill
	div.s r9, r1, r8
	addli r10, r7, 256
	addli r7, r7, 512
	storeli.w r7, -320(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	storeli.w r10, -316(r30)                # 4-byte Folded Spill
	storeli.w r7, -136(r30)                 # 4-byte Folded Spill
	slli r7, r9, 6
	storeli.w r9, -132(r30)                 # 4-byte Folded Spill
	lui r9, 1048575
	sub.s r7, r1, r7
	andi r1, r1, 63
	slli r10, r7, 5
	ori r7, r9, 3840
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	and r3, r3, r7
	storeli.w r10, -324(r30)                # 4-byte Folded Spill
	sext_int2long r[9:10], r10
	add.s r19, r3, r2
	sll.d r[9:10], r[9:10], r12
	addli r1, r19, 512
	add.ul r[2:3], r[5:6], r[9:10]
	addli r4, r19, 256
	lui r9, 1048560
	storeli.w r19, -1224(r30)               # 4-byte Folded Spill
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	lui r1, 7
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	lui r2, 522239
	addli r3, zero, 2047
	storeli.w r4, -1220(r30)                # 4-byte Folded Spill
	ori r28, r1, 4095
	lui r1, 524287
	ori r12, r2, 4095
	ori r10, r1, 4095
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -344(r30)                 # 4-byte Folded Spill
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 87 29 prologue_end            # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:29
	load.d r[2:3], 16(r30)
	load.d r[5:6], -152(r30)                # 8-byte Folded Reload
	.loc	1 87 53 is_stmt 0               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	lui r1, 983040
	or r1, r8, r1
	.loc	1 87 29                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:29
	add.ul r[2:3], r[2:3], r[5:6]
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	s_lm2gm r1, r27, 0(r[2:3])
	addli r3, zero, 2047
	mfence { lm }
	loadli.w r11,  40(r30)
	loadli.w r14,  36(r30)
	loadli.w r15,  -140(r30)                # 4-byte Folded Reload
	loadli.w r16,  -312(r30)                # 4-byte Folded Reload
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 53                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:53
	loadli.w r1,  -136(r30)                 # 4-byte Folded Reload
	add.s r15, r15, r1
	blt.s r15, r16, .LBB0_4
	j .LBB0_183
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_165 Depth 2
	div.s r1, r15, r11
	.loc	1 28 23 is_stmt 1               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:28:23
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	div.s r1, r1, r14
	add.s r1, r1, r2
	blt.s r3, r1, .LBB0_3
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r2, zero, 0
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	add.s r3, r26, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r8, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 42 41 is_stmt 0               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:41
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 42 46                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:46
	slli r1, r1, 11
	.loc	1 42 34                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:34
	addli r3, zero, 1
	.loc	1 42 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[5:6], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	lui r1, 983040
	or r1, r8, r1
	store.d r[5:6], -152(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:34
	add.ul r[2:3], r[2:3], r[5:6]
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	l_gm2lm r1, r26, 0(r[2:3])
	addli r1, zero, 0
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41 is_stmt 1               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	add.s r2, r27, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r8, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	lui r1, 983040
	load.d r[2:3], -336(r30)                # 8-byte Folded Reload
	or r1, r8, r1
	l_gm2lm r1, r27, 0(r[2:3])
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	load.hu r2, -64(r30)
	load.hu r5, -62(r30)
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	bfloat2float.rn r1, r1
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	bfloat2float.rn r2, r2
	.loc	1 48 22                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:48:22
	add.f.rn r3, r1, r2
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	load.hu r2, -126(r30)
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	and r6, r3, r10
	setlt.u r1, r13, r6
	bneq r1, zero, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r1, r3, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	or r1, r3, r17
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 0                           # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:0
	bfloat2float.rn r2, r2
	bfloat2float.rn r5, r5
	add.f.rn r5, r2, r5
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	and r7, r5, r10
	setlt.u r2, r13, r7
	bneq r2, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r2, r5, 0
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	setlt.u r6, r12, r6
	beq r6, zero, .LBB0_15
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	or r2, r5, r17
	setlt.u r6, r12, r6
	bneq r6, zero, .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r28
	and r1, r1, r9
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	setlt.u r3, r12, r7
	bneq r3, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	srli r2, r5, 16
	andi r2, r2, 1
	add.s r2, r5, r2
	add.s r2, r2, r28
	and r2, r2, r9
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	addli r6, zero, 0
	addli r3, zero, 0
	lui r7, 260096
	lui r11, 260096
	addli r5, zero, 0
	storeli.w r15, -140(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
.Ltmp1:
	sub.f.rn r15, r15, r1
	sub.f.rn r16, r16, r2
	addli r6, r6, 4
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r22, r15, r15
	mul.f.rn r24, r16, r16
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r15, r20, r15
	mul.f.rn r16, r21, r16
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r7, r7, r22
	mul.f.rn r11, r11, r24
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r1, r1, r15
	add.f.rn r2, r2, r16
	addli r15, zero, 60
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r7, r20, r7
	mul.f.rn r11, r21, r11
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r3, r3, r7
	add.f.rn r5, r5, r11
	addli r7, r14, 0
	addli r11, r18, 0
	beq r6, r15, .LBB0_33
.Ltmp2:
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	add.s r15, r26, r6
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	add.s r18, r27, r6
	load.hu r16, 4(r18)
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	load.hu r14, 4(r15)
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	load.hu r18, 6(r18)
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	bfloat2float.rn r14, r14
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	bfloat2float.rn r16, r16
	.loc	1 48 22                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:48:22
	add.f.rn r14, r14, r16
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	load.hu r16, 6(r15)
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	and r20, r14, r10
	setlt.u r21, r13, r20
	bneq r21, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23 is_stmt 0                # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r15, r14, 0
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	or r15, r14, r17
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0                           # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:0
	bfloat2float.rn r16, r16
	bfloat2float.rn r18, r18
	add.f.rn r18, r16, r18
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	and r21, r18, r10
	setlt.u r16, r13, r21
	bneq r16, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r16, r18, 0
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	setlt.u r20, r12, r20
	beq r20, zero, .LBB0_26
	j .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=2
	or r16, r18, r17
	setlt.u r20, r12, r20
	bneq r20, zero, .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	srli r15, r14, 16
	andi r15, r15, 1
	add.s r14, r14, r15
	add.s r14, r14, r28
	and r15, r14, r9
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	setlt.u r14, r12, r21
	bneq r14, zero, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r28
	and r16, r14, r9
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=2
.Ltmp3:
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r7, r23
	slli r18, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r21, zero, r14
	setle.f r22, r14, zero
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r20, r14, 23
	seteq r18, r18, zero
	andi r20, r20, 255
	setlti r20, r20, 255
	or r18, r20, r18
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r20, r22, r21
	and r18, r20, r18
	addli r20, zero, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r18, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r20, r23, r14
.LBB0_31:                               #   in Loop: Header=BB0_20 Depth=2
	add.f.rn r18, r11, r23
	slli r21, r18, 9
	.loc	2 227 0                         # triton_helpers.py:227:0
	setle.f r25, zero, r18
	setle.f r24, r18, zero
	.loc	2 0 0                           # triton_helpers.py:0:0
	srli r22, r18, 23
	seteq r21, r21, zero
	andi r22, r22, 255
	setlti r22, r22, 255
	or r21, r22, r21
	.loc	2 227 0                         # triton_helpers.py:227:0
	and r22, r24, r25
	and r22, r22, r21
	addli r21, zero, 0
	.loc	2 227 49                        # triton_helpers.py:227:49
	bneq r22, zero, .LBB0_19
# %bb.32:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r21, r23, r18
	j .LBB0_19
.LBB0_33:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r14, r18
	slli r7, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r15, zero, r6
	setle.f r16, r6, zero
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r11, r6, 23
	seteq r7, r7, zero
	andi r11, r11, 255
	setlti r11, r11, 255
	or r7, r11, r7
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r11, r16, r15
	and r11, r11, r7
	addli r7, zero, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r11, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r7, r18, r6
.LBB0_35:                               #   in Loop: Header=BB0_4 Depth=1
	sub.f.rn r2, r2, r1
	.loc	2 230 15 is_stmt 1              # triton_helpers.py:230:15
	add.f.rn r3, r3, r5
	.loc	2 230 30 is_stmt 0              # triton_helpers.py:230:30
	mul.f.rn r11, r2, r2
	.loc	2 229 25 is_stmt 1              # triton_helpers.py:229:25
	mul.f.rn r2, r2, r7
	.loc	2 230 38                        # triton_helpers.py:230:38
	mul.f.rn r11, r11, r14
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r1, r1, r2
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r5, r11, r7
	.loc	2 230 22 is_stmt 0              # triton_helpers.py:230:22
	add.f.rn r2, r3, r5
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	stores.w r6, 0(r3)
	loadli.w r3,  -164(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r3)
	loadli.w r1,  -316(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r1)
	mfence { lm, sm, gm }
	loadli.w r18,  -156(r30)                # 4-byte Folded Reload
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_163
# %bb.36:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 22                          # triton_helpers.py:0:22
	loadli.w r11,  -352(r30)                # 4-byte Folded Reload
	addli r15, zero, 0
	storeli.w r15, -348(r30)                # 4-byte Folded Spill
	loads.w r2, 0(r11)
	loads.w r1, 4(r11)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r2, r1
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	slli r2, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r7
	setle.f r6, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r7, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r1, r1, r7
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 8(r11)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r7, r1
	slli r2, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r14
	setle.f r6, r14, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r14, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r14
.LBB0_40:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 12(r11)
	storeli.w r3, -512(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r14, r1
	slli r2, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r16
	setle.f r6, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r16, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r16
.LBB0_42:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 16(r11)
	storeli.w r3, -168(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r16, r1
	slli r2, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r18
	setle.f r6, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r18, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r18
.LBB0_44:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 20(r11)
	storeli.w r3, -536(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r18, r1
	slli r2, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r20
	setle.f r6, r20, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r20, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r20
.LBB0_46:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 24(r11)
	storeli.w r3, -172(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r21, r20, r1
	slli r2, r21, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r21
	setle.f r6, r21, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r21, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r21
.LBB0_48:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 28(r11)
	storeli.w r3, -176(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r22, r21, r1
	slli r2, r22, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r22
	setle.f r6, r22, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r22, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r22
.LBB0_50:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 32(r11)
	storeli.w r3, -180(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r22, r1
	slli r2, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r24
	setle.f r6, r24, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r24, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r24
.LBB0_52:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 36(r11)
	storeli.w r3, -184(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r24, r1
	slli r2, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r25
	setle.f r6, r25, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r25, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r25
.LBB0_54:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 40(r11)
	storeli.w r7, -468(r30)                 # 4-byte Folded Spill
	storeli.w r3, -188(r30)                 # 4-byte Folded Spill
	storeli.w r24, -564(r30)                # 4-byte Folded Spill
	storeli.w r22, -552(r30)                # 4-byte Folded Spill
	storeli.w r21, -548(r30)                # 4-byte Folded Spill
	storeli.w r20, -532(r30)                # 4-byte Folded Spill
	storeli.w r18, -516(r30)                # 4-byte Folded Spill
	storeli.w r16, -500(r30)                # 4-byte Folded Spill
	storeli.w r14, -484(r30)                # 4-byte Folded Spill
	storeli.w r25, -580(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r25, r1
	slli r2, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r7
	setle.f r6, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r7, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	addli r3, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r1, r7
.LBB0_56:                               #   in Loop: Header=BB0_4 Depth=1
	loads.w r1, 0(r19)
	loads.w r20, 44(r11)
	loads.w r2, 96(r19)
	loads.w r14, 84(r11)
	storeli.w r3, -192(r30)                 # 4-byte Folded Spill
	loads.w r3, 72(r11)
	storeli.w r7, -592(r30)                 # 4-byte Folded Spill
	loads.w r5, 52(r11)
	loads.w r25, 56(r11)
	loads.w r6, 60(r11)
	loads.w r21, 88(r11)
	loads.w r22, 92(r11)
	storeli.w r15, -160(r30)                # 4-byte Folded Spill
	storeli.w r1, -812(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r19)
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r7, r20
	storeli.w r2, -784(r30)                 # 4-byte Folded Spill
	storeli.w r14, -228(r30)                # 4-byte Folded Spill
	loads.w r14, 96(r11)
	storeli.w r3, -224(r30)                 # 4-byte Folded Spill
	loads.w r3, 76(r11)
	loads.w r7, 48(r11)
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r16, r15, r18
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r24, r18, 23
	andi r24, r24, 255
	setlti r24, r24, 255
	storeli.w r1, -816(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r19)
	storeli.w r14, -240(r30)                # 4-byte Folded Spill
	loads.w r14, 100(r11)
	storeli.w r3, -220(r30)                 # 4-byte Folded Spill
	loads.w r3, 80(r11)
	storeli.w r1, -808(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r19)
	storeli.w r14, -244(r30)                # 4-byte Folded Spill
	loads.w r14, 104(r11)
	storeli.w r1, -796(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r19)
	storeli.w r14, -248(r30)                # 4-byte Folded Spill
	loads.w r14, 108(r11)
	storeli.w r1, -788(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r19)
	storeli.w r14, -252(r30)                # 4-byte Folded Spill
	loads.w r14, 112(r11)
	storeli.w r1, -780(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r19)
	storeli.w r14, -256(r30)                # 4-byte Folded Spill
	loads.w r14, 116(r11)
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r19)
	storeli.w r14, -260(r30)                # 4-byte Folded Spill
	loads.w r14, 120(r11)
	storeli.w r1, -760(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r19)
	storeli.w r14, -264(r30)                # 4-byte Folded Spill
	loads.w r14, 124(r11)
	storeli.w r1, -752(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r19)
	storeli.w r14, -276(r30)                # 4-byte Folded Spill
	loads.w r14, 128(r11)
	storeli.w r1, -900(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r19)
	storeli.w r14, -268(r30)                # 4-byte Folded Spill
	loads.w r14, 132(r11)
	storeli.w r1, -892(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r19)
	storeli.w r14, -272(r30)                # 4-byte Folded Spill
	loads.w r14, 136(r11)
	storeli.w r1, -888(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r19)
	storeli.w r14, -1024(r30)               # 4-byte Folded Spill
	loads.w r14, 140(r11)
	storeli.w r1, -876(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r19)
	storeli.w r14, -280(r30)                # 4-byte Folded Spill
	loads.w r14, 144(r11)
	storeli.w r1, -868(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r19)
	storeli.w r14, -284(r30)                # 4-byte Folded Spill
	loads.w r14, 148(r11)
	storeli.w r1, -860(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r19)
	storeli.w r14, -288(r30)                # 4-byte Folded Spill
	loads.w r14, 152(r11)
	storeli.w r1, -852(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r19)
	storeli.w r14, -292(r30)                # 4-byte Folded Spill
	loads.w r14, 156(r11)
	storeli.w r1, -844(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r19)
	storeli.w r14, -296(r30)                # 4-byte Folded Spill
	loads.w r14, 160(r11)
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r19)
	storeli.w r14, -300(r30)                # 4-byte Folded Spill
	loads.w r14, 164(r11)
	storeli.w r1, -820(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r19)
	storeli.w r14, -304(r30)                # 4-byte Folded Spill
	loads.w r14, 168(r11)
	storeli.w r1, -872(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r19)
	storeli.w r14, -308(r30)                # 4-byte Folded Spill
	loads.w r14, 172(r11)
	storeli.w r1, -856(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r19)
	storeli.w r14, -1068(r30)               # 4-byte Folded Spill
	loads.w r14, 176(r11)
	storeli.w r1, -840(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r19)
	storeli.w r14, -1072(r30)               # 4-byte Folded Spill
	loads.w r14, 180(r11)
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r19)
	storeli.w r14, -1076(r30)               # 4-byte Folded Spill
	loads.w r14, 184(r11)
	storeli.w r1, -800(r30)                 # 4-byte Folded Spill
	slli r1, r18, 9
	storeli.w r14, -1108(r30)               # 4-byte Folded Spill
	loads.w r14, 188(r11)
	seteq r2, r1, r15
	loads.w r1, 100(r19)
	or r2, r24, r2
	storeli.w r14, -1096(r30)               # 4-byte Folded Spill
	loads.w r14, 192(r11)
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r19)
	storeli.w r14, -1120(r30)               # 4-byte Folded Spill
	loads.w r14, 196(r11)
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r19)
	storeli.w r14, -1112(r30)               # 4-byte Folded Spill
	loads.w r14, 200(r11)
	storeli.w r1, -732(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r19)
	storeli.w r14, -1124(r30)               # 4-byte Folded Spill
	loads.w r14, 204(r11)
	storeli.w r1, -724(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r19)
	storeli.w r14, -1128(r30)               # 4-byte Folded Spill
	loads.w r14, 208(r11)
	storeli.w r1, -716(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r19)
	storeli.w r14, -1140(r30)               # 4-byte Folded Spill
	loads.w r14, 212(r11)
	storeli.w r1, -704(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r19)
	storeli.w r14, -1148(r30)               # 4-byte Folded Spill
	loads.w r14, 216(r11)
	storeli.w r1, -696(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r19)
	storeli.w r14, -1136(r30)               # 4-byte Folded Spill
	loads.w r14, 220(r11)
	storeli.w r1, -688(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r19)
	storeli.w r14, -1092(r30)               # 4-byte Folded Spill
	loads.w r14, 224(r11)
	storeli.w r1, -676(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r19)
	storeli.w r14, -1104(r30)               # 4-byte Folded Spill
	loads.w r14, 228(r11)
	storeli.w r1, -668(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r19)
	storeli.w r14, -1088(r30)               # 4-byte Folded Spill
	loads.w r14, 232(r11)
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r19)
	storeli.w r14, -1056(r30)               # 4-byte Folded Spill
	loads.w r14, 236(r11)
	storeli.w r1, -648(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r19)
	storeli.w r14, -1064(r30)               # 4-byte Folded Spill
	loads.w r14, 240(r11)
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r19)
	storeli.w r14, -1044(r30)               # 4-byte Folded Spill
	loads.w r14, 244(r11)
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r19)
	storeli.w r14, -1048(r30)               # 4-byte Folded Spill
	loads.w r14, 248(r11)
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r19)
	storeli.w r14, -1036(r30)               # 4-byte Folded Spill
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r14, r18, r15
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r19)
	storeli.w r1, -600(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r19)
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r19)
	storeli.w r1, -572(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r19)
	storeli.w r1, -560(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r19)
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r19)
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r19)
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r19)
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r19)
	storeli.w r1, -476(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r19)
	storeli.w r1, -460(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r19)
	storeli.w r1, -452(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r19)
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r19)
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r19)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r19)
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r19)
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r19)
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r19)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r19)
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r19)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r19)
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r19)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r19)
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	loads.w r1, 0(r4)
	storeli.w r1, -968(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r4)
	storeli.w r1, -976(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r4)
	storeli.w r1, -912(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r4)
	storeli.w r1, -908(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r4)
	storeli.w r1, -904(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r4)
	storeli.w r1, -896(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r4)
	storeli.w r1, -884(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r4)
	storeli.w r1, -880(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r4)
	storeli.w r1, -864(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r4)
	storeli.w r1, -848(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r4)
	storeli.w r1, -836(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r4)
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r4)
	storeli.w r1, -804(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r4)
	storeli.w r1, -792(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r4)
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r4)
	storeli.w r1, -768(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r4)
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r4)
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r4)
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r4)
	storeli.w r1, -728(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r4)
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r4)
	storeli.w r1, -712(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r4)
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r4)
	storeli.w r1, -700(r30)                 # 4-byte Folded Spill
	loads.w r1, 96(r4)
	storeli.w r1, -692(r30)                 # 4-byte Folded Spill
	loads.w r1, 100(r4)
	storeli.w r1, -684(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r4)
	storeli.w r1, -680(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r4)
	storeli.w r1, -672(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r4)
	storeli.w r1, -664(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r4)
	storeli.w r1, -656(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r4)
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r4)
	storeli.w r1, -644(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r4)
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r4)
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r4)
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r4)
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r4)
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r4)
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r4)
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r4)
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r4)
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r4)
	storeli.w r1, -568(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r4)
	storeli.w r1, -556(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r4)
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r4)
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r4)
	storeli.w r1, -520(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r4)
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r4)
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r4)
	storeli.w r1, -488(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r4)
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r4)
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r4)
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r4)
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r4)
	storeli.w r1, -444(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r4)
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r4)
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r4)
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r4)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r4)
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r4)
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r4)
	storeli.w r1, -396(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r4)
	storeli.w r1, -388(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r4)
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r4)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r11)
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r11)
	loads.w r11, 252(r11)
	.loc	2 226 28                        # triton_helpers.py:226:28
	storeli.w r11, -1028(r30)               # 4-byte Folded Spill
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r11, r14, r16
	and r2, r11, r2
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r20, r18
	storeli.w r2, -160(r30)                 # 4-byte Folded Spill
.LBB0_58:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r18, r7
	storeli.w r18, -736(r30)                # 4-byte Folded Spill
	slli r2, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r14, r15, r16
	setle.f r20, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r11, r16, 23
	seteq r2, r2, r15
	andi r11, r11, 255
	setlti r11, r11, 255
	or r2, r11, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r11, r20, r14
	and r2, r11, r2
	addli r11, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r11, r7, r16
.LBB0_60:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r16, r5
	storeli.w r11, -196(r30)                # 4-byte Folded Spill
	addli r24, r3, 0
	storeli.w r22, -236(r30)                # 4-byte Folded Spill
	slli r2, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r11, r15, r18
	setle.f r14, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r7, r18, 23
	seteq r2, r2, r15
	andi r7, r7, 255
	setlti r7, r7, 255
	or r2, r7, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r7, r14, r11
	and r2, r7, r2
	addli r7, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r7, r5, r18
.LBB0_62:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r18, r25
	storeli.w r7, -200(r30)                 # 4-byte Folded Spill
	addli r22, r21, 0
	addli r3, r1, 0
	slli r2, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r15, r14
	setle.f r11, r14, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r5, r14, 23
	seteq r2, r2, r15
	andi r5, r5, 255
	setlti r5, r5, 255
	or r2, r5, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r5, r11, r7
	and r2, r5, r2
	addli r5, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r5, r25, r14
.LBB0_64:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r14, r6
	storeli.w r5, -204(r30)                 # 4-byte Folded Spill
	loadli.w r21,  -224(r30)                # 4-byte Folded Reload
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	slli r2, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r7, r15, r20
	setle.f r11, r20, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r5, r20, 23
	seteq r2, r2, r15
	andi r5, r5, 255
	setlti r5, r5, 255
	or r2, r5, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r5, r11, r7
	and r2, r5, r2
	addli r5, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r5, r6, r20
.LBB0_66:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r20, r1
	storeli.w r5, -208(r30)                 # 4-byte Folded Spill
	addli r25, r22, 0
	slli r2, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r6, r15, r11
	setle.f r7, r11, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r5, r11, 23
	seteq r2, r2, r15
	andi r5, r5, 255
	setlti r5, r5, 255
	or r2, r5, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r5, r7, r6
	and r2, r5, r2
	addli r5, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r5, r1, r11
.LBB0_68:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r11, r3
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	loadli.w r22,  -252(r30)                # 4-byte Folded Reload
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r7
	setle.f r6, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r6, r5
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r3, r7
.LBB0_70:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r7, r21
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	slli r1, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r6
	setle.f r5, r6, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r6, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r21, r6
.LBB0_72:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r21,  -220(r30)                # 4-byte Folded Reload
	storeli.w r6, -940(r30)                 # 4-byte Folded Spill
	storeli.w r2, -948(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r6, r21
	slli r1, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r6
	setle.f r5, r6, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r6, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r21, r6
.LBB0_74:                               #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -936(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r6, r24
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r24, r7
.LBB0_76:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r24,  -228(r30)                # 4-byte Folded Reload
	storeli.w r7, -952(r30)                 # 4-byte Folded Spill
	storeli.w r2, -224(r30)                 # 4-byte Folded Spill
	addli r21, r22, 0
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r7, r24
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r24, r7
.LBB0_78:                               #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -956(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r7, r25
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r25, r7
.LBB0_80:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r22,  -236(r30)                # 4-byte Folded Reload
	storeli.w r2, -232(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r7, r22
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r24
	setle.f r5, r24, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r22, r24
.LBB0_82:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r22,  -240(r30)                # 4-byte Folded Reload
	storeli.w r16, -916(r30)                # 4-byte Folded Spill
	storeli.w r3, -236(r30)                 # 4-byte Folded Spill
	storeli.w r24, -964(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r24, r22
	loadli.w r24,  -248(r30)                # 4-byte Folded Reload
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r16
	setle.f r5, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r22, r16
.LBB0_84:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r25,  -244(r30)                # 4-byte Folded Reload
	storeli.w r16, -972(r30)                # 4-byte Folded Spill
	storeli.w r2, -240(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r16, r25
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r16
	setle.f r5, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r25, r16
.LBB0_86:                               #   in Loop: Header=BB0_4 Depth=1
	storeli.w r18, -920(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r16, r24
	storeli.w r3, -244(r30)                 # 4-byte Folded Spill
	storeli.w r16, -980(r30)                # 4-byte Folded Spill
	loadli.w r16,  -260(r30)                # 4-byte Folded Reload
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r18
	setle.f r5, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r18, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r24, 0
	loadli.w r24,  -1120(r30)               # 4-byte Folded Reload
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r3, r18
.LBB0_88:                               #   in Loop: Header=BB0_4 Depth=1
	storeli.w r18, -984(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r18, r21
	storeli.w r2, -248(r30)                 # 4-byte Folded Spill
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r18
	setle.f r5, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r18, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r21, r18
.LBB0_90:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r21,  -256(r30)                # 4-byte Folded Reload
	storeli.w r14, -924(r30)                # 4-byte Folded Spill
	storeli.w r3, -252(r30)                 # 4-byte Folded Spill
	storeli.w r18, -988(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r18, r21
	loadli.w r18,  -1108(r30)               # 4-byte Folded Reload
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r14
	setle.f r5, r14, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r21, r14
.LBB0_92:                               #   in Loop: Header=BB0_4 Depth=1
	storeli.w r14, -992(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r14, r16
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r14
	setle.f r5, r14, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r16, r14
.LBB0_94:                               #   in Loop: Header=BB0_4 Depth=1
	storeli.w r20, -928(r30)                # 4-byte Folded Spill
	loadli.w r20,  -264(r30)                # 4-byte Folded Reload
	storeli.w r3, -260(r30)                 # 4-byte Folded Spill
	storeli.w r14, -996(r30)                # 4-byte Folded Spill
	loadli.w r21,  -1024(r30)               # 4-byte Folded Reload
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r14, r20
	loadli.w r14,  -276(r30)                # 4-byte Folded Reload
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r16
	setle.f r5, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r20, r16
.LBB0_96:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r16, r14
	storeli.w r2, -264(r30)                 # 4-byte Folded Spill
	slli r1, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r20
	setle.f r5, r20, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r20, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r20
.LBB0_98:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -268(r30)                # 4-byte Folded Reload
	storeli.w r11, -932(r30)                # 4-byte Folded Spill
	storeli.w r3, -1016(r30)                # 4-byte Folded Spill
	storeli.w r20, -1004(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r20, r14
	loadli.w r20,  -272(r30)                # 4-byte Folded Reload
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r11
	setle.f r5, r11, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r14, r11
.LBB0_100:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r11, -1008(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r11, r20
	storeli.w r2, -268(r30)                 # 4-byte Folded Spill
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r11
	setle.f r5, r11, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r20, r11
.LBB0_102:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r11, r21
	storeli.w r3, -272(r30)                 # 4-byte Folded Spill
	storeli.w r11, -1012(r30)               # 4-byte Folded Spill
	loadli.w r11,  -1112(r30)               # 4-byte Folded Reload
	addli r14, r24, 0
	slli r1, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r20
	setle.f r5, r20, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r20, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r21, r20
.LBB0_104:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r21,  -280(r30)                # 4-byte Folded Reload
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r25, r20, r21
	slli r1, r25, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r25
	setle.f r5, r25, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r25, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r21, r25
.LBB0_106:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r6, -944(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -284(r30)                 # 4-byte Folded Reload
	storeli.w r3, -280(r30)                 # 4-byte Folded Spill
	storeli.w r25, -1024(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r21, r25, r6
	slli r1, r21, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r21
	setle.f r5, r21, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r21, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r6, r21
.LBB0_108:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r22,  -288(r30)                # 4-byte Folded Reload
	storeli.w r2, -284(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r21, r22
	slli r1, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r6
	setle.f r5, r6, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r6, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r22, r6
.LBB0_110:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r20, -1020(r30)               # 4-byte Folded Spill
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	storeli.w r6, -1040(r30)                # 4-byte Folded Spill
	storeli.w r3, -288(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r6, r6, r20
	slli r1, r6, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r6
	setle.f r5, r6, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r6, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r20, r6
.LBB0_112:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r20,  -296(r30)                # 4-byte Folded Reload
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r22, r6, r20
	slli r1, r22, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r22
	setle.f r5, r22, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r22, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r20, r22
.LBB0_114:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r20,  -300(r30)                # 4-byte Folded Reload
	storeli.w r22, -1052(r30)               # 4-byte Folded Spill
	storeli.w r3, -296(r30)                 # 4-byte Folded Spill
	storeli.w r21, -1032(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r22, r22, r20
	slli r1, r22, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r22
	setle.f r5, r22, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r22, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r20, r22
.LBB0_116:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -960(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	storeli.w r2, -300(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r21, r22, r7
	slli r1, r21, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r21
	setle.f r5, r21, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r21, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r21
.LBB0_118:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r16, -1000(r30)               # 4-byte Folded Spill
	loadli.w r16,  -308(r30)                # 4-byte Folded Reload
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r21, r16
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r16, r7
.LBB0_120:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r16,  -1068(r30)               # 4-byte Folded Reload
	storeli.w r7, -1060(r30)                # 4-byte Folded Spill
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r7, r16
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	addli r2, r7, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r16, r2
.LBB0_122:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r16,  -1072(r30)               # 4-byte Folded Reload
	storeli.w r3, -1080(r30)                # 4-byte Folded Spill
	storeli.w r2, -1068(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r2, r16
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r16, r7
.LBB0_124:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r24,  -1076(r30)               # 4-byte Folded Reload
	storeli.w r7, -1072(r30)                # 4-byte Folded Spill
	storeli.w r3, -1084(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r7, r24
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	addli r2, r7, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r24, r2
.LBB0_126:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r2, r18
	storeli.w r3, -1100(r30)                # 4-byte Folded Spill
	storeli.w r2, -1076(r30)                # 4-byte Folded Spill
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r18, r7
.LBB0_128:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r18,  -1096(r30)               # 4-byte Folded Reload
	storeli.w r2, -1108(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r7, r18
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r24
	setle.f r5, r24, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r18, r24
.LBB0_130:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r24, -1096(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r24, r24, r14
	storeli.w r3, -1116(r30)                # 4-byte Folded Spill
	slli r1, r24, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r24
	setle.f r5, r24, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r24, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r14, r24
.LBB0_132:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r24, r11
	storeli.w r2, -1120(r30)                # 4-byte Folded Spill
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r16
	setle.f r5, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r16
.LBB0_134:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -1124(r30)               # 4-byte Folded Reload
	storeli.w r16, -1112(r30)               # 4-byte Folded Spill
	storeli.w r3, -1132(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r16, r11
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r16
	setle.f r5, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	addli r2, r16, 0
	loadli.w r16,  -1092(r30)               # 4-byte Folded Reload
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r2
.LBB0_136:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r14,  -1128(r30)               # 4-byte Folded Reload
	storeli.w r3, -1144(r30)                # 4-byte Folded Spill
	storeli.w r2, -1124(r30)                # 4-byte Folded Spill
	loadli.w r11,  -1140(r30)               # 4-byte Folded Reload
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r2, r14
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r18
	setle.f r5, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r18, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r14, r18
.LBB0_138:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r18, -1128(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r18, r11
	storeli.w r3, -1152(r30)                # 4-byte Folded Spill
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r18
	setle.f r5, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r18, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	addli r2, r18, 0
	loadli.w r18,  -1136(r30)               # 4-byte Folded Reload
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r2
.LBB0_140:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r20,  -1148(r30)               # 4-byte Folded Reload
	storeli.w r3, -1156(r30)                # 4-byte Folded Spill
	storeli.w r2, -1140(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r2, r20
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r14
	setle.f r5, r14, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r20, r14
.LBB0_142:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r14, -1148(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r14, r14, r18
	storeli.w r3, -1160(r30)                # 4-byte Folded Spill
	loadli.w r11,  -1064(r30)               # 4-byte Folded Reload
	slli r1, r14, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r14
	setle.f r5, r14, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r14, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r18, r14
.LBB0_144:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r18, r14, r16
	storeli.w r2, -1136(r30)                # 4-byte Folded Spill
	slli r1, r18, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r18
	setle.f r5, r18, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r18, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r16, r18
.LBB0_146:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -1092(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1104(r30)                # 4-byte Folded Reload
	storeli.w r2, -1168(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r16, r18, r7
	slli r1, r16, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r16
	setle.f r5, r16, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r16, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r16
.LBB0_148:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1088(r30)                # 4-byte Folded Reload
	storeli.w r2, -1176(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r20, r16, r7
	slli r1, r20, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r20
	setle.f r5, r20, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r20, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r7, r20
.LBB0_150:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r25,  -1056(r30)               # 4-byte Folded Reload
	storeli.w r2, -1184(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r20, r25
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r25, r7
.LBB0_152:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r7, -1172(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r7, r7, r11
	storeli.w r2, -1188(r30)                # 4-byte Folded Spill
	storeli.w r21, -1056(r30)               # 4-byte Folded Spill
	slli r1, r7, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r7
	setle.f r5, r7, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r7, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	addli r2, r7, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r11, r2
.LBB0_154:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r21,  -1044(r30)               # 4-byte Folded Reload
	storeli.w r3, -1196(r30)                # 4-byte Folded Spill
	storeli.w r2, -1180(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r2, r21
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r11
	setle.f r5, r11, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	addli r3, r15, 0
	and r1, r2, r1
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r3, r21, r11
.LBB0_156:                              #   in Loop: Header=BB0_4 Depth=1
	storeli.w r6, -1044(r30)                # 4-byte Folded Spill
	loadli.w r6,  -1048(r30)                # 4-byte Folded Reload
	storeli.w r11, -1192(r30)               # 4-byte Folded Spill
	storeli.w r3, -1208(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r11, r11, r6
	slli r1, r11, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r11
	setle.f r5, r11, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r11, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r6, r11
.LBB0_158:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r6,  -1036(r30)                # 4-byte Folded Reload
	storeli.w r2, -1212(r30)                # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r21, r11, r6
	slli r1, r21, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r3, r15, r21
	setle.f r5, r21, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r2, r21, 23
	seteq r1, r1, r15
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r15, 0
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r1, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r2, r6, r21
.LBB0_160:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r7,  -1028(r30)                # 4-byte Folded Reload
	storeli.w r2, -1216(r30)                # 4-byte Folded Spill
	storeli.w r11, -1200(r30)               # 4-byte Folded Spill
	storeli.w r20, -1164(r30)               # 4-byte Folded Spill
	storeli.w r16, -1104(r30)               # 4-byte Folded Spill
	storeli.w r18, -1088(r30)               # 4-byte Folded Spill
	storeli.w r14, -1064(r30)               # 4-byte Folded Spill
	storeli.w r24, -1048(r30)               # 4-byte Folded Spill
	storeli.w r22, -1036(r30)               # 4-byte Folded Spill
	storeli.w r21, -1204(r30)               # 4-byte Folded Spill
	.loc	2 226 28 is_stmt 1              # triton_helpers.py:226:28
	add.f.rn r1, r21, r7
	slli r2, r1, 9
	.loc	2 227 39                        # triton_helpers.py:227:39
	setle.f r5, r15, r1
	setle.f r6, r1, r15
	.loc	2 226 28                        # triton_helpers.py:226:28
	srli r3, r1, 23
	seteq r2, r2, r15
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	.loc	2 227 39                        # triton_helpers.py:227:39
	and r3, r6, r5
	and r2, r3, r2
	.loc	2 227 49 is_stmt 0              # triton_helpers.py:227:49
	bneq r2, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 49                          # triton_helpers.py:0:49
	div.f.rn r15, r7, r1
.LBB0_162:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -968(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -976(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r18,  -512(r30)                # 4-byte Folded Reload
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -536(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	loadli.w r3,  -812(r30)                 # 4-byte Folded Reload
	storeli.w r2, -968(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r1,  -816(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r3
	mul.f.rn r2, r1, r7
	mul.f.rn r1, r1, r1
	add.f.rn r3, r3, r2
	loadli.w r2,  -808(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r3
	mul.f.rn r5, r18, r2
	mul.f.rn r2, r2, r2
	add.f.rn r5, r3, r5
	loadli.w r3,  -796(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r6, r4, r3
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r5, r5, r6
	loadli.w r6,  -788(r30)                 # 4-byte Folded Reload
	sub.f.rn r20, r6, r5
	mul.f.rn r6, r25, r20
	add.f.rn r6, r5, r6
	loadli.w r5,  -780(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r6
	mul.f.rn r11, r4, r5
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r5, r5
	add.f.rn r6, r6, r11
	loadli.w r11,  -772(r30)                # 4-byte Folded Reload
	sub.f.rn r22, r11, r6
	mul.f.rn r11, r4, r22
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r6, r11
	loadli.w r11,  -760(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r6
	storeli.w r11, -812(r30)                # 4-byte Folded Spill
	mul.f.rn r11, r4, r11
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r6, r11
	loadli.w r11,  -752(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r6
	mul.f.rn r14, r4, r11
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r6, r14
	loadli.w r6,  -900(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r14
	mul.f.rn r16, r4, r6
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r14, r16
	loadli.w r16,  -892(r30)                # 4-byte Folded Reload
	sub.f.rn r16, r16, r14
	storeli.w r16, -808(r30)                # 4-byte Folded Spill
	mul.f.rn r16, r4, r16
	add.f.rn r14, r14, r16
	loadli.w r16,  -888(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r16, r14
	loadli.w r16,  -160(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r16, r4
	storeli.w r4, -796(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r14, r16
	loadli.w r14,  -876(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r14, r16
	mul.f.rn r21, r4, r14
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r16, r21
	loadli.w r21,  -868(r30)                # 4-byte Folded Reload
	sub.f.rn r21, r21, r16
	mul.f.rn r24, r4, r21
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	add.f.rn r24, r16, r24
	loadli.w r16,  -860(r30)                # 4-byte Folded Reload
	sub.f.rn r16, r16, r24
	storeli.w r16, -788(r30)                # 4-byte Folded Spill
	mul.f.rn r16, r4, r16
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r24, r16
	loadli.w r24,  -852(r30)                # 4-byte Folded Reload
	sub.f.rn r19, r24, r16
	mul.f.rn r24, r4, r19
	storeli.w r19, -772(r30)                # 4-byte Folded Spill
	loadli.w r19,  -212(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r24
	loadli.w r24,  -844(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r24, r16
	mul.f.rn r24, r19, r4
	storeli.w r4, -780(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r16, r24
	loadli.w r24,  -832(r30)                # 4-byte Folded Reload
	sub.f.rn r19, r24, r16
	mul.f.rn r24, r4, r19
	storeli.w r19, -760(r30)                # 4-byte Folded Spill
	loadli.w r19,  -948(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r24
	loadli.w r24,  -820(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r24, r16
	loadli.w r24,  -480(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r1, r24
	mul.f.rn r24, r19, r4
	storeli.w r4, -752(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -968(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r1, r7
	loadli.w r7,  -872(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r16, r24
	loadli.w r24,  -468(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r24, r2
	add.f.rn r1, r4, r1
	sub.f.rn r4, r7, r16
	loadli.w r7,  -912(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	mul.f.rn r2, r18, r2
	loadli.w r7,  -220(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r7, r4
	loadli.w r7,  -908(r30)                 # 4-byte Folded Reload
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	add.f.rn r1, r1, r2
	add.f.rn r2, r16, r24
	loadli.w r16,  -484(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r16, r3
	add.f.rn r1, r7, r1
	loadli.w r7,  -856(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -224(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r7, r2
	loadli.w r7,  -168(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r7, r3
	mul.f.rn r7, r20, r20
	mul.f.rn r16, r16, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -500(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r7
	loadli.w r7,  -904(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r16
	loadli.w r16,  -896(r30)                # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	loadli.w r7,  -840(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r25, r3
	sub.f.rn r7, r7, r2
	loadli.w r25,  -720(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -516(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r5, r7
	add.f.rn r1, r16, r1
	loadli.w r16,  -172(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	mul.f.rn r3, r16, r3
	mul.f.rn r16, r22, r22
	add.f.rn r2, r2, r5
	loadli.w r5,  -824(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r16
	sub.f.rn r20, r5, r2
	loadli.w r5,  -884(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -232(r30)                # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -812(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r20
	mul.f.rn r20, r20, r20
	mul.f.rn r5, r5, r5
	add.f.rn r1, r1, r3
	loadli.w r3,  -548(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r16
	mul.f.rn r3, r3, r5
	loadli.w r5,  -880(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -800(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r5, r2
	mul.f.rn r5, r11, r11
	loadli.w r11,  -552(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -236(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r16
	mul.f.rn r5, r11, r5
	loadli.w r11,  -864(r30)                # 4-byte Folded Reload
	storeli.w r16, -168(r30)                # 4-byte Folded Spill
	add.f.rn r11, r11, r1
	loadli.w r1,  -184(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	mul.f.rn r3, r1, r5
	loadli.w r1,  -784(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r6, r6
	sub.f.rn r18, r1, r2
	loadli.w r1,  -564(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r11, r3
	mul.f.rn r5, r1, r5
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r1, r18
	loadli.w r1,  -848(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r18, r18
	add.f.rn r3, r1, r3
	loadli.w r1,  -188(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r1, r5
	loadli.w r1,  -808(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	mul.f.rn r11, r1, r1
	loadli.w r1,  -580(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	mul.f.rn r5, r1, r11
	loadli.w r1,  -764(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r1, r2
	loadli.w r1,  -836(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r1, r3
	loadli.w r1,  -192(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r1, r5
	loadli.w r1,  -796(r30)                 # 4-byte Folded Reload
	storeli.w r11, -172(r30)                # 4-byte Folded Spill
	mul.f.rn r6, r1, r1
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r1, r11
	add.f.rn r3, r3, r5
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r1, r6
	loadli.w r1,  -828(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r2, r11
	add.f.rn r3, r1, r3
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r14, r14
	mul.f.rn r14, r21, r21
	mul.f.rn r5, r1, r5
	loadli.w r1,  -748(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r1, r6
	loadli.w r1,  -736(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	mul.f.rn r5, r1, r11
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r1, r2
	loadli.w r1,  -804(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r3, r1, r3
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r1, r5
	add.f.rn r11, r6, r11
	loadli.w r1,  -732(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r1, r11
	add.f.rn r3, r3, r5
	loadli.w r1,  -916(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r1, r14
	loadli.w r1,  -792(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r1, r3
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r1, r6
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	mul.f.rn r5, r1, r5
	loadli.w r1,  -788(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r1, r1
	add.f.rn r11, r11, r14
	loadli.w r1,  -920(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	mul.f.rn r5, r1, r16
	loadli.w r1,  -724(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r1, r11
	loadli.w r1,  -776(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r1, r3
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r1, r5
	loadli.w r1,  -772(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r1, r1
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r1, r16
	add.f.rn r3, r3, r5
	loadli.w r1,  -924(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r16
	mul.f.rn r5, r1, r14
	loadli.w r1,  -768(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r1, r3
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r21
	mul.f.rn r5, r1, r5
	loadli.w r1,  -780(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r1, r1
	loadli.w r1,  -716(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r1, r11
	loadli.w r1,  -928(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r14, r5
	mul.f.rn r14, r1, r21
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r1, r3
	loadli.w r1,  -756(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r5, r1, r5
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r1, r14
	loadli.w r1,  -760(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r21
	mul.f.rn r22, r1, r1
	loadli.w r1,  -932(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r5, r14
	mul.f.rn r21, r1, r22
	loadli.w r1,  -704(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r1, r11
	loadli.w r1,  -744(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r1, r14
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r1, r21
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	mul.f.rn r22, r1, r5
	loadli.w r1,  -752(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r5, r5
	mul.f.rn r24, r1, r1
	add.f.rn r14, r14, r21
	loadli.w r1,  -936(r30)                 # 4-byte Folded Reload
	add.f.rn r21, r11, r22
	mul.f.rn r22, r1, r24
	loadli.w r1,  -740(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r1, r14
	loadli.w r1,  -696(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r1, r21
	mul.f.rn r22, r19, r22
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r19,  -1016(r30)               # 4-byte Folded Reload
	mul.f.rn r24, r1, r1
	mul.f.rn r1, r19, r11
	add.f.rn r14, r14, r22
	loadli.w r22,  -940(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	mul.f.rn r22, r22, r24
	mul.f.rn r24, r4, r4
	loadli.w r4,  -268(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r21, r1
	loadli.w r21,  -728(r30)                # 4-byte Folded Reload
	add.f.rn r21, r21, r14
	loadli.w r14,  -220(r30)                # 4-byte Folded Reload
	mul.f.rn r22, r14, r22
	loadli.w r14,  -688(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r14, r1
	add.f.rn r21, r21, r22
	loadli.w r22,  -944(r30)                # 4-byte Folded Reload
	mul.f.rn r22, r22, r24
	mul.f.rn r24, r4, r14
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r14, r14
	add.f.rn r21, r25, r21
	loadli.w r25,  -960(r30)                # 4-byte Folded Reload
	mul.f.rn r22, r4, r22
	add.f.rn r1, r1, r24
	loadli.w r24,  -712(r30)                # 4-byte Folded Reload
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	add.f.rn r21, r21, r22
	loadli.w r22,  -952(r30)                # 4-byte Folded Reload
	mul.f.rn r22, r22, r7
	loadli.w r7,  -676(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r1
	add.f.rn r21, r24, r21
	mul.f.rn r22, r4, r22
	loadli.w r4,  -272(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r4, r7
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r21, r21, r22
	loadli.w r22,  -956(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r22, r20
	loadli.w r22,  -708(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r24
	add.f.rn r21, r22, r21
	mul.f.rn r22, r4, r20
	loadli.w r20,  -668(r30)                # 4-byte Folded Reload
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	sub.f.rn r20, r20, r1
	mul.f.rn r24, r4, r4
	loadli.w r4,  -276(r30)                 # 4-byte Folded Reload
	add.f.rn r21, r21, r22
	mul.f.rn r22, r4, r20
	mul.f.rn r24, r25, r24
	loadli.w r25,  -700(r30)                # 4-byte Folded Reload
	loadli.w r4,  -280(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r20, r20
	add.f.rn r21, r25, r21
	loadli.w r25,  -692(r30)                # 4-byte Folded Reload
	add.f.rn r22, r1, r22
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r1, r24
	loadli.w r1,  -660(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r22
	add.f.rn r21, r21, r24
	loadli.w r24,  -964(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r24, r18
	mul.f.rn r24, r4, r1
	loadli.w r4,  -240(r30)                 # 4-byte Folded Reload
	add.f.rn r21, r25, r21
	mul.f.rn r18, r4, r18
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	add.f.rn r22, r22, r24
	mul.f.rn r25, r4, r4
	loadli.w r4,  -244(r30)                 # 4-byte Folded Reload
	add.f.rn r21, r21, r18
	loadli.w r18,  -972(r30)                # 4-byte Folded Reload
	mul.f.rn r24, r18, r25
	loadli.w r25,  -684(r30)                # 4-byte Folded Reload
	loadli.w r18,  -648(r30)                # 4-byte Folded Reload
	add.f.rn r21, r25, r21
	sub.f.rn r18, r18, r22
	mul.f.rn r24, r4, r24
	loadli.w r4,  -284(r30)                 # 4-byte Folded Reload
	mul.f.rn r25, r4, r18
	loadli.w r4,  -248(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r18, r18
	add.f.rn r21, r21, r24
	loadli.w r24,  -980(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r24, r2
	loadli.w r24,  -680(r30)                # 4-byte Folded Reload
	add.f.rn r22, r22, r25
	loadli.w r25,  -672(r30)                # 4-byte Folded Reload
	add.f.rn r21, r24, r21
	mul.f.rn r24, r4, r2
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -288(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r22
	add.f.rn r21, r21, r24
	loadli.w r24,  -984(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r24, r6
	mul.f.rn r24, r4, r2
	loadli.w r4,  -252(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r21, r25, r21
	loadli.w r25,  -1080(r30)               # 4-byte Folded Reload
	mul.f.rn r6, r4, r6
	add.f.rn r22, r22, r24
	loadli.w r24,  -988(r30)                # 4-byte Folded Reload
	loadli.w r4,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r24, r16
	loadli.w r24,  -664(r30)                # 4-byte Folded Reload
	add.f.rn r21, r21, r6
	loadli.w r6,  -628(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r22
	add.f.rn r21, r24, r21
	mul.f.rn r24, r4, r6
	loadli.w r4,  -256(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	mul.f.rn r16, r4, r16
	loadli.w r4,  -260(r30)                 # 4-byte Folded Reload
	add.f.rn r22, r22, r24
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	add.f.rn r16, r21, r16
	loadli.w r21,  -992(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r21, r3
	loadli.w r3,  -620(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r22
	add.f.rn r16, r24, r16
	mul.f.rn r21, r4, r21
	loadli.w r4,  -296(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r4, r3
	loadli.w r4,  -264(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r16, r21
	loadli.w r21,  -996(r30)                # 4-byte Folded Reload
	mul.f.rn r5, r21, r5
	add.f.rn r21, r22, r24
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	loadli.w r24,  -644(r30)                # 4-byte Folded Reload
	add.f.rn r16, r22, r16
	mul.f.rn r22, r4, r5
	loadli.w r5,  -608(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -300(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r21
	add.f.rn r16, r16, r22
	loadli.w r22,  -1000(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r22, r11
	mul.f.rn r22, r4, r5
	loadli.w r4,  -268(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r5, r5
	add.f.rn r16, r24, r16
	loadli.w r24,  -1084(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r19, r11
	add.f.rn r21, r21, r22
	loadli.w r22,  -636(r30)                # 4-byte Folded Reload
	loadli.w r19,  -292(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r11
	loadli.w r11,  -1004(r30)               # 4-byte Folded Reload
	mul.f.rn r14, r11, r14
	loadli.w r11,  -600(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r21
	add.f.rn r16, r22, r16
	mul.f.rn r14, r4, r14
	loadli.w r4,  -304(r30)                 # 4-byte Folded Reload
	mul.f.rn r22, r4, r11
	loadli.w r4,  -272(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	add.f.rn r14, r16, r14
	add.f.rn r16, r21, r22
	loadli.w r21,  -1008(r30)               # 4-byte Folded Reload
	mul.f.rn r21, r21, r7
	loadli.w r7,  -632(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r7, r14
	loadli.w r7,  -588(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r4, r21
	sub.f.rn r7, r7, r16
	loadli.w r4,  -308(r30)                 # 4-byte Folded Reload
	add.f.rn r14, r14, r21
	loadli.w r21,  -1012(r30)               # 4-byte Folded Reload
	mul.f.rn r22, r4, r7
	loadli.w r4,  -276(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	mul.f.rn r20, r21, r20
	loadli.w r21,  -624(r30)                # 4-byte Folded Reload
	add.f.rn r14, r21, r14
	mul.f.rn r21, r1, r1
	add.f.rn r16, r16, r22
	loadli.w r1,  -572(r30)                 # 4-byte Folded Reload
	loadli.w r22,  -616(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r4, r20
	loadli.w r4,  -280(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r16
	add.f.rn r14, r14, r20
	loadli.w r20,  -1020(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r20, r21
	mul.f.rn r21, r25, r1
	add.f.rn r14, r22, r14
	loadli.w r22,  -1108(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r4, r20
	add.f.rn r16, r16, r21
	loadli.w r21,  -612(r30)                # 4-byte Folded Reload
	loadli.w r4,  -284(r30)                 # 4-byte Folded Reload
	add.f.rn r20, r14, r20
	loadli.w r14,  -1024(r30)               # 4-byte Folded Reload
	mul.f.rn r18, r14, r18
	loadli.w r14,  -560(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r14, r16
	add.f.rn r20, r21, r20
	mul.f.rn r18, r4, r18
	loadli.w r4,  -288(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r24, r14
	mul.f.rn r14, r14, r14
	add.f.rn r18, r20, r18
	loadli.w r20,  -1032(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r20, r2
	add.f.rn r16, r16, r21
	loadli.w r20,  -604(r30)                # 4-byte Folded Reload
	loadli.w r21,  -1040(r30)               # 4-byte Folded Reload
	add.f.rn r18, r20, r18
	mul.f.rn r6, r21, r6
	loadli.w r21,  -596(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r4, r2
	loadli.w r2,  -540(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1100(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r2, r16
	mul.f.rn r6, r19, r6
	loadli.w r19,  -296(r30)                # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r4, r2
	mul.f.rn r2, r2, r2
	add.f.rn r18, r21, r18
	loadli.w r21,  -584(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r20
	mul.f.rn r20, r3, r3
	loadli.w r3,  -524(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r18, r6
	loadli.w r18,  -1044(r30)               # 4-byte Folded Reload
	mul.f.rn r18, r18, r20
	sub.f.rn r3, r3, r16
	add.f.rn r6, r21, r6
	loadli.w r21,  -1116(r30)               # 4-byte Folded Reload
	mul.f.rn r18, r19, r18
	mul.f.rn r20, r22, r3
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r6, r6, r18
	loadli.w r18,  -1052(r30)               # 4-byte Folded Reload
	add.f.rn r16, r16, r20
	loadli.w r20,  -576(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r18, r5
	loadli.w r5,  -508(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r20, r6
	sub.f.rn r5, r5, r16
	mul.f.rn r18, r19, r18
	loadli.w r19,  -1120(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r21, r5
	mul.f.rn r5, r5, r5
	add.f.rn r6, r6, r18
	loadli.w r18,  -1036(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r18, r11
	loadli.w r18,  -568(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r20
	loadli.w r20,  -556(r30)                # 4-byte Folded Reload
	add.f.rn r18, r18, r6
	loadli.w r6,  -304(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r6, r11
	loadli.w r6,  -492(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r16
	add.f.rn r11, r18, r11
	loadli.w r18,  -1056(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r18, r7
	mul.f.rn r18, r19, r6
	mul.f.rn r6, r6, r6
	add.f.rn r11, r20, r11
	loadli.w r20,  -308(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r20, r7
	add.f.rn r16, r16, r18
	mul.f.rn r18, r1, r1
	loadli.w r1,  -476(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -1132(r30)               # 4-byte Folded Reload
	add.f.rn r7, r11, r7
	loadli.w r11,  -1060(r30)               # 4-byte Folded Reload
	sub.f.rn r1, r1, r16
	mul.f.rn r11, r11, r18
	loadli.w r18,  -544(r30)                # 4-byte Folded Reload
	add.f.rn r7, r18, r7
	mul.f.rn r18, r20, r1
	mul.f.rn r1, r1, r1
	mul.f.rn r11, r25, r11
	add.f.rn r16, r16, r18
	loadli.w r18,  -528(r30)                # 4-byte Folded Reload
	add.f.rn r7, r7, r11
	loadli.w r11,  -1068(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r11, r14
	loadli.w r14,  -460(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r14, r16
	add.f.rn r7, r18, r7
	mul.f.rn r11, r24, r11
	loadli.w r24,  -1144(r30)               # 4-byte Folded Reload
	mul.f.rn r18, r24, r14
	add.f.rn r7, r7, r11
	loadli.w r11,  -1072(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r11, r2
	add.f.rn r11, r16, r18
	loadli.w r16,  -520(r30)                # 4-byte Folded Reload
	loadli.w r18,  -504(r30)                # 4-byte Folded Reload
	add.f.rn r7, r16, r7
	loadli.w r16,  -452(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r4, r2
	sub.f.rn r16, r16, r11
	loadli.w r4,  -1152(r30)                # 4-byte Folded Reload
	add.f.rn r2, r7, r2
	loadli.w r7,  -1076(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r7, r3
	mul.f.rn r7, r4, r16
	add.f.rn r2, r18, r2
	loadli.w r18,  -1156(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r22, r3
	add.f.rn r7, r11, r7
	loadli.w r11,  -496(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	loadli.w r3,  -1092(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -440(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r7
	add.f.rn r2, r11, r2
	mul.f.rn r3, r21, r3
	mul.f.rn r11, r18, r5
	mul.f.rn r5, r5, r5
	add.f.rn r2, r2, r3
	add.f.rn r3, r7, r11
	loadli.w r7,  -1096(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r7, r6
	loadli.w r7,  -488(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r7, r2
	loadli.w r7,  -432(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r19, r6
	sub.f.rn r7, r7, r3
	loadli.w r19,  -1160(r30)               # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -1048(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r19, r7
	mul.f.rn r7, r7, r7
	mul.f.rn r1, r6, r1
	loadli.w r6,  -472(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r6, r2
	add.f.rn r3, r3, r11
	mul.f.rn r6, r14, r14
	loadli.w r11,  -424(r30)                # 4-byte Folded Reload
	loadli.w r14,  -464(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r20, r1
	loadli.w r20,  -1136(r30)               # 4-byte Folded Reload
	sub.f.rn r11, r11, r3
	add.f.rn r1, r2, r1
	loadli.w r2,  -1112(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r6
	mul.f.rn r6, r20, r11
	add.f.rn r1, r14, r1
	mul.f.rn r14, r16, r16
	loadli.w r16,  -1168(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r24, r2
	add.f.rn r3, r3, r6
	loadli.w r6,  -412(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1124(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r3
	mul.f.rn r2, r2, r14
	loadli.w r14,  -456(r30)                # 4-byte Folded Reload
	add.f.rn r1, r14, r1
	mul.f.rn r14, r16, r6
	mul.f.rn r6, r6, r6
	mul.f.rn r2, r4, r2
	loadli.w r4,  -1220(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r14
	loadli.w r14,  -1140(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1128(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r14, r7
	loadli.w r14,  -444(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r5
	loadli.w r5,  -448(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	loadli.w r5,  -404(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r18, r2
	sub.f.rn r5, r5, r3
	loadli.w r18,  -1176(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	mul.f.rn r2, r18, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r14, r1
	add.f.rn r2, r3, r2
	mul.f.rn r3, r19, r7
	mul.f.rn r7, r11, r11
	loadli.w r11,  -392(r30)                # 4-byte Folded Reload
	loadli.w r14,  -436(r30)                # 4-byte Folded Reload
	loadli.w r19,  -1184(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1148(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r2
	mul.f.rn r3, r3, r7
	add.f.rn r1, r14, r1
	mul.f.rn r7, r19, r11
	loadli.w r14,  -1188(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r20, r3
	add.f.rn r2, r2, r7
	loadli.w r7,  -428(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1064(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	loadli.w r6,  -384(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r2
	add.f.rn r1, r7, r1
	mul.f.rn r3, r16, r3
	loadli.w r16,  -1196(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r14, r6
	add.f.rn r1, r1, r3
	loadli.w r3,  -1088(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	add.f.rn r2, r2, r7
	loadli.w r5,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -372(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r11, r11
	loadli.w r11,  -416(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r18, r3
	sub.f.rn r7, r7, r2
	loadli.w r18,  -156(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1104(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	mul.f.rn r5, r16, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r11, r1
	loadli.w r11,  -1208(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r19, r3
	add.f.rn r2, r2, r5
	mul.f.rn r5, r6, r6
	loadli.w r6,  -1164(r30)                # 4-byte Folded Reload
	loadli.w r19,  -1224(r30)               # 4-byte Folded Reload
	mul.f.rn r5, r6, r5
	add.f.rn r1, r1, r3
	loadli.w r6,  -408(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -368(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r2
	add.f.rn r1, r6, r1
	mul.f.rn r5, r14, r5
	loadli.w r14,  -1212(r30)               # 4-byte Folded Reload
	mul.f.rn r6, r11, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r5
	loadli.w r5,  -1172(r30)                # 4-byte Folded Reload
	mul.f.rn r5, r5, r7
	loadli.w r7,  -400(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -364(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	mul.f.rn r5, r16, r5
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r5
	loadli.w r5,  -1180(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r14, r6
	mul.f.rn r3, r5, r3
	loadli.w r5,  -396(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	add.f.rn r2, r2, r7
	mul.f.rn r5, r6, r6
	loadli.w r6,  -360(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -388(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r11, r3
	loadli.w r11,  -1216(r30)               # 4-byte Folded Reload
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1192(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	mul.f.rn r5, r11, r6
	mul.f.rn r6, r6, r6
	add.f.rn r1, r7, r1
	mul.f.rn r3, r14, r3
	add.f.rn r2, r2, r5
	loadli.w r5,  -356(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1200(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r2
	mul.f.rn r3, r3, r6
	loadli.w r6,  -380(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	.loc	2 230 30 is_stmt 1              # triton_helpers.py:230:30
	mul.f.rn r6, r5, r5
	.loc	2 229 25                        # triton_helpers.py:229:25
	mul.f.rn r5, r15, r5
	.loc	2 0 0 is_stmt 0                 # triton_helpers.py:0:0
	mul.f.rn r3, r11, r3
	.loc	2 229 17                        # triton_helpers.py:229:17
	add.f.rn r2, r2, r5
	.loc	2 0 0                           # triton_helpers.py:0:0
	add.f.rn r1, r1, r3
	.loc	2 230 38 is_stmt 1              # triton_helpers.py:230:38
	loadli.w r3,  -1204(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	.loc	2 230 15 is_stmt 0              # triton_helpers.py:230:15
	loadli.w r6,  -376(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r19)
	add.f.rn r1, r6, r1
	.loc	2 230 49                        # triton_helpers.py:230:49
	mul.f.rn r3, r15, r3
	.loc	2 230 22                        # triton_helpers.py:230:22
	add.f.rn r1, r1, r3
	stores.w r1, 0(r4)
.Ltmp4:
.LBB0_163:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 22                          # triton_helpers.py:0:22
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loads.w r1, 0(r4)
	.loc	1 81 25 is_stmt 1               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:81:25
	lui r2, 237568
	addli r3, zero, 0
	mul.f.rn r1, r1, r2
	.loc	1 83 24                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:83:24
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	.loc	1 84 32                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:84:32
	sqrt.f.rn r2, r1
	loads.w r1, 0(r19)
	div.f.rn r2, r23, r2
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	float2bfloat.rn r6, r6
	float2bfloat.rn r7, r14
	addli r3, r3, 4
	store.h r6, 0(r5)
	store.h r7, 2(r5)
	mfence { lm }
	beq r3, r8, .LBB0_2
.LBB0_165:                              #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	add.s r5, r27, r3
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	add.s r6, r26, r3
	load.hu r7, 0(r6)
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	load.hu r11, 0(r5)
	load.hu r14, 2(r5)
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	bfloat2float.rn r7, r7
	.loc	1 43 41                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:43:41
	bfloat2float.rn r11, r11
	.loc	1 48 22                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:48:22
	add.f.rn r11, r7, r11
	.loc	1 42 51                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:42:51
	load.hu r7, 2(r6)
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	and r15, r11, r10
	setlt.u r16, r13, r15
	bneq r16, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 23 is_stmt 0                # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r6, r11, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	or r6, r11, r17
.LBB0_168:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 0                           # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:0
	bfloat2float.rn r7, r7
	bfloat2float.rn r14, r14
	add.f.rn r14, r7, r14
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	and r16, r14, r10
	setlt.u r7, r13, r16
	bneq r7, zero, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	addli r7, r14, 0
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	setlt.u r15, r12, r15
	beq r15, zero, .LBB0_171
	j .LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_165 Depth=2
	or r7, r14, r17
	setlt.u r15, r12, r15
	bneq r15, zero, .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r6, r6, r9
.LBB0_172:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 49 23                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:49:23
	setlt.u r11, r12, r16
	bneq r11, zero, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 23                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:23
	srli r7, r14, 16
	andi r7, r7, 1
	add.s r7, r14, r7
	add.s r7, r7, r28
	and r7, r7, r9
.LBB0_174:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 79 24 is_stmt 1               # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:79:24
	sub.f.rn r6, r6, r1
	.loc	1 85 24                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:85:24
	mul.f.rn r11, r2, r6
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	and r15, r11, r10
	setlt.u r6, r13, r15
	bneq r6, zero, .LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 53 is_stmt 0                # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:53
	addli r6, r11, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	or r6, r11, r17
.LBB0_177:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 0                           # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:0
	sub.f.rn r7, r7, r1
	mul.f.rn r7, r2, r7
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	and r16, r7, r10
	setlt.u r14, r13, r16
	bneq r14, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 53                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:53
	addli r14, r7, 0
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	setlt.u r15, r12, r15
	beq r15, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_165 Depth=2
	or r14, r7, r17
	setlt.u r15, r12, r15
	bneq r15, zero, .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 53                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:53
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r6, r6, r9
.LBB0_181:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 87 53                         # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:87:53
	setlt.u r11, r12, r16
	bneq r11, zero, .LBB0_164
# %bb.182:                              #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 53                          # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:0:53
	srli r11, r7, 16
	andi r11, r11, 1
	add.s r7, r7, r11
	add.s r7, r7, r28
	and r14, r7, r9
	j .LBB0_164
.LBB0_183:                              # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py:63:4
	addli sp, sp, 1224
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
	.long	1288                            # 0x508
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
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xb:0x49 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x27 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x19 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	85                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xc DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	237                             # DW_AT_call_line
	.byte	46                              # DW_AT_call_column
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
.asciz	"czz54tzp5qmlrcynhef5kk2zcevtweyi6uitgk5eysx6oro2vv2w.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/zz" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
