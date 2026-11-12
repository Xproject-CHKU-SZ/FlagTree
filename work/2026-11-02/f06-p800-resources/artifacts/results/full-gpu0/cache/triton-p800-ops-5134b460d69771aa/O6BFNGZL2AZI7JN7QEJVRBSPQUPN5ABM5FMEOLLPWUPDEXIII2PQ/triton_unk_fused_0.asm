	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ip" "cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py"
	.loc	1 22 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -456
	addli r30, sp, 392
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r13, 0
	loadli.w r10,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	ori r12, r5, 4095
	lui r5, 1046527
	loadli.w r9,  40(r30)
	add.s r11, r3, r2
	ori r5, r5, 4095
	mul.s r4, r10, r4
	stores.w zero, 1040(r11)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	stores.w r5, 0(r11)
	mul.s r14, r4, r9
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	ble.s r14, r13, .LBB0_670
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	load_param_i r6, 1
	lui r7, 1048575
	addli r24, zero, 1
	load.d r[17:18], 16(r30)
	load.d r[19:20], 0(r30)
	addli r22, r11, 1040
	storeli.w r11, -372(r30)                # 4-byte Folded Spill
	storeli.w r12, -376(r30)                # 4-byte Folded Spill
	storeli.w r14, -380(r30)                # 4-byte Folded Spill
	div.s r15, r1, r4
	storeli.w r6, -244(r30)                 # 4-byte Folded Spill
	ori r7, r7, 3840
	load.d r[4:5], 8(r30)
	storeli.w r22, -388(r30)                # 4-byte Folded Spill
	and r3, r3, r7
	add.s r16, r3, r2
	slli r6, r15, 6
	addli r21, r16, 1040
	storeli.w r15, -384(r30)                # 4-byte Folded Spill
	sub.s r6, r1, r6
	andi r1, r1, 63
	slli r25, r6, 1
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	lui r1, 7
	sext_int2long r[6:7], r25
	ori r1, r1, 4095
	storeli.w r25, -392(r30)                # 4-byte Folded Spill
	sll.d r[2:3], r[6:7], r24
	ori r6, r25, 1
	storeli.w r1, -140(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	addli r7, r30, -64
	add.ul r[2:3], r[4:5], r[2:3]
	storeli.w r6, -248(r30)                 # 4-byte Folded Spill
	ori r6, r1, 4095
	store.d r[2:3], -256(r30)               # 8-byte Folded Spill
	lui r2, 522239
	storeli.w r6, -156(r30)                 # 4-byte Folded Spill
	ori r8, r2, 4095
	storeli.w r8, -160(r30)                 # 4-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	loadli.w r3,  -248(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 58 48 prologue_end            # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	float2bfloat.rn r2, r2
	float2bfloat.rn r1, r1
	addli r4, r7, 2
	.loc	1 58 0 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	load.d r[7:8], -152(r30)                # 8-byte Folded Reload
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	store.h r2, -64(r30)
	store.h r1, -62(r30)
	lui r1, 983040
	lui r2, 983040
	add.s r3, r3, r27
	addli r27, zero, 2
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	add.ul r[7:8], r[17:18], r[7:8]
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	mfence { lm }
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	sext_int2long r[5:6], r3
	addli r3, r30, -64
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	or r1, r27, r1
	or r2, r27, r2
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	sll.d r[5:6], r[5:6], r24
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	s_lm2gm r1, r3, 0(r[7:8])
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r7, r30, -64
	.loc	1 58 0                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:0
	add.ul r[5:6], r[17:18], r[5:6]
	add.s r13, r13, r1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	s_lm2gm r2, r4, 0(r[5:6])
	mfence { lm }
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -160(r30)                 # 4-byte Folded Reload
	blt.s r13, r14, .LBB0_3
	j .LBB0_670
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	div.s r1, r13, r9
	.loc	1 39 37 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	lui r3, 983040
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	store.h zero, -128(r30)
	store.h zero, -126(r30)
	mfence { lm }
	div.s r1, r1, r10
	.loc	1 29 23                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:29:23
	add.s r28, r1, r15
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	lui r1, 983040
	.loc	1 38 41 is_stmt 0               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:41
	slli r27, r28, 7
	.loc	1 38 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:37
	add.s r2, r27, r25
	.loc	1 38 30                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:30
	sext_int2long r[4:5], r2
	addli r2, zero, 4
	sll.d r[4:5], r[4:5], r24
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	or r1, r2, r1
	.loc	1 39 37 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	or r2, r2, r3
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	addli r3, r30, -128
	store.d r[4:5], -152(r30)               # 8-byte Folded Spill
	.loc	1 38 30 is_stmt 0               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:30
	add.ul r[4:5], r[19:20], r[4:5]
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	l_gm2lm r1, r3, 0(r[4:5])
	.loc	1 39 37 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	load.d r[3:4], -256(r30)                # 8-byte Folded Reload
	l_gm2lm r2, r7, 0(r[3:4])
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	load.hu r2, -64(r30)
	.loc	1 38 46                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:38:46
	bfloat2float.rn r1, r1
	.loc	1 39 37                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:39:37
	bfloat2float.rn r2, r2
	.loc	1 44 18                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:44:18
	add.f.rn r1, r1, r2
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r2, 522240
	and r3, r1, r6
	setlt.u r2, r2, r3
	bneq r2, zero, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	addli r23, r1, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r2, 1024
	or r23, r1, r2
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	load.hu r2, -126(r30)
	load.hu r4, -62(r30)
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	lui r5, 522240
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	bfloat2float.rn r2, r2
	bfloat2float.rn r4, r4
	add.f.rn r2, r2, r4
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	and r4, r2, r6
	setlt.u r5, r5, r4
	bneq r5, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	addli r26, r2, 0
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r3, r8, r3
	beq r3, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	lui r5, 1024
	or r26, r2, r5
	setlt.u r3, r8, r3
	bneq r3, zero, .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	loadli.w r3,  -140(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r3
	lui r3, 1048560
	and r23, r1, r3
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:45:19
	setlt.u r1, r8, r4
	bneq r1, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -140(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r26, r1, r2
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r2, r26, r23
	addli r1, r23, 0
	bneq r2, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	slli r2, r23, 9
	slli r3, r26, 9
	srli r4, r23, 23
	srli r5, r26, 23
	storeli.w r23, -132(r30)                # 4-byte Folded Spill
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r2, r3
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -132(r30)                 # 4-byte Folded Reload
	addli r3, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	addli r2, r26, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_22
.Ltmp2:
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 49 35 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:49:35
	addli r1, zero, 16
	blt.s r28, r1, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:35
	lui r2, 1046528
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	stores.w r2, 0(r11)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loadli.w r1,  -136(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_534
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r16)
	loads.w r1, 4(r16)
.Ltmp3:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r3, 9
	slli r5, r1, 9
	srli r6, r3, 23
	srli r7, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r4, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_548
# %bb.28:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_549
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r11, 8(r16)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r11, r1
	bneq r3, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r11, 0
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r11, 23
	srli r6, r1, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_550
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_551
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	storeli.w r26, -268(r30)                # 4-byte Folded Spill
	storeli.w r13, -260(r30)                # 4-byte Folded Spill
	and r1, r3, r1
	bneq r1, zero, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r2, 0
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r2, 68(r16)
	loads.w r4, 176(r16)
	loads.w r26, 12(r16)
	loads.w r8, 16(r16)
	loads.w r19, 20(r16)
	loads.w r22, 24(r16)
	loads.w r1, 28(r16)
	loads.w r12, 32(r16)
	loads.w r13, 36(r16)
	loads.w r14, 40(r16)
	loads.w r17, 44(r16)
	loads.w r18, 48(r16)
	loads.w r9, 52(r16)
	loads.w r15, 56(r16)
	loads.w r6, 60(r16)
	loads.w r3, 64(r16)
	loads.w r24, 72(r16)
	loads.w r10, 84(r16)
	loads.w r20, 108(r16)
	loads.w r25, 156(r16)
	addli r7, r28, 0
	addli r5, r11, 0
	storeli.w r27, -264(r30)                # 4-byte Folded Spill
	storeli.w r2, -368(r30)                 # 4-byte Folded Spill
	loads.w r2, 76(r16)
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	loads.w r4, 180(r16)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r23, r26, r11
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	loads.w r2, 80(r16)
	storeli.w r4, -316(r30)                 # 4-byte Folded Spill
	loads.w r4, 184(r16)
	storeli.w r2, -360(r30)                 # 4-byte Folded Spill
	loads.w r2, 88(r16)
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	loads.w r4, 188(r16)
	storeli.w r2, -240(r30)                 # 4-byte Folded Spill
	loads.w r2, 92(r16)
	storeli.w r4, -312(r30)                 # 4-byte Folded Spill
	loads.w r4, 192(r16)
	storeli.w r2, -348(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r16)
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	loads.w r4, 196(r16)
	storeli.w r2, -236(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r16)
	storeli.w r4, -308(r30)                 # 4-byte Folded Spill
	loads.w r4, 200(r16)
	storeli.w r2, -356(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r16)
	storeli.w r4, -304(r30)                 # 4-byte Folded Spill
	loads.w r4, 204(r16)
	storeli.w r2, -232(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r16)
	storeli.w r4, -184(r30)                 # 4-byte Folded Spill
	loads.w r4, 208(r16)
	storeli.w r2, -228(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r16)
	storeli.w r4, -296(r30)                 # 4-byte Folded Spill
	loads.w r4, 212(r16)
	storeli.w r2, -340(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r16)
	storeli.w r4, -180(r30)                 # 4-byte Folded Spill
	loads.w r4, 216(r16)
	storeli.w r2, -224(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r16)
	storeli.w r4, -292(r30)                 # 4-byte Folded Spill
	loads.w r4, 220(r16)
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r16)
	storeli.w r4, -288(r30)                 # 4-byte Folded Spill
	loads.w r4, 224(r16)
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r16)
	storeli.w r4, -176(r30)                 # 4-byte Folded Spill
	loads.w r4, 228(r16)
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r16)
	storeli.w r4, -284(r30)                 # 4-byte Folded Spill
	loads.w r4, 232(r16)
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r16)
	storeli.w r4, -172(r30)                 # 4-byte Folded Spill
	loads.w r4, 236(r16)
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r16)
	storeli.w r4, -280(r30)                 # 4-byte Folded Spill
	loads.w r4, 240(r16)
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r16)
	storeli.w r4, -168(r30)                 # 4-byte Folded Spill
	loads.w r4, 244(r16)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r16)
	storeli.w r4, -276(r30)                 # 4-byte Folded Spill
	loads.w r4, 248(r16)
	storeli.w r2, -208(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r16)
	storeli.w r4, -164(r30)                 # 4-byte Folded Spill
	loads.w r4, 252(r16)
	storeli.w r2, -204(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r16)
	storeli.w r4, -272(r30)                 # 4-byte Folded Spill
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r16)
	storeli.w r2, -200(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r16)
	bneq r23, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r26, 0
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	slli r23, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r11, 9
	srli r28, r26, 23
	srli r27, r11, 23
	seteq r23, r23, zero
	seteq r4, r4, zero
	andi r28, r28, 255
	andi r27, r27, 255
	setlti r28, r28, 255
	setlti r27, r27, 255
	or r23, r28, r23
	or r4, r27, r4
	and r4, r4, r23
	bneq r4, zero, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r5, 0
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	storeli.w r25, -352(r30)                # 4-byte Folded Spill
	addli r25, r10, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r11, 0
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r11, r5, zero
	addli r10, r24, 0
	and r4, r11, r4
	bneq r4, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r5, 0
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r8, r26
	addli r5, r26, 0
	bneq r4, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r11, r26, 9
	srli r23, r8, 23
	srli r27, r26, 23
	seteq r4, r4, zero
	seteq r11, r11, zero
	andi r23, r23, 255
	andi r27, r27, 255
	setlti r23, r23, 255
	setlti r27, r27, 255
	or r4, r23, r4
	or r11, r27, r11
	and r4, r11, r4
	bneq r4, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r27,  -356(r30)                # 4-byte Folded Reload
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r5, 0
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r26, 0
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r11, r5, zero
	and r4, r11, r4
	bneq r4, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r5, 0
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r19, r8
	addli r5, r8, 0
	bneq r4, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r19, 0
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r11, r8, 9
	srli r23, r19, 23
	srli r26, r8, 23
	seteq r4, r4, zero
	seteq r11, r11, zero
	andi r23, r23, 255
	andi r26, r26, 255
	setlti r23, r23, 255
	setlti r26, r26, 255
	or r4, r23, r4
	or r11, r26, r11
	and r4, r11, r4
	beq r4, zero, .LBB0_552
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r26,  -268(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_553
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r8, 0
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r8, r5, zero
	and r4, r8, r4
	bneq r4, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r5, 0
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r22, r19
	addli r5, r19, 0
	bneq r4, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r19, 9
	srli r11, r22, 23
	srli r23, r19, 23
	storeli.w r7, -300(r30)                 # 4-byte Folded Spill
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r11, r11, 255
	andi r23, r23, 255
	setlti r11, r11, 255
	setlti r23, r23, 255
	or r4, r11, r4
	or r8, r23, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_554
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r23,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_555
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r19, 0
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r8, r5, zero
	and r4, r8, r4
	bneq r4, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r5, 0
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r22
	addli r5, r22, 0
	bneq r4, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r22, 9
	srli r11, r1, 23
	srli r19, r22, 23
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r11, r11, 255
	andi r19, r19, 255
	setlti r11, r11, 255
	setlti r19, r19, 255
	or r4, r11, r4
	or r8, r19, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_556
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_557
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r8, r5, zero
	and r4, r8, r4
	bneq r4, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r12, r1
	loadli.w r22,  -320(r30)                # 4-byte Folded Reload
	addli r5, r1, 0
	bneq r4, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r1, 9
	srli r11, r12, 23
	srli r19, r1, 23
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r11, r11, 255
	andi r19, r19, 255
	setlti r11, r11, 255
	setlti r19, r19, 255
	or r4, r11, r4
	or r8, r19, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_558
# %bb.88:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_559
.LBB0_89:                               #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r4, r5, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r5, 0
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r13, r12
	addli r1, r12, 0
	bneq r4, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r12, 9
	srli r8, r13, 23
	srli r11, r12, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r4, r8, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_560
# %bb.96:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_561
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r12, 0
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r14, r13
	loadli.w r12,  -316(r30)                # 4-byte Folded Reload
	addli r1, r13, 0
	bneq r4, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r13, 9
	srli r8, r14, 23
	srli r11, r13, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r4, r8, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_562
# %bb.104:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_563
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r13, 0
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r17, r14
	loadli.w r13,  -260(r30)                # 4-byte Folded Reload
	addli r1, r14, 0
	bneq r4, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r14, 9
	srli r8, r17, 23
	srli r11, r14, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r4, r8, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_564
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_565
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r14, 0
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r18, r17
	loadli.w r14,  -348(r30)                # 4-byte Folded Reload
	addli r1, r17, 0
	bneq r4, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r17, 9
	srli r8, r18, 23
	srli r11, r17, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r4, r8, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_566
# %bb.120:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_567
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r17, 0
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r9, r18
	loadli.w r17,  -364(r30)                # 4-byte Folded Reload
	addli r1, r18, 0
	bneq r4, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r18, 9
	srli r8, r9, 23
	srli r11, r18, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r4, r8, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_568
# %bb.128:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_569
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r18, 0
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r15, r9
	loadli.w r18,  -368(r30)                # 4-byte Folded Reload
	addli r1, r9, 0
	bneq r4, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r9, 9
	srli r8, r15, 23
	srli r11, r9, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r11, r11, 255
	setlti r8, r8, 255
	setlti r11, r11, 255
	or r4, r8, r4
	or r5, r11, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_570
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r11,  -340(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_571
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r9, 0
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r15
	addli r1, r15, 0
	bneq r4, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r15, 9
	srli r8, r6, 23
	srli r9, r15, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r4, r8, r4
	or r5, r9, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_572
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r15, zero, .LBB0_573
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r15, 0
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r3, r6
	loadli.w r15,  -308(r30)                # 4-byte Folded Reload
	loadli.w r7,  -324(r30)                 # 4-byte Folded Reload
	addli r1, r6, 0
	bneq r4, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r6, 9
	srli r8, r3, 23
	srli r9, r6, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r4, r8, r4
	or r5, r9, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_574
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -332(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_575
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r18, r3
	addli r1, r3, 0
	bneq r4, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r3, 9
	srli r6, r18, 23
	srli r8, r3, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r8, r8, 255
	setlti r6, r6, 255
	setlti r8, r8, 255
	or r4, r6, r4
	or r5, r8, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_576
# %bb.160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_577
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r10, r18
	addli r1, r18, 0
	bneq r3, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r18, 9
	srli r5, r10, 23
	srli r6, r18, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_578
# %bb.168:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_579
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r18, 0
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r17, r10
	loadli.w r24,  -296(r30)                # 4-byte Folded Reload
	addli r1, r10, 0
	bneq r3, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_175:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r10, 9
	srli r5, r17, 23
	srli r6, r10, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_580
# %bb.176:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_581
.LBB0_177:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r10, 0
.LBB0_179:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_181:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r2, r17
	loadli.w r10,  -336(r30)                # 4-byte Folded Reload
	addli r1, r17, 0
	bneq r3, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_183:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r17, 9
	srli r5, r2, 23
	srli r6, r17, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_582
# %bb.184:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_583
.LBB0_185:                              #   in Loop: Header=BB0_3 Depth=1
	beq r2, zero, .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r17, 0
.LBB0_187:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_189:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r25, r2
	addli r1, r2, 0
	bneq r3, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_191:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r25, 23
	srli r6, r2, 23
	loadli.w r18,  -288(r30)                # 4-byte Folded Reload
	loadli.w r19,  -292(r30)                # 4-byte Folded Reload
	addli r28, r2, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_584
# %bb.192:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_585
.LBB0_193:                              #   in Loop: Header=BB0_3 Depth=1
	beq r25, zero, .LBB0_195
.LBB0_194:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r28, 0
.LBB0_195:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_197:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r2, r25
	addli r1, r25, 0
	bneq r3, zero, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_199:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r25, 9
	srli r5, r2, 23
	srli r6, r25, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_586
# %bb.200:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_587
.LBB0_201:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r25, 0
.LBB0_203:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_205:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_207
# %bb.206:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_207:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r14, 23
	addli r28, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_588
# %bb.208:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_589
.LBB0_209:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r28, 0
.LBB0_211:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_213:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_215
# %bb.214:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_215:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
	srli r5, r14, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_590
# %bb.216:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_591
.LBB0_217:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r14, 0
.LBB0_219:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_221:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r27, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_223:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r27, 23
	addli r14, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_592
# %bb.224:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_593
.LBB0_225:                              #   in Loop: Header=BB0_3 Depth=1
	beq r27, zero, .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r14, 0
.LBB0_227:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_229:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r27
	addli r1, r27, 0
	bneq r2, zero, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_231:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r27, 9
	srli r4, r4, 23
	srli r5, r27, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_594
# %bb.232:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r27, zero, .LBB0_595
.LBB0_233:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_235
.LBB0_234:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r27, 0
.LBB0_235:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_237:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_239:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r27, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_596
# %bb.240:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_597
.LBB0_241:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r27, 0
.LBB0_243:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_245:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_247:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r4, 23
	srli r5, r20, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_598
# %bb.248:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_599
.LBB0_249:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_251:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_253:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_255:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r25, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_600
# %bb.256:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_601
.LBB0_257:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r25, 0
.LBB0_259:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_261:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	loadli.w r14,  -352(r30)                # 4-byte Folded Reload
	addli r1, r11, 0
	bneq r2, zero, .LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_263:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r4, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_602
# %bb.264:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_603
.LBB0_265:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_267:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_269:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_271:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r11, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_604
# %bb.272:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_605
.LBB0_273:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r11, 0
.LBB0_275:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_277
# %bb.276:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_277:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_279
# %bb.278:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_279:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_606
# %bb.280:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_607
.LBB0_281:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_283
.LBB0_282:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_283:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_285:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_287:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r9, 23
	addli r10, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_608
# %bb.288:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_609
.LBB0_289:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_291
.LBB0_290:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r10, 0
.LBB0_291:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_293:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	loadli.w r10,  -344(r30)                # 4-byte Folded Reload
	addli r1, r9, 0
	bneq r2, zero, .LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_295:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r4, 23
	srli r5, r9, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_610
# %bb.296:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_611
.LBB0_297:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_299
.LBB0_298:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_299:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_301:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r23, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_303
# %bb.302:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r23, 0
.LBB0_303:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r23, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r23, 23
	addli r9, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_612
# %bb.304:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_613
.LBB0_305:                              #   in Loop: Header=BB0_3 Depth=1
	beq r23, zero, .LBB0_307
.LBB0_306:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r9, 0
.LBB0_307:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_309
# %bb.308:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
.LBB0_309:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r23
	loadli.w r9,  -312(r30)                 # 4-byte Folded Reload
	addli r1, r23, 0
	bneq r2, zero, .LBB0_311
# %bb.310:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_311:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r23, 9
	srli r4, r4, 23
	srli r5, r23, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_614
# %bb.312:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r23, zero, .LBB0_615
.LBB0_313:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_315
.LBB0_314:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r23, 0
.LBB0_315:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_317:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_319
# %bb.318:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_319:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r7, 23
	addli r23, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_616
# %bb.320:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_617
.LBB0_321:                              #   in Loop: Header=BB0_3 Depth=1
	beq r7, zero, .LBB0_323
.LBB0_322:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r23, 0
.LBB0_323:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_325
# %bb.324:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_325:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r7
	addli r1, r7, 0
	bneq r2, zero, .LBB0_327
# %bb.326:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_327:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r4, 23
	srli r5, r7, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_618
# %bb.328:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r7, zero, .LBB0_619
.LBB0_329:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_331
.LBB0_330:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r7, 0
.LBB0_331:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_333:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_335:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r14, 23
	addli r7, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_620
# %bb.336:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_621
.LBB0_337:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r7, 0
.LBB0_339:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_341:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	addli r1, r14, 0
	addli r7, r30, -64
	bneq r2, zero, .LBB0_343
# %bb.342:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_343:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
	srli r5, r14, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_622
# %bb.344:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_623
.LBB0_345:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_347
.LBB0_346:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r14, 0
.LBB0_347:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_349:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_351:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
	addli r28, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_624
# %bb.352:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_625
.LBB0_353:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_355
.LBB0_354:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r28, 0
.LBB0_355:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_357:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_359
# %bb.358:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_359:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r4, 23
	srli r5, r22, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_626
# %bb.360:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_627
.LBB0_361:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_363
.LBB0_362:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_363:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_365:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_367:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r22, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_628
# %bb.368:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_629
.LBB0_369:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_371
.LBB0_370:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r22, 0
.LBB0_371:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_373:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_375:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_630
# %bb.376:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_631
.LBB0_377:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_379
.LBB0_378:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_379:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_381:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_383:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r12, 23
	addli r27, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_632
# %bb.384:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_633
.LBB0_385:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_387
.LBB0_386:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r27, 0
.LBB0_387:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_389:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_391:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r4, 23
	srli r5, r12, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_634
# %bb.392:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_635
.LBB0_393:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_395
.LBB0_394:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_395:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_397:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_399:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r9, 23
	addli r12, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_636
# %bb.400:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_637
.LBB0_401:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_403
.LBB0_402:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r12, 0
.LBB0_403:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_405:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_407:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r4, 23
	srli r5, r9, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_638
# %bb.408:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_639
.LBB0_409:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_411
.LBB0_410:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_411:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_413:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r5
	loadli.w r23,  -376(r30)                # 4-byte Folded Reload
	loadli.w r9,  -304(r30)                 # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_415:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r15, 23
	addli r12, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_640
# %bb.416:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_641
.LBB0_417:                              #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r12, 0
.LBB0_419:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_421:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r15
	addli r1, r15, 0
	addli r12, r23, 0
	bneq r2, zero, .LBB0_423
# %bb.422:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_423:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r15, 9
	srli r4, r9, 23
	srli r5, r15, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_642
# %bb.424:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_643
.LBB0_425:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_427
.LBB0_426:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r15, 0
.LBB0_427:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_429:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_431:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r4, 23
	srli r5, r9, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_644
# %bb.432:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_645
.LBB0_433:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_435
.LBB0_434:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_435:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r22,  -280(r30)                # 4-byte Folded Reload
	loadli.w r27,  -264(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_437:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r24, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r24, 0
.LBB0_439:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r24, 23
	addli r17, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_646
# %bb.440:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_647
.LBB0_441:                              #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_443
.LBB0_442:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r17, 0
.LBB0_443:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
.LBB0_445:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r24
	addli r1, r24, 0
	bneq r2, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_447:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r24, 9
	srli r4, r4, 23
	srli r5, r24, 23
	loadli.w r14,  -284(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_648
# %bb.448:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_649
.LBB0_449:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_451
.LBB0_450:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r24, 0
.LBB0_451:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r25,  -392(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_453:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r19, r5
	loadli.w r24,  36(r30)
	addli r1, r5, 0
	bneq r2, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_455:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r19, 23
	addli r10, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_650
# %bb.456:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_651
.LBB0_457:                              #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_459
.LBB0_458:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r10, 0
.LBB0_459:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_461:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r19
	addli r1, r19, 0
	addli r10, r24, 0
	bneq r2, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_463:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r19, 9
	srli r4, r18, 23
	srli r5, r19, 23
	addli r24, zero, 1
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_652
# %bb.464:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_653
.LBB0_465:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_467
.LBB0_466:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r19, 0
.LBB0_467:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_469
# %bb.468:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_469:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r18
	addli r1, r18, 0
	bneq r2, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_471:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r18, 9
	srli r4, r4, 23
	srli r5, r18, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_654
# %bb.472:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_655
.LBB0_473:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_475
.LBB0_474:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r18, 0
.LBB0_475:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r11,  -372(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_477:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r5
	loadli.w r19,  40(r30)
	load.d r[17:18], 16(r30)
	addli r1, r5, 0
	bneq r2, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_479:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r14, 23
	addli r9, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_656
# %bb.480:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_657
.LBB0_481:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_483
.LBB0_482:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r9, 0
.LBB0_483:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_485
# %bb.484:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_485:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	addli r1, r14, 0
	addli r9, r19, 0
	bneq r2, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_487:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
	srli r5, r14, 23
	load.d r[19:20], 0(r30)
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_658
# %bb.488:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_659
.LBB0_489:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_491
.LBB0_490:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r14, 0
.LBB0_491:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_493
# %bb.492:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_493:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_495:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
	addli r14, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_660
# %bb.496:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_661
.LBB0_497:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_499
.LBB0_498:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r14, 0
.LBB0_499:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_501
# %bb.500:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_501:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	loadli.w r14,  -276(r30)                # 4-byte Folded Reload
	addli r1, r22, 0
	bneq r2, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_503:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r4, 23
	srli r5, r22, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_662
# %bb.504:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_663
.LBB0_505:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_507
.LBB0_506:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_507:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_509
# %bb.508:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_509:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_511:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r14, 23
	addli r22, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_664
# %bb.512:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_665
.LBB0_513:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_515
.LBB0_514:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r22, 0
.LBB0_515:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_517
# %bb.516:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_517:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_519
# %bb.518:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_519:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
	srli r5, r14, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_666
# %bb.520:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_667
.LBB0_521:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_523
.LBB0_522:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r14, 0
.LBB0_523:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r15,  -380(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_525
# %bb.524:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_525:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r23,  -272(r30)                # 4-byte Folded Reload
	loadli.w r14,  -388(r30)                # 4-byte Folded Reload
	addli r1, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r23, r4
	bneq r2, zero, .LBB0_527
# %bb.526:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r23, 0
.LBB0_527:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r23, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r4, 9
	addli r5, r4, 0
	srli r4, r23, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	addli r22, r5, 0
	srli r5, r5, 23
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_668
# %bb.528:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -132(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_669
.LBB0_529:                              #   in Loop: Header=BB0_3 Depth=1
	beq r23, zero, .LBB0_531
.LBB0_530:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r22, 0
.LBB0_531:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_533
.Ltmp4:
# %bb.532:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
.LBB0_533:                              #   in Loop: Header=BB0_3 Depth=1
	addli r22, r14, 0
	addli r14, r15, 0
	loadli.w r15,  -384(r30)                # 4-byte Folded Reload
	loadli.w r28,  -300(r30)                # 4-byte Folded Reload
	stores.w r23, 0(r16)
.LBB0_534:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loads.w r1, 0(r16)
.Ltmp5:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	addli r3, zero, 16
.Ltmp6:
	.loc	1 51 19                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:51:19
	sub.f.rn r2, r5, r1
	sub.f.rn r1, r26, r1
	.loc	1 52 26                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:52:26
	exp.f.rn r2, r2
	exp.f.rn r1, r1
.Ltmp7:
	.loc	3 263 15                        # standard.py:263:15
	blt.s r28, r3, .LBB0_536
# %bb.535:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	addli r3, zero, 0
	j .LBB0_537
.LBB0_536:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r3, r2, r1
.LBB0_537:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	stores.w r3, 0(r22)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loadli.w r3,  -136(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_539
# %bb.538:                              #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r21)
	loads.w r5, 4(r21)
	loads.w r4, 8(r21)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r5
	loads.w r5, 12(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 16(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 20(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 24(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 28(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 32(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 36(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 40(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 44(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 48(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 52(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 56(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 60(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 64(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 68(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 72(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 76(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 80(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 84(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 88(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 92(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 96(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 100(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 104(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 108(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 112(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 116(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 120(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 124(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 128(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 132(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 136(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 140(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 144(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 148(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 152(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 156(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 160(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 164(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 168(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 172(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 176(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 180(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 184(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 188(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 192(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 196(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 200(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 204(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 208(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 212(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 216(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 220(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 224(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 228(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 232(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 236(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 240(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 244(r21)
	add.f.rn r3, r3, r4
	loads.w r4, 248(r21)
	add.f.rn r3, r3, r5
	loads.w r5, 252(r21)
	add.f.rn r3, r3, r4
	add.f.rn r3, r3, r5
	stores.w r3, 0(r21)
.Ltmp8:
.LBB0_539:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loads.w r4, 0(r21)
	.loc	1 56 21 is_stmt 1               # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:56:21
	div.f.rn r3, r2, r4
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r2, 522240
	and r5, r3, r6
	setlt.u r2, r2, r5
	bneq r2, zero, .LBB0_541
# %bb.540:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	addli r2, r3, 0
	j .LBB0_542
.LBB0_541:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r2, 1024
	or r2, r3, r2
.LBB0_542:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:0
	div.f.rn r4, r1, r4
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	lui r1, 522240
	and r6, r4, r6
	setlt.u r1, r1, r6
	bneq r1, zero, .LBB0_544
# %bb.543:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	addli r1, r4, 0
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r5, r8, r5
	beq r5, zero, .LBB0_545
	j .LBB0_546
.LBB0_544:                              #   in Loop: Header=BB0_3 Depth=1
	lui r1, 1024
	or r1, r4, r1
	setlt.u r5, r8, r5
	bneq r5, zero, .LBB0_546
.LBB0_545:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	loadli.w r3,  -140(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r3
	lui r3, 1048560
	and r2, r2, r3
.LBB0_546:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 58 48                         # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:48
	setlt.u r3, r8, r6
	bneq r3, zero, .LBB0_2
# %bb.547:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:0:48
	srli r1, r4, 16
	loadli.w r3,  -140(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r3
	lui r3, 1048560
	and r1, r1, r3
	j .LBB0_2
.LBB0_548:                              #   in Loop: Header=BB0_3 Depth=1
	lui r2, 523264
.Ltmp9:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_29
.LBB0_549:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_30
	j .LBB0_31
.LBB0_550:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_37
.LBB0_551:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_38
	j .LBB0_39
.LBB0_552:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r26,  -268(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_65
.LBB0_553:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_66
	j .LBB0_67
.LBB0_554:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r23,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_73
.LBB0_555:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_74
	j .LBB0_75
.LBB0_556:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_81
.LBB0_557:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_82
	j .LBB0_83
.LBB0_558:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_89
.LBB0_559:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_90
	j .LBB0_91
.LBB0_560:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_97
.LBB0_561:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_98
	j .LBB0_99
.LBB0_562:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_105
.LBB0_563:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_106
	j .LBB0_107
.LBB0_564:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_113
.LBB0_565:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_114
	j .LBB0_115
.LBB0_566:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_121
.LBB0_567:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_122
	j .LBB0_123
.LBB0_568:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_129
.LBB0_569:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_130
	j .LBB0_131
.LBB0_570:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r11,  -340(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_137
.LBB0_571:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_138
	j .LBB0_139
.LBB0_572:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_145
.LBB0_573:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_146
	j .LBB0_147
.LBB0_574:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r9,  -332(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_153
.LBB0_575:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_154
	j .LBB0_155
.LBB0_576:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r8,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_161
.LBB0_577:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_162
	j .LBB0_163
.LBB0_578:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_169
.LBB0_579:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_170
	j .LBB0_171
.LBB0_580:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_177
.LBB0_581:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_178
	j .LBB0_179
.LBB0_582:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_185
.LBB0_583:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_186
	j .LBB0_187
.LBB0_584:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_193
.LBB0_585:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_194
	j .LBB0_195
.LBB0_586:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_201
.LBB0_587:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_202
	j .LBB0_203
.LBB0_588:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_209
.LBB0_589:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_210
	j .LBB0_211
.LBB0_590:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_217
.LBB0_591:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r5,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_218
	j .LBB0_219
.LBB0_592:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_225
.LBB0_593:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_226
	j .LBB0_227
.LBB0_594:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_233
.LBB0_595:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	loadli.w r5,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_234
	j .LBB0_235
.LBB0_596:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_241
.LBB0_597:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_242
	j .LBB0_243
.LBB0_598:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_249
.LBB0_599:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_250
	j .LBB0_251
.LBB0_600:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_257
.LBB0_601:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_258
	j .LBB0_259
.LBB0_602:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_265
.LBB0_603:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_266
	j .LBB0_267
.LBB0_604:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_273
.LBB0_605:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_274
	j .LBB0_275
.LBB0_606:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_281
.LBB0_607:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_282
	j .LBB0_283
.LBB0_608:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_289
.LBB0_609:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_290
	j .LBB0_291
.LBB0_610:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_297
.LBB0_611:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_298
	j .LBB0_299
.LBB0_612:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_305
.LBB0_613:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_306
	j .LBB0_307
.LBB0_614:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r23, zero, .LBB0_313
.LBB0_615:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_314
	j .LBB0_315
.LBB0_616:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r23, zero, .LBB0_321
.LBB0_617:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_322
	j .LBB0_323
.LBB0_618:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_329
.LBB0_619:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_330
	j .LBB0_331
.LBB0_620:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_337
.LBB0_621:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_338
	j .LBB0_339
.LBB0_622:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_345
.LBB0_623:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_346
	j .LBB0_347
.LBB0_624:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_353
.LBB0_625:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_354
	j .LBB0_355
.LBB0_626:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_361
.LBB0_627:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_362
	j .LBB0_363
.LBB0_628:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_369
.LBB0_629:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_370
	j .LBB0_371
.LBB0_630:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_377
.LBB0_631:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_378
	j .LBB0_379
.LBB0_632:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_385
.LBB0_633:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_386
	j .LBB0_387
.LBB0_634:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_393
.LBB0_635:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_394
	j .LBB0_395
.LBB0_636:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_401
.LBB0_637:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_402
	j .LBB0_403
.LBB0_638:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_409
.LBB0_639:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_410
	j .LBB0_411
.LBB0_640:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_417
.LBB0_641:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_418
	j .LBB0_419
.LBB0_642:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_425
.LBB0_643:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_426
	j .LBB0_427
.LBB0_644:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_433
.LBB0_645:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_434
	j .LBB0_435
.LBB0_646:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_441
.LBB0_647:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_442
	j .LBB0_443
.LBB0_648:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_449
.LBB0_649:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_450
	j .LBB0_451
.LBB0_650:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_457
.LBB0_651:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_458
	j .LBB0_459
.LBB0_652:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_465
.LBB0_653:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_466
	j .LBB0_467
.LBB0_654:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_473
.LBB0_655:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_474
	j .LBB0_475
.LBB0_656:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_481
.LBB0_657:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_482
	j .LBB0_483
.LBB0_658:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_489
.LBB0_659:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_490
	j .LBB0_491
.LBB0_660:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_497
.LBB0_661:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_498
	j .LBB0_499
.LBB0_662:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_505
.LBB0_663:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_506
	j .LBB0_507
.LBB0_664:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_513
.LBB0_665:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_514
	j .LBB0_515
.LBB0_666:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_521
.LBB0_667:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_522
	j .LBB0_523
.LBB0_668:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -132(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_529
.LBB0_669:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_530
	j .LBB0_531
.Ltmp10:
.LBB0_670:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py:58:4
	addli sp, sp, 392
	mfence { lm, sm, gm }
	exit
.Ltmp11:
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
	.long	456                             # 0x1c8
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
	.byte	6                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x63 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x19 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	39                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xc DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	123                             # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x52:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	55                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	6                               # Abbrev [6] 0x5e:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
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
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
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
.asciz	"cipyvgpsoehcmy7drssalw5qpett4jdnnb4vjlm5b6nip2dh5hwz.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ip" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
