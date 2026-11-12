	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-kpybduf6" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r10
	addli r30, sp, 88
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 16
	addli r2, zero, 14
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	.loc	1 30 10 is_stmt 1               # parallel-rne.mlir:30:10
	load_param_i r4, 1
	loadli.w r3,  40(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	mul.s r1, r2, r1
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r3, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r2, -1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	div.s r2, r2, r4
	.loc	1 29 10                         # parallel-rne.mlir:29:10
	load_param_i r4, 0
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	fmac.s r2, r2, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	min.s r2, r2, r3
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_441
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r14, zero, 1
	addli r26, zero, 64
	lui r27, 1024
	lui r25, 522240
	lui r28, 1048560
	addli r11, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	ori r13, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r1, r1, 4095
	ori r3, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r2, zero, 14
	xsignal r2, 0
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r2, zero, 17
.LBB0_6:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	loadli.w r11,  -44(r30)                 # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r11, r11, 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_441
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #     Child Loop BB0_59 Depth 2
                                        #       Child Loop BB0_61 Depth 3
                                        #     Child Loop BB0_83 Depth 2
                                        #       Child Loop BB0_85 Depth 3
                                        #     Child Loop BB0_107 Depth 2
                                        #       Child Loop BB0_109 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_179 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #     Child Loop BB0_203 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_246 Depth 3
                                        #     Child Loop BB0_268 Depth 2
                                        #       Child Loop BB0_270 Depth 3
                                        #     Child Loop BB0_292 Depth 2
                                        #       Child Loop BB0_294 Depth 3
                                        #     Child Loop BB0_316 Depth 2
                                        #       Child Loop BB0_318 Depth 3
                                        #     Child Loop BB0_340 Depth 2
                                        #       Child Loop BB0_342 Depth 3
                                        #     Child Loop BB0_364 Depth 2
                                        #       Child Loop BB0_366 Depth 3
                                        #     Child Loop BB0_388 Depth 2
                                        #       Child Loop BB0_390 Depth 3
                                        #     Child Loop BB0_413 Depth 2
                                        #       Child Loop BB0_415 Depth 3
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  40(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r4,  36(r30)
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	addli r8, zero, 5
	addli r12, r11, 0
	addli r16, zero, 3
	addli r9, zero, 11
	mod.s r8, r11, r8
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	storeli.w r12, -44(r30)                 # 4-byte Folded Spill
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r2, r6, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r7, zero, 8
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	slli r11, r8, 12
	storeli.w r8, -16(r30)                  # 4-byte Folded Spill
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r4, r2, r4
	addli r2, zero, 16
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r5, r4, r2
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r2, r5, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r6, r14, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r6, r6, r7
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r7, r4, r6
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r2, r7, r2
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[17:18], r2
	storeli.w r2, -76(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	lui r2, 5
	add.s r7, r11, r2
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r10, r14, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r15, zero, 11
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	sll.d r[8:9], r[17:18], r15
	load.d r[16:17], 0(r30)
	addli r18, zero, 4
	add.ul r[8:9], r[16:17], r[8:9]
	addli r17, zero, 3
	xwait r17, 0
	blt.s r18, r12, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r16, zero, 2
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	addli r12, zero, 6
	addli r19, zero, 17
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 7
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 8
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 12
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 13
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 14
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 15
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 16
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 18
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 19
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 20
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 21
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 22
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 23
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 24
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 25
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 26
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 27
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 28
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 29
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 30
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 31
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 128
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r26, 3
	dma_cfg r19, zero, r16, 4
	addli r16, zero, 256
	dma_cfg r16, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 5
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r19, zero, 2
	addli r20, zero, 128
	addli r21, zero, 256
	addli r12, zero, 6
	addli r16, zero, 3
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	lock zero, r18
	ori r2, r2, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r9, zero, 2
	add.s r2, r11, r2
	dma_cfg r2, r8, r26, 3
	addli r8, zero, 16
	addli r2, zero, 5
	addli r9, zero, 7
	dma_cfg r20, r26, r19, 4
	dma_cfg r21, r20, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 12
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 13
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 14
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 15
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 17
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 18
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 19
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 20
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 21
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 22
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 23
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 24
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 25
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 26
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 27
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 28
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 29
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 30
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 31
	dma_cfg zero, zero, r15, 10
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r26, 3
	dma_cfg r20, zero, r19, 4
	dma_cfg r21, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r19, 0
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	j .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 2
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	bneq r10, r2, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r2, 0
	addli r2, zero, 5
	addli r8, zero, 2
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 16
	ds_cfg r8, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 1
	shuffle_batch r11, r7, r26, 1
	unlock zero
	xsignal r16, 0
	storeli.w r2, -40(r30)                  # 4-byte Folded Spill
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r12, zero, 6
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	slli r2, r5, 4
	sub.s r2, r4, r2
	div.s r2, r2, r6
	zext_int2long r[4:5], r2
	storeli.w r2, -64(r30)                  # 4-byte Folded Spill
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[7:8], r[4:5], r12
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	slli r6, r2, 14
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r2, 15
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	sll.d r[7:8], r[7:8], r14
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	add.s r5, r6, r2
	addli r2, zero, 6
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	store.d r[7:8], -72(r30)                # 8-byte Folded Spill
	bneq r10, r2, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[17:18], r[7:8], 0
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	load.d r[7:8], 8(r30)
	addli r4, zero, 6
	addli r12, zero, 4
	add.ul r[7:8], r[7:8], r[17:18]
	addli r17, zero, 7
	xwait r17, 0
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	blt.s r12, r2, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r15, zero, 2
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 128
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r4, zero, r15, 4
	addli r4, zero, 256
	dma_cfg r4, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_19:                               # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 15
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	addli r9, zero, 256
	addli r4, zero, 6
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r12
	ori r2, r2, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r2, r6, r2
	addli r6, zero, 2
	dma_cfg r2, r7, r26, 3
	addli r8, zero, 128
	addli r2, zero, 5
	addli r7, zero, 3
	dma_cfg r8, r26, r6, 4
	dma_cfg r9, r9, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r8, zero, r6, 4
	dma_cfg r9, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	addli r2, zero, 6
	xsignal r2, 0
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	beq r10, r7, .LBB0_24
	j .LBB0_25
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 4
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	beq r10, r4, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 3
	addli r4, zero, 7
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	bneq r10, r4, .LBB0_440
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 1
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r6, r5, r26, 2
	unlock zero
	xsignal r4, 0
	storeli.w r2, -24(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	beq r10, r7, .LBB0_24
	j .LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r2, zero, 8
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r4, 0
	addli r5, zero, 1
	addli r7, zero, 3
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 16
	lock zero, r5
	mm_cfg r26, r26, r2, 0
	addli r2, zero, 2
	mm_cfg r4, r2, r5, 2
	addli r2, zero, 1
	mm r11, r11, r6, 8
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 5
	unlock r5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 10
	xsignal r2, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r10, r7, .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	addli r2, zero, 14
	xwait r2, 0
.LBB0_25:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 35
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	xfence
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	ori r2, r2, 1280
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r5, r11, r2
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r10, zero, .LBB0_33
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	beq r10, r14, .LBB0_57
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_81
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	beq r10, r7, .LBB0_105
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_129
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r2, zero, 5
	beq r10, r2, .LBB0_153
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	addli r2, zero, 6
	beq r10, r2, .LBB0_177
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_201
	j .LBB0_225
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[6:7], zero
	addli r8, zero, 1
	mfence { lm, sm, gm }
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               # %middle.block205
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 143 9                         # parallel-rne.mlir:143:9
	andi r2, r8, 1
	addli.d r[6:7], r[18:19], 0
	addli r8, zero, 0
	beq r2, zero, .LBB0_56
.LBB0_35:                               # %vector.ph200
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[21:22], -8(r30)                # 8-byte Folded Reload
	j .LBB0_37
.LBB0_36:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	addli r26, zero, 64
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r4, r5, r23
	zext_int2long r[18:19], r26
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r9, 0(r4)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setneq.d r2, r[21:22], r[18:19]
	beq r2, zero, .LBB0_34
.LBB0_37:                               # %vector.body201
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[9:10], r[21:22], r[6:7]
	slli r23, r9, 2
	add.s r4, r11, r23
	loads.w r24, 12(r4)
	loads.w r20, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r26, r24, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r4, r25, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_39
# %bb.38:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r24, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_37 Depth=3
	or r12, r24, r27
.LBB0_40:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	and r4, r15, r13
	setlt.u r9, r25, r4
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_42
# %bb.41:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_37 Depth=3
	or r10, r15, r27
.LBB0_43:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	and r17, r2, r13
	setlt.u r9, r25, r17
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_45
# %bb.44:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_37 Depth=3
	or r16, r2, r27
.LBB0_46:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	and r18, r20, r13
	setlt.u r9, r25, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_48
# %bb.47:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r20, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r14, r3, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r14, zero, .LBB0_49
	j .LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r20, r27
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r14, r3, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r14, zero, .LBB0_50
.LBB0_49:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r1
	and r9, r9, r28
.LBB0_50:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	setlt.u r14, r3, r17
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r14, zero, .LBB0_53
# %bb.51:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r2, zero, .LBB0_54
.LBB0_52:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_36
	j .LBB0_55
.LBB0_53:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r2, 16
	andi r14, r14, 1
	add.s r2, r2, r14
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_52
.LBB0_54:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_36
.LBB0_55:                               # %vector.body201
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_36
.LBB0_56:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	addli r7, zero, 3
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	bneq r10, r14, .LBB0_27
.LBB0_57:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_59
.LBB0_58:                               # %middle.block196
                                        #   in Loop: Header=BB0_59 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 192
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_80
.LBB0_59:                               # %vector.ph191
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_61 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_61
.LBB0_60:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r4, r5, r21
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r2, zero, .LBB0_58
.LBB0_61:                               # %vector.body192
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r23, r22, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r4, r25, r23
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r4, zero, .LBB0_63
# %bb.62:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_61 Depth=3
	or r12, r22, r27
.LBB0_64:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r10, zero, .LBB0_66
# %bb.65:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_61 Depth=3
	or r10, r15, r27
.LBB0_67:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r14, zero, .LBB0_69
# %bb.68:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_61 Depth=3
	or r16, r2, r27
.LBB0_70:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r14, zero, .LBB0_72
# %bb.71:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r14, r3, r24
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r14, zero, .LBB0_73
	j .LBB0_74
.LBB0_72:                               #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r14, r3, r24
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r14, zero, .LBB0_74
.LBB0_73:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_74:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	setlt.u r9, r3, r17
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r9, zero, .LBB0_77
# %bb.75:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r2, zero, .LBB0_78
.LBB0_76:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_60
	j .LBB0_79
.LBB0_77:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_76
.LBB0_78:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r2, zero, .LBB0_60
.LBB0_79:                               # %vector.body192
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_60
.LBB0_80:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r7, zero, 3
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	mfence { sm }
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_28
.LBB0_81:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_83
.LBB0_82:                               # %middle.block187
                                        #   in Loop: Header=BB0_83 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 320
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_104
.LBB0_83:                               # %vector.ph182
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_85 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_85
.LBB0_84:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r4, r5, r21
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r2, zero, .LBB0_82
.LBB0_85:                               # %vector.body183
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r23, r22, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r4, r25, r23
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_87
# %bb.86:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_85 Depth=3
	or r12, r22, r27
.LBB0_88:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r10, zero, .LBB0_90
# %bb.89:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_85 Depth=3
	or r10, r15, r27
.LBB0_91:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r14, zero, .LBB0_93
# %bb.92:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_94
.LBB0_93:                               #   in Loop: Header=BB0_85 Depth=3
	or r16, r2, r27
.LBB0_94:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r14, zero, .LBB0_96
# %bb.95:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r14, r3, r24
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r14, zero, .LBB0_97
	j .LBB0_98
.LBB0_96:                               #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r14, r3, r24
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r14, zero, .LBB0_98
.LBB0_97:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_98:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	setlt.u r9, r3, r17
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r9, zero, .LBB0_101
# %bb.99:                               # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r2, zero, .LBB0_102
.LBB0_100:                              # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_84
	j .LBB0_103
.LBB0_101:                              # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_100
.LBB0_102:                              # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r2, zero, .LBB0_84
.LBB0_103:                              # %vector.body183
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_84
.LBB0_104:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	addli r7, zero, 3
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	mfence { sm }
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	bneq r10, r7, .LBB0_29
.LBB0_105:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_107
.LBB0_106:                              # %middle.block178
                                        #   in Loop: Header=BB0_107 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 448
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_128
.LBB0_107:                              # %vector.ph173
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_109
.LBB0_108:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r4, r5, r21
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r2, zero, .LBB0_106
.LBB0_109:                              # %vector.body174
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r23, r22, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r4, r25, r23
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r4, zero, .LBB0_111
# %bb.110:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	or r12, r22, r27
.LBB0_112:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r10, zero, .LBB0_114
# %bb.113:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_109 Depth=3
	or r10, r15, r27
.LBB0_115:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r14, zero, .LBB0_117
# %bb.116:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_109 Depth=3
	or r16, r2, r27
.LBB0_118:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r14, zero, .LBB0_120
# %bb.119:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r14, r3, r24
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r14, zero, .LBB0_121
	j .LBB0_122
.LBB0_120:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r14, r3, r24
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r14, zero, .LBB0_122
.LBB0_121:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_122:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	setlt.u r9, r3, r17
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r9, zero, .LBB0_125
# %bb.123:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r2, zero, .LBB0_126
.LBB0_124:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_108
	j .LBB0_127
.LBB0_125:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_124
.LBB0_126:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r2, zero, .LBB0_108
.LBB0_127:                              # %vector.body174
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_108
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_30
.LBB0_129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_131
.LBB0_130:                              # %middle.block169
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 576
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_152
.LBB0_131:                              # %vector.ph164
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_133
.LBB0_132:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r4, r5, r21
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r2, zero, .LBB0_130
.LBB0_133:                              # %vector.body165
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r23, r22, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r4, r25, r23
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_135
# %bb.134:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=3
	or r12, r22, r27
.LBB0_136:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r10, zero, .LBB0_138
# %bb.137:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_133 Depth=3
	or r10, r15, r27
.LBB0_139:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r14, zero, .LBB0_141
# %bb.140:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_133 Depth=3
	or r16, r2, r27
.LBB0_142:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r14, zero, .LBB0_144
# %bb.143:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r14, r3, r24
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r14, zero, .LBB0_145
	j .LBB0_146
.LBB0_144:                              #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r14, r3, r24
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r14, zero, .LBB0_146
.LBB0_145:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_146:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r9, r3, r17
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r9, zero, .LBB0_149
# %bb.147:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r2, zero, .LBB0_150
.LBB0_148:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_132
	j .LBB0_151
.LBB0_149:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_148
.LBB0_150:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r2, zero, .LBB0_132
.LBB0_151:                              # %vector.body165
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_132
.LBB0_152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_31
.LBB0_153:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_155
.LBB0_154:                              # %middle.block160
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 704
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_176
.LBB0_155:                              # %vector.ph155
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_157 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_157
.LBB0_156:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r4, r5, r21
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r2, zero, .LBB0_154
.LBB0_157:                              # %vector.body156
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r23, r22, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r4, r25, r23
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r4, zero, .LBB0_159
# %bb.158:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_157 Depth=3
	or r12, r22, r27
.LBB0_160:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r10, zero, .LBB0_162
# %bb.161:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_157 Depth=3
	or r10, r15, r27
.LBB0_163:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r14, zero, .LBB0_165
# %bb.164:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_157 Depth=3
	or r16, r2, r27
.LBB0_166:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r14, zero, .LBB0_168
# %bb.167:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r14, r3, r24
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r14, zero, .LBB0_169
	j .LBB0_170
.LBB0_168:                              #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r14, r3, r24
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r14, zero, .LBB0_170
.LBB0_169:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_170:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r9, r3, r17
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r9, zero, .LBB0_173
# %bb.171:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r2, zero, .LBB0_174
.LBB0_172:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_156
	j .LBB0_175
.LBB0_173:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_172
.LBB0_174:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r2, zero, .LBB0_156
.LBB0_175:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_156
.LBB0_176:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	mfence { sm }
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	addli r2, zero, 6
	bneq r10, r2, .LBB0_32
.LBB0_177:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_179
.LBB0_178:                              # %middle.block151
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 832
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_200
.LBB0_179:                              # %vector.ph146
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_181
.LBB0_180:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r4, r5, r21
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r2, zero, .LBB0_178
.LBB0_181:                              # %vector.body147
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r23, r22, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r4, r25, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r4, zero, .LBB0_183
# %bb.182:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	or r12, r22, r27
.LBB0_184:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r10, zero, .LBB0_186
# %bb.185:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	or r10, r15, r27
.LBB0_187:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r14, zero, .LBB0_189
# %bb.188:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	or r16, r2, r27
.LBB0_190:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r14, zero, .LBB0_192
# %bb.191:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r14, r3, r24
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r14, zero, .LBB0_193
	j .LBB0_194
.LBB0_192:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r14, r3, r24
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r14, zero, .LBB0_194
.LBB0_193:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_194:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r9, r3, r17
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r9, zero, .LBB0_197
# %bb.195:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r2, zero, .LBB0_198
.LBB0_196:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_180
	j .LBB0_199
.LBB0_197:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_196
.LBB0_198:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r2, zero, .LBB0_180
.LBB0_199:                              # %vector.body147
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	mfence { sm }
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_225
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_203
.LBB0_202:                              # %middle.block142
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 960
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r4
	beq r2, zero, .LBB0_224
.LBB0_203:                              # %vector.ph137
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	j .LBB0_205
.LBB0_204:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[18:19], r[18:19], 4
	zext_int2long r[14:15], r26
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r4, r5, r21
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setneq.d r2, r[18:19], r[14:15]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r12, 12(r4)
	stores.w r10, 8(r4)
	stores.w r16, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r2, zero, .LBB0_202
.LBB0_205:                              # %vector.body138
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[9:10], r[18:19], r[7:8]
	slli r21, r9, 2
	add.s r4, r11, r21
	loads.w r22, 12(r4)
	loads.w r9, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r23, r22, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r4, r25, r23
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_207
# %bb.206:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	or r12, r22, r27
.LBB0_208:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	and r4, r15, r13
	setlt.u r10, r25, r4
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r10, zero, .LBB0_210
# %bb.209:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_205 Depth=3
	or r10, r15, r27
.LBB0_211:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	and r17, r2, r13
	setlt.u r14, r25, r17
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r14, zero, .LBB0_213
# %bb.212:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r2, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_205 Depth=3
	or r16, r2, r27
.LBB0_214:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	and r24, r9, r13
	setlt.u r14, r25, r24
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r14, zero, .LBB0_216
# %bb.215:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r14, r3, r24
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r14, zero, .LBB0_217
	j .LBB0_218
.LBB0_216:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r9, r27
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r14, r3, r24
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r14, zero, .LBB0_218
.LBB0_217:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r20, r9, r28
.LBB0_218:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	setlt.u r9, r3, r17
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r9, zero, .LBB0_221
# %bb.219:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r2, zero, .LBB0_222
.LBB0_220:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r23
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_204
	j .LBB0_223
.LBB0_221:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_220
.LBB0_222:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r10, r2, r28
	setlt.u r2, r3, r23
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r2, zero, .LBB0_204
.LBB0_223:                              # %vector.body138
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r12, r2, r28
	j .LBB0_204
.LBB0_224:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r10
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	mfence { sm }
.LBB0_225:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	zext_int2long r[8:9], r26
	slli r2, r2, 6
	zext_int2long r[6:7], r2
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r2, zero, 255
	min.ul r[14:15], r[6:7], r[8:9]
	addli.d r[14:15], r[14:15], 64
	max.ul r[14:15], r[14:15], r[6:7]
	sub.sl r[6:7], r[14:15], r[6:7]
	min.ul r[6:7], r[6:7], r[8:9]
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	csr_set csr5, r2
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	addli r2, zero, 3
	.loc	1 367 7                         # parallel-rne.mlir:367:7
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	bneq r10, r2, .LBB0_227
# %bb.226:                              # %.thread33.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	addli r14, zero, 1
	xsignal r2, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	addli r2, zero, 19
	xwait r2, 0
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	j .LBB0_235
.LBB0_227:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	lui r4, 35
	addli r14, zero, 1
	slli r2, r2, 8
	add.s r6, r2, r4
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	bneq r10, r14, .LBB0_231
# %bb.228:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[14:15], 16(r30)
	load.d r[16:17], -72(r30)               # 8-byte Folded Reload
	addli r12, zero, 16
	addli r7, zero, 4
	xwait r12, 0
	loadli.w r4,  -44(r30)                  # 4-byte Folded Reload
	add.ul r[15:16], r[14:15], r[16:17]
	blt.s r7, r4, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	addli r7, zero, 1
	addli r18, zero, 2
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r14, zero, 3
	addli r17, zero, 4
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 7
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 8
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 9
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 11
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 12
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 13
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 14
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 15
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 18
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 20
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 21
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 22
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 23
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 24
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 25
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 26
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 27
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 28
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 29
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 30
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 31
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 128
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r26, 3
	dma_cfg r14, zero, r18, 4
	addli r14, zero, 256
	dma_cfg r14, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	addli r7, zero, 4
	dma_cfg zero, zero, zero, 8
	unlock r4
.LBB0_230:                              # %.thread33.thread37
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	lock zero, r7
	addli r14, zero, 1
	dma_cfg r4, r4, zero, 0
	lui r4, 35
	dma_cfg zero, r16, zero, 2
	load.d r[17:18], -64(r30)               # 8-byte Folded Reload
	ori r4, r4, 64
	add.s r2, r2, r4
	addli r4, r17, 31
	dma_cfg r2, r15, r26, 3
	addli r15, zero, 2
	addli r16, zero, 4
	srli r2, r4, 5
	slli r4, r17, 1
	addli r17, zero, 128
	addli r18, zero, 256
	dma_cfg r17, r26, r2, 4
	andi r4, r4, 62
	dma_cfg r18, r17, r14, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	addli r7, zero, 5
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 3
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 6
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 7
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 8
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 9
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 11
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 12
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 13
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 14
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 15
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 17
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 18
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 19
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 20
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 21
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 22
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 23
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 24
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 25
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 26
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 27
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 28
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 29
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 30
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 31
	dma_cfg zero, zero, r12, 10
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r26, 3
	dma_cfg r17, zero, r2, 4
	dma_cfg r18, zero, r14, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r15, 0
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 374 7 is_stmt 1               # parallel-rne.mlir:374:7
	j .LBB0_235
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 372 7 is_stmt 1               # parallel-rne.mlir:372:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_235
# %bb.232:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	addli r2, zero, 0
	addli r7, zero, 4096
	xwait r4, 0
	addli r4, zero, 15
	xwait r4, 0
	addli r4, zero, 2
	lock zero, r4
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 63
	ew_cfg zero, r4, zero, 2
	ew_cfg r14, zero, zero, 3
.LBB0_233:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r5, r2
	addli r2, r2, 256
	dsmadd r4, r4, r6, 0
	bneq r2, r7, .LBB0_233
# %bb.234:                              # %.thread33
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 16
	xsignal r2, 0
.LBB0_235:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 10
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	xfence
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	mfence { lm, sm, gm }
	add.s r17, r11, r2
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	beq r10, zero, .LBB0_242
# %bb.236:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	beq r10, r14, .LBB0_266
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_290
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r2, zero, 3
	beq r10, r2, .LBB0_314
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 496 7                         # parallel-rne.mlir:496:7
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_338
.LBB0_240:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	addli r2, zero, 5
	beq r10, r2, .LBB0_362
.LBB0_241:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 6
	beq r10, r2, .LBB0_386
	j .LBB0_410
.LBB0_242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	xfence
	zext_int2long r[21:22], zero
	addli r4, zero, 1
	mfence { lm, sm, gm }
	store.d r[21:22], -16(r30)              # 8-byte Folded Spill
	j .LBB0_244
.LBB0_243:                              # %middle.block133
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 388 9                         # parallel-rne.mlir:388:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	addli.d r[21:22], r[8:9], 0
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_265
.LBB0_244:                              # %vector.ph128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_246 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_246
.LBB0_245:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 389 11 is_stmt 1              # parallel-rne.mlir:389:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 404 13                        # parallel-rne.mlir:404:13
	add.s r6, r17, r19
	.loc	1 389 11                        # parallel-rne.mlir:389:11
	setneq.d r2, r[23:24], r[8:9]
	.loc	1 404 13                        # parallel-rne.mlir:404:13
	stores.w r26, 12(r6)
	stores.w r16, 8(r6)
	stores.w r20, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 389 11                        # parallel-rne.mlir:389:11
	beq r2, zero, .LBB0_243
.LBB0_246:                              # %vector.body129
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	add.ul r[6:7], r[23:24], r[21:22]
	slli r19, r6, 2
	add.s r4, r5, r19
	loads.w r12, 12(r4)
	loads.w r7, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	and r10, r12, r13
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	setlt.u r4, r25, r10
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r4, zero, .LBB0_248
# %bb.247:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r12, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_246 Depth=3
	or r26, r12, r27
.LBB0_249:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	and r6, r15, r13
	setlt.u r4, r25, r6
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r4, zero, .LBB0_251
# %bb.250:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_246 Depth=3
	or r16, r15, r27
.LBB0_252:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	and r18, r2, r13
	setlt.u r4, r25, r18
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r4, zero, .LBB0_254
# %bb.253:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_255
.LBB0_254:                              #   in Loop: Header=BB0_246 Depth=3
	or r20, r2, r27
.LBB0_255:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	and r14, r7, r13
	setlt.u r4, r25, r14
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r4, zero, .LBB0_257
# %bb.256:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 401 19 is_stmt 1              # parallel-rne.mlir:401:19
	setlt.u r14, r3, r14
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	beq r14, zero, .LBB0_258
	j .LBB0_259
.LBB0_257:                              #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r7, r27
	.loc	1 401 19 is_stmt 1              # parallel-rne.mlir:401:19
	setlt.u r14, r3, r14
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r14, zero, .LBB0_259
.LBB0_258:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r28
.LBB0_259:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	setlt.u r7, r3, r18
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	beq r7, zero, .LBB0_262
# %bb.260:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r6
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	beq r2, zero, .LBB0_263
.LBB0_261:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r2, zero, .LBB0_245
	j .LBB0_264
.LBB0_262:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r6
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r2, zero, .LBB0_261
.LBB0_263:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r2, zero, .LBB0_245
.LBB0_264:                              # %vector.body129
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r26, r2, r28
	j .LBB0_245
.LBB0_265:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 380 7 is_stmt 1               # parallel-rne.mlir:380:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	addli r26, zero, 64
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	bneq r10, r14, .LBB0_237
.LBB0_266:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	addli r4, zero, 1
	zext_int2long r[6:7], r2
	addli r2, zero, 192
	zext_int2long r[14:15], r2
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	store.d r[14:15], -16(r30)              # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_268
.LBB0_267:                              # %middle.block124
                                        #   in Loop: Header=BB0_268 Depth=2
	.loc	1 417 9 is_stmt 1               # parallel-rne.mlir:417:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_289
.LBB0_268:                              # %vector.ph119
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_270 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[23:24], zero
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_270
.LBB0_269:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 418 11 is_stmt 1              # parallel-rne.mlir:418:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	add.s r10, r17, r19
	.loc	1 418 11                        # parallel-rne.mlir:418:11
	setneq.d r2, r[23:24], r[8:9]
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	stores.w r26, 12(r10)
	stores.w r16, 8(r10)
	stores.w r20, 4(r10)
	stores.w r4, 0(r10)
	.loc	1 418 11                        # parallel-rne.mlir:418:11
	beq r2, zero, .LBB0_267
.LBB0_270:                              # %vector.body120
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_268 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	add.ul r[14:15], r[23:24], r[6:7]
	slli r19, r14, 2
	add.s r4, r5, r19
	loads.w r12, 12(r4)
	loads.w r22, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	and r10, r12, r13
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	setlt.u r4, r25, r10
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r4, zero, .LBB0_272
# %bb.271:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r12, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_270 Depth=3
	or r26, r12, r27
.LBB0_273:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	and r21, r15, r13
	setlt.u r4, r25, r21
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r4, zero, .LBB0_275
# %bb.274:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_270 Depth=3
	or r16, r15, r27
.LBB0_276:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	and r18, r2, r13
	setlt.u r4, r25, r18
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r4, zero, .LBB0_278
# %bb.277:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_270 Depth=3
	or r20, r2, r27
.LBB0_279:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	and r14, r22, r13
	setlt.u r4, r25, r14
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r4, zero, .LBB0_281
# %bb.280:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r22, 0
	.loc	1 430 19 is_stmt 1              # parallel-rne.mlir:430:19
	setlt.u r14, r3, r14
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r14, zero, .LBB0_282
	j .LBB0_283
.LBB0_281:                              #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r22, r27
	.loc	1 430 19 is_stmt 1              # parallel-rne.mlir:430:19
	setlt.u r14, r3, r14
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r14, zero, .LBB0_283
.LBB0_282:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r22, 16
	andi r4, r4, 1
	add.s r4, r22, r4
	add.s r4, r4, r1
	and r4, r4, r28
.LBB0_283:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	setlt.u r14, r3, r18
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r14, zero, .LBB0_286
# %bb.284:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r21
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r2, zero, .LBB0_287
.LBB0_285:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_269
	j .LBB0_288
.LBB0_286:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r2, 16
	andi r14, r14, 1
	add.s r2, r2, r14
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r21
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_285
.LBB0_287:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r2, zero, .LBB0_269
.LBB0_288:                              # %vector.body120
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r26, r2, r28
	j .LBB0_269
.LBB0_289:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 409 7 is_stmt 1               # parallel-rne.mlir:409:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	addli r26, zero, 64
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_238
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	addli r4, zero, 1
	zext_int2long r[21:22], r2
	addli r2, zero, 320
	zext_int2long r[6:7], r2
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_292
.LBB0_291:                              # %middle.block115
                                        #   in Loop: Header=BB0_292 Depth=2
	.loc	1 446 9 is_stmt 1               # parallel-rne.mlir:446:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -16(r30)               # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_313
.LBB0_292:                              # %vector.ph110
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_294 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[23:24], zero
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_294
.LBB0_293:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 447 11 is_stmt 1              # parallel-rne.mlir:447:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	add.s r6, r17, r19
	.loc	1 447 11                        # parallel-rne.mlir:447:11
	setneq.d r2, r[23:24], r[8:9]
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	stores.w r26, 12(r6)
	stores.w r16, 8(r6)
	stores.w r20, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 447 11                        # parallel-rne.mlir:447:11
	beq r2, zero, .LBB0_291
.LBB0_294:                              # %vector.body111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	add.ul r[6:7], r[23:24], r[21:22]
	slli r19, r6, 2
	add.s r4, r5, r19
	loads.w r12, 12(r4)
	loads.w r7, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	and r10, r12, r13
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	setlt.u r4, r25, r10
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r4, zero, .LBB0_296
# %bb.295:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r12, 0
	j .LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_294 Depth=3
	or r26, r12, r27
.LBB0_297:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	and r6, r15, r13
	setlt.u r4, r25, r6
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r4, zero, .LBB0_299
# %bb.298:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_294 Depth=3
	or r16, r15, r27
.LBB0_300:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	and r18, r2, r13
	setlt.u r4, r25, r18
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r4, zero, .LBB0_302
# %bb.301:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_303
.LBB0_302:                              #   in Loop: Header=BB0_294 Depth=3
	or r20, r2, r27
.LBB0_303:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	and r14, r7, r13
	setlt.u r4, r25, r14
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r4, zero, .LBB0_305
# %bb.304:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 459 19 is_stmt 1              # parallel-rne.mlir:459:19
	setlt.u r14, r3, r14
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r14, zero, .LBB0_306
	j .LBB0_307
.LBB0_305:                              #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r7, r27
	.loc	1 459 19 is_stmt 1              # parallel-rne.mlir:459:19
	setlt.u r14, r3, r14
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r14, zero, .LBB0_307
.LBB0_306:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r28
.LBB0_307:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	setlt.u r7, r3, r18
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r7, zero, .LBB0_310
# %bb.308:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r6
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r2, zero, .LBB0_311
.LBB0_309:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r2, zero, .LBB0_293
	j .LBB0_312
.LBB0_310:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r6
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r2, zero, .LBB0_309
.LBB0_311:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r2, zero, .LBB0_293
.LBB0_312:                              # %vector.body111
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r26, r2, r28
	j .LBB0_293
.LBB0_313:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 438 7 is_stmt 1               # parallel-rne.mlir:438:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	addli r26, zero, 64
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r2, zero, 3
	bneq r10, r2, .LBB0_239
.LBB0_314:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	addli r4, zero, 1
	zext_int2long r[21:22], r2
	addli r2, zero, 448
	zext_int2long r[6:7], r2
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_316
.LBB0_315:                              # %middle.block106
                                        #   in Loop: Header=BB0_316 Depth=2
	.loc	1 475 9 is_stmt 1               # parallel-rne.mlir:475:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -16(r30)               # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_337
.LBB0_316:                              # %vector.ph101
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_318 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[23:24], zero
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_318
.LBB0_317:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 476 11 is_stmt 1              # parallel-rne.mlir:476:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 491 13                        # parallel-rne.mlir:491:13
	add.s r6, r17, r19
	.loc	1 476 11                        # parallel-rne.mlir:476:11
	setneq.d r2, r[23:24], r[8:9]
	.loc	1 491 13                        # parallel-rne.mlir:491:13
	stores.w r26, 12(r6)
	stores.w r16, 8(r6)
	stores.w r20, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 476 11                        # parallel-rne.mlir:476:11
	beq r2, zero, .LBB0_315
.LBB0_318:                              # %vector.body102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 477 19                        # parallel-rne.mlir:477:19
	add.ul r[6:7], r[23:24], r[21:22]
	slli r19, r6, 2
	add.s r4, r5, r19
	loads.w r12, 12(r4)
	loads.w r7, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	and r10, r12, r13
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	setlt.u r4, r25, r10
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r4, zero, .LBB0_320
# %bb.319:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r12, 0
	j .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_318 Depth=3
	or r26, r12, r27
.LBB0_321:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	and r6, r15, r13
	setlt.u r4, r25, r6
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r4, zero, .LBB0_323
# %bb.322:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_318 Depth=3
	or r16, r15, r27
.LBB0_324:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	and r18, r2, r13
	setlt.u r4, r25, r18
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r4, zero, .LBB0_326
# %bb.325:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_318 Depth=3
	or r20, r2, r27
.LBB0_327:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	and r14, r7, r13
	setlt.u r4, r25, r14
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	bneq r4, zero, .LBB0_329
# %bb.328:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	.loc	1 488 19 is_stmt 1              # parallel-rne.mlir:488:19
	setlt.u r14, r3, r14
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	beq r14, zero, .LBB0_330
	j .LBB0_331
.LBB0_329:                              #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r7, r27
	.loc	1 488 19 is_stmt 1              # parallel-rne.mlir:488:19
	setlt.u r14, r3, r14
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r14, zero, .LBB0_331
.LBB0_330:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r1
	and r4, r4, r28
.LBB0_331:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	setlt.u r7, r3, r18
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	beq r7, zero, .LBB0_334
# %bb.332:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r6
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	beq r2, zero, .LBB0_335
.LBB0_333:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_317
	j .LBB0_336
.LBB0_334:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r6
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_333
.LBB0_335:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_317
.LBB0_336:                              # %vector.body102
                                        #   in Loop: Header=BB0_318 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r26, r2, r28
	j .LBB0_317
.LBB0_337:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 467 7 is_stmt 1               # parallel-rne.mlir:467:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	addli r26, zero, 64
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 496 7                         # parallel-rne.mlir:496:7
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_240
.LBB0_338:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	addli r4, zero, 1
	zext_int2long r[21:22], r2
	addli r2, zero, 576
	zext_int2long r[6:7], r2
	.loc	1 496 7                         # parallel-rne.mlir:496:7
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_340
.LBB0_339:                              # %middle.block97
                                        #   in Loop: Header=BB0_340 Depth=2
	.loc	1 504 9 is_stmt 1               # parallel-rne.mlir:504:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -16(r30)               # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_361
.LBB0_340:                              # %vector.ph92
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_342 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_342
.LBB0_341:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 505 11 is_stmt 1              # parallel-rne.mlir:505:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 520 13                        # parallel-rne.mlir:520:13
	add.s r4, r17, r23
	.loc	1 505 11                        # parallel-rne.mlir:505:11
	setneq.d r2, r[18:19], r[8:9]
	.loc	1 520 13                        # parallel-rne.mlir:520:13
	stores.w r26, 0(r4)
	addli r26, zero, 64
	stores.w r24, 12(r4)
	stores.w r16, 8(r4)
	stores.w r20, 4(r4)
	.loc	1 505 11                        # parallel-rne.mlir:505:11
	beq r2, zero, .LBB0_339
.LBB0_342:                              # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	add.ul r[6:7], r[18:19], r[21:22]
	slli r23, r6, 2
	add.s r4, r5, r23
	loads.w r12, 12(r4)
	loads.w r7, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	and r10, r12, r13
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	setlt.u r4, r25, r10
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r4, zero, .LBB0_344
# %bb.343:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_342 Depth=3
	or r24, r12, r27
.LBB0_345:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	and r6, r15, r13
	setlt.u r4, r25, r6
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r4, zero, .LBB0_347
# %bb.346:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_348
.LBB0_347:                              #   in Loop: Header=BB0_342 Depth=3
	or r16, r15, r27
.LBB0_348:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	and r4, r2, r13
	setlt.u r14, r25, r4
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r14, zero, .LBB0_350
# %bb.349:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_351
.LBB0_350:                              #   in Loop: Header=BB0_342 Depth=3
	or r20, r2, r27
.LBB0_351:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	and r14, r7, r13
	setlt.u r26, r25, r14
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r26, zero, .LBB0_353
# %bb.352:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r7, 0
	.loc	1 517 19 is_stmt 1              # parallel-rne.mlir:517:19
	setlt.u r14, r3, r14
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r14, zero, .LBB0_354
	j .LBB0_355
.LBB0_353:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r7, r27
	.loc	1 517 19 is_stmt 1              # parallel-rne.mlir:517:19
	setlt.u r14, r3, r14
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r14, zero, .LBB0_355
.LBB0_354:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r1
	and r26, r7, r28
.LBB0_355:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	setlt.u r4, r3, r4
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r4, zero, .LBB0_358
# %bb.356:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r6
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r2, zero, .LBB0_359
.LBB0_357:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r2, zero, .LBB0_341
	j .LBB0_360
.LBB0_358:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r6
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r2, zero, .LBB0_357
.LBB0_359:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r2, zero, .LBB0_341
.LBB0_360:                              # %vector.body93
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r28
	j .LBB0_341
.LBB0_361:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 496 7 is_stmt 1               # parallel-rne.mlir:496:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_241
.LBB0_362:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	addli r4, zero, 1
	zext_int2long r[21:22], r2
	addli r2, zero, 704
	zext_int2long r[6:7], r2
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_364
.LBB0_363:                              # %middle.block88
                                        #   in Loop: Header=BB0_364 Depth=2
	.loc	1 533 9 is_stmt 1               # parallel-rne.mlir:533:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -16(r30)               # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_385
.LBB0_364:                              # %vector.ph83
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_366 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_366
.LBB0_365:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 534 11 is_stmt 1              # parallel-rne.mlir:534:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r4, r17, r23
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	setneq.d r2, r[18:19], r[8:9]
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r26, 0(r4)
	addli r26, zero, 64
	stores.w r24, 12(r4)
	stores.w r16, 8(r4)
	stores.w r20, 4(r4)
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	beq r2, zero, .LBB0_363
.LBB0_366:                              # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_364 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	add.ul r[6:7], r[18:19], r[21:22]
	slli r23, r6, 2
	add.s r4, r5, r23
	loads.w r12, 12(r4)
	loads.w r7, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	and r10, r12, r13
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	setlt.u r4, r25, r10
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r4, zero, .LBB0_368
# %bb.367:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_369
.LBB0_368:                              #   in Loop: Header=BB0_366 Depth=3
	or r24, r12, r27
.LBB0_369:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	and r6, r15, r13
	setlt.u r4, r25, r6
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r4, zero, .LBB0_371
# %bb.370:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_372
.LBB0_371:                              #   in Loop: Header=BB0_366 Depth=3
	or r16, r15, r27
.LBB0_372:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	and r4, r2, r13
	setlt.u r14, r25, r4
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r14, zero, .LBB0_374
# %bb.373:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_375
.LBB0_374:                              #   in Loop: Header=BB0_366 Depth=3
	or r20, r2, r27
.LBB0_375:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	and r14, r7, r13
	setlt.u r26, r25, r14
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r26, zero, .LBB0_377
# %bb.376:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r7, 0
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r14, r3, r14
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r14, zero, .LBB0_378
	j .LBB0_379
.LBB0_377:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r7, r27
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r14, r3, r14
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r14, zero, .LBB0_379
.LBB0_378:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r1
	and r26, r7, r28
.LBB0_379:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	setlt.u r4, r3, r4
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r4, zero, .LBB0_382
# %bb.380:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r6
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r2, zero, .LBB0_383
.LBB0_381:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_365
	j .LBB0_384
.LBB0_382:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r6
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_381
.LBB0_383:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r2, zero, .LBB0_365
.LBB0_384:                              # %vector.body84
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r28
	j .LBB0_365
.LBB0_385:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 525 7 is_stmt 1               # parallel-rne.mlir:525:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 6
	bneq r10, r2, .LBB0_410
.LBB0_386:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	addli r4, zero, 1
	zext_int2long r[21:22], r2
	addli r2, zero, 832
	zext_int2long r[6:7], r2
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_388
.LBB0_387:                              # %middle.block79
                                        #   in Loop: Header=BB0_388 Depth=2
	.loc	1 562 9 is_stmt 1               # parallel-rne.mlir:562:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -16(r30)               # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_409
.LBB0_388:                              # %vector.ph74
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_390 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], zero
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_390
.LBB0_389:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 563 11 is_stmt 1              # parallel-rne.mlir:563:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	add.s r4, r17, r23
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	setneq.d r2, r[18:19], r[8:9]
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	stores.w r26, 0(r4)
	addli r26, zero, 64
	stores.w r24, 12(r4)
	stores.w r16, 8(r4)
	stores.w r20, 4(r4)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	beq r2, zero, .LBB0_387
.LBB0_390:                              # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_388 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.ul r[6:7], r[18:19], r[21:22]
	slli r23, r6, 2
	add.s r4, r5, r23
	loads.w r12, 12(r4)
	loads.w r7, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	and r10, r12, r13
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	setlt.u r4, r25, r10
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r4, zero, .LBB0_392
# %bb.391:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r12, 0
	j .LBB0_393
.LBB0_392:                              #   in Loop: Header=BB0_390 Depth=3
	or r24, r12, r27
.LBB0_393:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	and r6, r15, r13
	setlt.u r4, r25, r6
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r4, zero, .LBB0_395
# %bb.394:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_396
.LBB0_395:                              #   in Loop: Header=BB0_390 Depth=3
	or r16, r15, r27
.LBB0_396:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	and r4, r2, r13
	setlt.u r14, r25, r4
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r14, zero, .LBB0_398
# %bb.397:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_399
.LBB0_398:                              #   in Loop: Header=BB0_390 Depth=3
	or r20, r2, r27
.LBB0_399:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	and r14, r7, r13
	setlt.u r26, r25, r14
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r26, zero, .LBB0_401
# %bb.400:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r7, 0
	.loc	1 575 19 is_stmt 1              # parallel-rne.mlir:575:19
	setlt.u r14, r3, r14
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	beq r14, zero, .LBB0_402
	j .LBB0_403
.LBB0_401:                              #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r7, r27
	.loc	1 575 19 is_stmt 1              # parallel-rne.mlir:575:19
	setlt.u r14, r3, r14
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r14, zero, .LBB0_403
.LBB0_402:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	add.s r7, r7, r1
	and r26, r7, r28
.LBB0_403:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	setlt.u r4, r3, r4
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	beq r4, zero, .LBB0_406
# %bb.404:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r6
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	beq r2, zero, .LBB0_407
.LBB0_405:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r2, zero, .LBB0_389
	j .LBB0_408
.LBB0_406:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r6
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r2, zero, .LBB0_405
.LBB0_407:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r16, r2, r28
	setlt.u r2, r3, r10
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r2, zero, .LBB0_389
.LBB0_408:                              # %vector.body75
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r24, r2, r28
	j .LBB0_389
.LBB0_409:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7 is_stmt 1               # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
.LBB0_410:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 583 7                         # parallel-rne.mlir:583:7
	loadli.w r2,  -24(r30)                  # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_435
# %bb.411:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	addli r4, zero, 1
	zext_int2long r[21:22], r2
	addli r2, zero, 960
	zext_int2long r[6:7], r2
	.loc	1 583 7                         # parallel-rne.mlir:583:7
	store.d r[6:7], -24(r30)                # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_413
.LBB0_412:                              # %middle.block
                                        #   in Loop: Header=BB0_413 Depth=2
	.loc	1 591 9 is_stmt 1               # parallel-rne.mlir:591:9
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	addli r4, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_434
.LBB0_413:                              # %vector.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_415 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[23:24], -16(r30)               # 8-byte Folded Reload
	storeli.w r4, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_415
.LBB0_414:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 592 11 is_stmt 1              # parallel-rne.mlir:592:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	add.s r4, r17, r12
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	setneq.d r2, r[23:24], r[8:9]
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	stores.w r10, 12(r4)
	stores.w r20, 8(r4)
	stores.w r6, 4(r4)
	stores.w r7, 0(r4)
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	beq r2, zero, .LBB0_412
.LBB0_415:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.ul r[6:7], r[23:24], r[21:22]
	slli r12, r6, 2
	add.s r4, r5, r12
	loads.w r26, 12(r4)
	loads.w r19, 0(r4)
	loads.w r2, 4(r4)
	loads.w r15, 8(r4)
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	and r16, r26, r13
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	setlt.u r4, r25, r16
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r4, zero, .LBB0_417
# %bb.416:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r26, 0
	j .LBB0_418
.LBB0_417:                              #   in Loop: Header=BB0_415 Depth=3
	or r10, r26, r27
.LBB0_418:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	and r18, r15, r13
	setlt.u r4, r25, r18
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r4, zero, .LBB0_420
# %bb.419:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r15, 0
	j .LBB0_421
.LBB0_420:                              #   in Loop: Header=BB0_415 Depth=3
	or r20, r15, r27
.LBB0_421:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	and r4, r2, r13
	setlt.u r6, r25, r4
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r6, zero, .LBB0_423
# %bb.422:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_424
.LBB0_423:                              #   in Loop: Header=BB0_415 Depth=3
	or r6, r2, r27
.LBB0_424:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	and r14, r19, r13
	setlt.u r7, r25, r14
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r7, zero, .LBB0_426
# %bb.425:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r19, 0
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r14, r3, r14
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r14, zero, .LBB0_427
	j .LBB0_428
.LBB0_426:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r19, r27
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r14, r3, r14
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r14, zero, .LBB0_428
.LBB0_427:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r19, 16
	andi r7, r7, 1
	add.s r7, r19, r7
	add.s r7, r7, r1
	and r7, r7, r28
.LBB0_428:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	setlt.u r4, r3, r4
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r4, zero, .LBB0_431
# %bb.429:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r18
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r2, zero, .LBB0_432
.LBB0_430:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r16
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r2, zero, .LBB0_414
	j .LBB0_433
.LBB0_431:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r1
	and r6, r2, r28
	setlt.u r2, r3, r18
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r2, zero, .LBB0_430
.LBB0_432:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r20, r2, r28
	setlt.u r2, r3, r16
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r2, zero, .LBB0_414
.LBB0_433:                              # %vector.body
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r1
	and r10, r2, r28
	j .LBB0_414
.LBB0_434:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 583 7 is_stmt 1               # parallel-rne.mlir:583:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r10
	addli r14, zero, 1
	addli r26, zero, 64
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
.LBB0_435:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	beq r10, r2, .LBB0_5
# %bb.436:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_438
# %bb.437:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 17
	lui r4, 260096
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	ew_cfg r14, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, zero, zero, 0
	addli r4, zero, 511
	ew_cfg zero, r4, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	dsmadd r17, r17, r17, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 18
	j .LBB0_6
.LBB0_438:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	bneq r10, zero, .LBB0_7
# %bb.439:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -76(r30)                  # 4-byte Folded Reload
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r12, zero, 5
	slli r2, r2, 4
	sext_int2long r[4:5], r2
	addli r2, zero, 16
	min.sl r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 16
	max.sl r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r2
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r2, zero, 12
	sll.d r[8:9], r[15:16], r2
	addli r2, zero, 18
	load.d r[15:16], 24(r30)
	.loc	1 619 13 is_stmt 1              # parallel-rne.mlir:619:13
	min.sl r[4:5], r[4:5], r[6:7]
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r7, zero, 128
	xwait r2, 0
	lock zero, r12
	lui r2, 10
	add.ul r[8:9], r[15:16], r[8:9]
	load.d r[15:16], -72(r30)               # 8-byte Folded Reload
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r14, zero, 1
	ori r2, r2, 64
	add.ul r[8:9], r[8:9], r[15:16]
	add.s r2, r11, r2
	dma_cfg r9, zero, zero, 2
	load.d r[15:16], -64(r30)               # 8-byte Folded Reload
	dma_cfg r8, r2, r26, 3
	addli r6, r15, 31
	srli r2, r6, 5
	slli r6, r15, 1
	dma_cfg r26, r7, r2, 4
	andi r2, r6, 62
	addli r6, zero, 256
	dma_cfg r6, r6, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 19
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_6
.LBB0_440:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	beq r10, r7, .LBB0_24
	j .LBB0_25
.LBB0_441:                              # %._crit_edge
	.loc	1 625 5                         # parallel-rne.mlir:625:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_443
# %bb.442:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 625 5                         # parallel-rne.mlir:625:5
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	lock zero, r1
	ew_cfg zero, zero, zero, 16
	unlock r1
	xsignal_mode_cfg zero
.LBB0_443:
	.loc	1 626 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:626:5
	addli sp, sp, 88
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
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
	.long	152                             # 0x98
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
.asciz	"parallel-rne.mlir"             # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-kpybduf6" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
