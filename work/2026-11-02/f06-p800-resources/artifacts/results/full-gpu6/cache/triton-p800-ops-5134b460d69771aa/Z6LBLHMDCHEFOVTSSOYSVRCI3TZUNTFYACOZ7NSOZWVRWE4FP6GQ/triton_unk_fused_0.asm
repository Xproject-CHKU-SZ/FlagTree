	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/hp" "chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py"
	.loc	1 22 0                          # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -344
	addli r30, sp, 280
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  40(r30)
	ori r9, r5, 4095
	load_param_i r5, 0
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r9
	sync_group
	storeli.w r8, -184(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	storeli.w r9, -132(r30)                 # 4-byte Folded Spill
	csr_set csr3, r9
	sync_group
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	ble.s r4, r5, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r10,  -184(r30)                # 4-byte Folded Reload
	addli r28, zero, 1
	load.d r[6:7], 8(r30)
	load.d r[8:9], 16(r30)
	addli r14, r30, -128
	addli r15, zero, 32
	addli r16, r30, -64
	addli r18, zero, 512
	addli r19, zero, 28
	addli r21, zero, 2
	div.s r4, r1, r4
	addli r10, r10, 1040
	storeli.w r10, -196(r30)                # 4-byte Folded Spill
	load_param_i r10, 1
	storeli.w r10, -204(r30)                # 4-byte Folded Spill
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r10, r4, 1
	storeli.w r4, -200(r30)                 # 4-byte Folded Spill
	ori r1, r1, 623
	storeli.w r10, -208(r30)                # 4-byte Folded Spill
	ori r10, r4, 2
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	storeli.w r10, -212(r30)                # 4-byte Folded Spill
	ori r10, r4, 3
	storeli.w r10, -216(r30)                # 4-byte Folded Spill
	ori r10, r4, 4
	storeli.w r10, -220(r30)                # 4-byte Folded Spill
	ori r10, r4, 5
	storeli.w r10, -224(r30)                # 4-byte Folded Spill
	ori r10, r4, 6
	storeli.w r10, -228(r30)                # 4-byte Folded Spill
	ori r10, r4, 7
	storeli.w r10, -232(r30)                # 4-byte Folded Spill
	ori r10, r4, 8
	storeli.w r10, -236(r30)                # 4-byte Folded Spill
	ori r10, r4, 9
	storeli.w r10, -240(r30)                # 4-byte Folded Spill
	ori r10, r4, 10
	storeli.w r10, -244(r30)                # 4-byte Folded Spill
	ori r10, r4, 11
	storeli.w r10, -248(r30)                # 4-byte Folded Spill
	ori r10, r4, 12
	storeli.w r10, -252(r30)                # 4-byte Folded Spill
	ori r10, r4, 13
	storeli.w r10, -256(r30)                # 4-byte Folded Spill
	ori r10, r4, 14
	storeli.w r10, -260(r30)                # 4-byte Folded Spill
	ori r10, r4, 15
	storeli.w r10, -264(r30)                # 4-byte Folded Spill
	sext_int2long r[10:11], r4
	lui r4, 1048575
	ori r4, r4, 3840
	sll.d r[10:11], r[10:11], r28
	and r3, r3, r4
	add.ul r[6:7], r[6:7], r[10:11]
	add.s r10, r3, r2
	store.d r[6:7], -272(r30)               # 8-byte Folded Spill
	addli r13, r10, 1040
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	add.s r2, r14, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r15, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:0:47
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	div.s r1, r5, r1
	div.s r1, r1, r2
	.loc	1 29 23 is_stmt 1               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:29:23
	loadli.w r2,  -192(r30)                 # 4-byte Folded Reload
	add.s r24, r1, r2
	.loc	1 38 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:37
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 38 47 is_stmt 0               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	lui r2, 983040
	.loc	1 38 42                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:42
	slli r25, r24, 10
	.loc	1 38 47                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	or r2, r15, r2
	.loc	1 38 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:37
	add.s r1, r25, r1
	.loc	1 38 30                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 39 37 is_stmt 1               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:30
	sll.d r[6:7], r[3:4], r28
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	or r1, r15, r1
	store.d r[6:7], -144(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:30
	add.ul r[3:4], r[3:4], r[6:7]
	.loc	1 38 47 is_stmt 0               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	l_gm2lm r2, r14, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	load.d r[2:3], -272(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r16, 0(r[2:3])
	.loc	1 38 47                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	load.hu r3, -64(r30)
	.loc	1 38 47                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	load.hu r2, -126(r30)
	.loc	1 39 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	load.hu r4, -62(r30)
	.loc	1 45 19                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:45:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 46 19                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:46:19
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	addli r3, r1, 0
	addli r6, r2, 0
	.loc	1 51 35                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:51:35
	blt.s r24, r18, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:0:35
	addli r3, zero, 0
	addli r6, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r4, r16, 2
	addli r7, zero, 0
	storeli.w r4, -148(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r11, zero, 0
	addli r12, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r11
	add.f.rn r6, r6, r12
	addli r7, r7, 4
	beq r7, r19, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 51 35                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:51:35
	blt.s r24, r18, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:0:0
	add.s r4, r14, r7
	add.s r11, r16, r7
	load.hu r12, 4(r4)
	load.hu r17, 4(r11)
	load.hu r4, 6(r4)
	load.hu r11, 6(r11)
	add.hf.rn r12, r12, r17
	add.hf.rn r4, r4, r11
	hfloat2float.rn r11, r12
	hfloat2float.rn r12, r4
	.loc	1 51 35                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:51:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r6
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	loadli.w r4,  -132(r30)                 # 4-byte Folded Reload
	csr_set csr3, r4
	sync_group
	loadli.w r3,  -136(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r3, 0(r10)
	loads.w r7, 4(r10)
	loads.w r6, 8(r10)
	loads.w r4, 12(r10)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r7
	add.f.rn r3, r3, r6
	loads.w r6, 16(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 20(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 24(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 28(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 32(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 36(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 40(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 44(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 48(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 52(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 56(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 60(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 64(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 68(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 72(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 76(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 80(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 84(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 88(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 92(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 96(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 100(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 104(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 108(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 112(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 116(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 120(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 124(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 128(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 132(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 136(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 140(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 144(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 148(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 152(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 156(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 160(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 164(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 168(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 172(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 176(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 180(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 184(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 188(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 192(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 196(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 200(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 204(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 208(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 212(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 216(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 220(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 224(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 228(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 232(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 236(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 240(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 244(r10)
	add.f.rn r3, r3, r6
	loads.w r6, 248(r10)
	add.f.rn r3, r3, r4
	loads.w r4, 252(r10)
	add.f.rn r3, r3, r6
	add.f.rn r3, r3, r4
	loadli.w r4,  -132(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r10)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r3, 0(r10)
	.loc	1 55 21 is_stmt 1               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:55:21
	lui r4, 239616
	mul.f.rn r23, r3, r4
	.loc	1 59 35                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:59:35
	blt.s r24, r18, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:0:35
	addli r7, zero, 0
	addli r1, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r1, r1, r23
	sub.f.rn r2, r2, r23
	mul.f.rn r7, r1, r1
	mul.f.rn r1, r2, r2
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	add.s r27, r2, r25
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	add.s r26, r2, r25
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	add.s r22, r2, r25
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	add.s r12, r2, r25
	loadli.w r2,  -224(r30)                 # 4-byte Folded Reload
	add.s r11, r2, r25
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	add.s r3, r2, r25
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	add.s r6, r2, r25
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -180(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -176(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -172(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -168(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -164(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -160(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	storeli.w r2, -156(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -264(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r25
	addli r25, zero, 0
	storeli.w r2, -152(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r2, zero, 0
	addli r4, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r7, r7, r2
	add.f.rn r1, r1, r4
	addli r25, r25, 4
	beq r25, r19, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 59 35                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:59:35
	blt.s r24, r18, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:0:0
	add.s r2, r14, r25
	add.s r4, r16, r25
	load.hu r20, 4(r2)
	load.hu r17, 4(r4)
	load.hu r2, 6(r2)
	load.hu r4, 6(r4)
	add.hf.rn r2, r2, r4
	add.hf.rn r17, r20, r17
	hfloat2float.rn r4, r17
	hfloat2float.rn r2, r2
	sub.f.rn r4, r4, r23
	sub.f.rn r17, r2, r23
	mul.f.rn r2, r4, r4
	mul.f.rn r4, r17, r17
	.loc	1 59 35                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:59:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r7, r1
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r4,  -132(r30)                 # 4-byte Folded Reload
	csr_set csr3, r4
	sync_group
	loadli.w r1,  -136(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r1, 0(r13)
	loads.w r24, 4(r13)
	loads.w r7, 8(r13)
	loads.w r2, 12(r13)
	loads.w r4, 16(r13)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r7
	add.f.rn r1, r1, r2
	loads.w r2, 20(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 24(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 32(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 40(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 48(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 56(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 64(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 72(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 80(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 88(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 96(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 104(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 112(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 120(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 128(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 136(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 144(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 152(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 160(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 168(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 176(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 184(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 192(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 200(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 208(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 216(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 224(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 232(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 240(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 248(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r13)
	add.f.rn r1, r1, r4
	loadli.w r4,  -132(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	stores.w r1, 0(r13)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r13)
	.loc	1 63 21 is_stmt 1               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:63:21
	lui r2, 239616
	addli r7, zero, 0
	mul.f.rn r1, r1, r2
	.loc	1 65 20                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:65:20
	loadli.w r2,  -276(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	.loc	1 66 28                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:66:28
	lui r2, 260096
	sqrt.f.rn r1, r1
	div.f.rn r1, r2, r1
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	add.s r4, r16, r7
	.loc	1 38 47                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	add.s r2, r14, r7
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	addli r7, r7, 4
	.loc	1 38 47                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	load.hu r17, 0(r2)
	.loc	1 39 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	load.hu r20, 0(r4)
	.loc	1 38 47                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:38:47
	load.hu r2, 2(r2)
	.loc	1 39 37                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:39:37
	load.hu r24, 2(r4)
	.loc	1 45 19                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:45:19
	add.hf.rn r17, r17, r20
	add.hf.rn r2, r2, r24
	.loc	1 46 19                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:46:19
	hfloat2float.rn r17, r17
	hfloat2float.rn r2, r2
	.loc	1 56 20                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:56:20
	sub.f.rn r17, r17, r23
	sub.f.rn r2, r2, r23
	.loc	1 67 20                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:67:20
	mul.f.rn r17, r1, r17
	mul.f.rn r2, r1, r2
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	float2hfloat.rn r17, r17
	float2hfloat.rn r2, r2
	store.h r17, 0(r4)
	store.h r2, 2(r4)
	mfence { lm }
	bneq r7, r15, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 69 25 is_stmt 0               # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[1:2], r27
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r4, 983040
	loadli.w r7,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[23:24], r26
	sll.d r[1:2], r[1:2], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r4, r21, r4
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[23:24], r[23:24], r28
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r4, r7, 0(r[1:2])
	lui r4, 983040
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[23:24]
	sext_int2long r[22:23], r22
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	addli r7, r16, 4
	or r4, r21, r4
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[22:23], r[22:23], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r4, r7, 0(r[1:2])
	lui r4, 983040
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[22:23]
	sext_int2long r[22:23], r12
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	addli r7, r16, 6
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[11:12], r11
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r4, r21, r4
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[22:23], r[22:23], r28
	sll.d r[11:12], r[11:12], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r4, r7, 0(r[1:2])
	lui r4, 983040
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[22:23]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	addli r7, r16, 8
	or r4, r21, r4
	s_lm2gm r4, r7, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[3:4], r3
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r7, 983040
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[11:12]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	addli r11, r16, 10
	addli r12, r16, 22
	or r7, r21, r7
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[3:4], r[3:4], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r7, r11, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[3:4]
	sext_int2long r[3:4], r6
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r6, 983040
	addli r7, r16, 12
	lui r11, 983040
	or r6, r21, r6
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[3:4], r[3:4], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r11, r21, r11
	s_lm2gm r6, r7, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[3:4]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r3, 983040
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r6,  -180(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	addli r4, r16, 14
	or r3, r21, r3
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[6:7], r6
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r3,  -176(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[6:7], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r6, 983040
	addli r7, r16, 16
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[3:4], r3
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r6, r21, r6
	s_lm2gm r6, r7, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[3:4], r[3:4], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r1, 983040
	addli r2, r16, 18
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[8:9], r[3:4]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r1, r21, r1
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[6:7], r6
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r1,  -168(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[6:7], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r6, 983040
	addli r7, r16, 20
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[1:2], r1
	add.ul r[3:4], r[8:9], r[3:4]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r6, r21, r6
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r6, r7, 0(r[3:4])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r3, 983040
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r3, r21, r3
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[6:7], r4
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r11, r12, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	load.d r[1:2], -144(r30)                # 8-byte Folded Reload
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r11, 983040
	addli r12, r16, 30
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[6:7], r[6:7], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r11, r21, r11
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r3, r16, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[8:9], r[6:7]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r6, 983040
	addli r7, r16, 24
	or r6, r21, r6
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[1:2], r1
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r6, r7, 0(r[3:4])
	lui r3, 983040
	addli r4, r16, 26
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[1:2], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r3, r21, r3
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[1:2], r[8:9], r[1:2]
	sext_int2long r[6:7], r6
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[6:7], r28
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	lui r6, 983040
	addli r7, r16, 28
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	add.ul r[3:4], r[8:9], r[3:4]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	or r6, r21, r6
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sext_int2long r[1:2], r1
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r6, r7, 0(r[3:4])
	.loc	1 69 25                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:25
	sll.d r[1:2], r[1:2], r28
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 69 49                         # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:49
	s_lm2gm r11, r12, 0(r[1:2])
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r5, r5, r1
	loadli.w r1,  -188(r30)                 # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 69 4 epilogue_begin           # chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py:69:4
	addli sp, sp, 280
	mfence { lm, sm, gm }
	exit
.Ltmp9:
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
	.long	344                             # 0x158
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x42 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x53:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x5f:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
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
.asciz	"chpiqomefjtpvg7fc2e25uh7tqlpjq7laotg4vw436rtmfwmdycx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/hp" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
