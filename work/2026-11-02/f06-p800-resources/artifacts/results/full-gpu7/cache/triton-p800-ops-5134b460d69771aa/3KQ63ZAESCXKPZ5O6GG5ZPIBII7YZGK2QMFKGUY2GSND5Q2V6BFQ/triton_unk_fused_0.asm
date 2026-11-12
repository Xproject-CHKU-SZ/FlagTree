	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-xwwp1ir_" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -216
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r2
	core_id r10
	addli r30, sp, 152
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	addli r2, zero, 9
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
	addli r1, zero, 7
	addli r2, zero, 16
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
	addli r1, zero, 18
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  40(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r4, 0
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_496
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[13:14], r1
	lui r1, 30
	addli r15, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r18, zero, 12
	addli r20, zero, 3
	addli r21, zero, 4
	addli r23, zero, 2
	addli r24, zero, 6
	addli r25, zero, 16
	lui r12, 1024
	lui r19, 522240
	lui r22, 1048560
	addli r28, zero, 0
	store.d r[2:3], -144(r30)               # 8-byte Folded Spill
	lui r2, 524287
	ori r1, r1, 640
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	ori r3, r2, 4095
	lui r1, 7
	lui r2, 522239
	ori r4, r1, 4095
	ori r5, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 599 7                         # parallel-rne.mlir:599:7
	addli r1, zero, 14
	xsignal r1, 0
	.loc	1 600 7                         # parallel-rne.mlir:600:7
	addli r1, zero, 17
	xsignal r1, 0
	load.d r[13:14], -104(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	load.d r[1:2], -144(r30)                # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	loadli.w r28,  -88(r30)                 # 4-byte Folded Reload
	addli r15, zero, 5
	addli r16, zero, 64
	addli r17, zero, 1
	addli r18, zero, 12
	addli r20, zero, 3
	addli r21, zero, 4
	addli r23, zero, 2
	addli r24, zero, 6
	addli r25, zero, 16
	setlt.sl r1, r[13:14], r[1:2]
	addli r28, r28, 1
	beq r1, zero, .LBB0_496
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_154 Depth 2
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_179 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_234 Depth 2
                                        #     Child Loop BB0_246 Depth 2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_249 Depth 3
                                        #     Child Loop BB0_277 Depth 2
                                        #       Child Loop BB0_286 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #     Child Loop BB0_308 Depth 2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_311 Depth 3
                                        #     Child Loop BB0_339 Depth 2
                                        #       Child Loop BB0_348 Depth 3
                                        #       Child Loop BB0_342 Depth 3
                                        #     Child Loop BB0_370 Depth 2
                                        #       Child Loop BB0_379 Depth 3
                                        #       Child Loop BB0_373 Depth 3
                                        #     Child Loop BB0_401 Depth 2
                                        #       Child Loop BB0_410 Depth 3
                                        #       Child Loop BB0_404 Depth 3
                                        #     Child Loop BB0_432 Depth 2
                                        #       Child Loop BB0_441 Depth 3
                                        #       Child Loop BB0_435 Depth 3
                                        #     Child Loop BB0_464 Depth 2
                                        #       Child Loop BB0_473 Depth 3
                                        #       Child Loop BB0_467 Depth 3
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r1,  40(r30)
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r2,  36(r30)
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	addli r8, zero, 8
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r9, r28, r15
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	storeli.w r28, -88(r30)                 # 4-byte Folded Spill
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r1, r13, r1
	storeli.w r9, -92(r30)                  # 4-byte Folded Spill
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r2, r1, r2
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r6, r2, r16
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	slli r1, r6, 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	sub.s r7, r17, r1
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	min.s r7, r7, r8
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	mod.s r8, r2, r7
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	add.s r8, r8, r1
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	slli r1, r9, 13
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	zext_int2long r[10:11], r8
	storeli.w r8, -132(r30)                 # 4-byte Folded Spill
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	lui r8, 5
	add.s r9, r1, r8
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	store.d r[10:11], -128(r30)             # 8-byte Folded Spill
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r8, r17, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[26:27], 0(r30)
	sll.d r[10:11], r[10:11], r18
	xwait r20, 0
	add.ul r[10:11], r[26:27], r[10:11]
	blt.s r21, r28, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r8, zero, 7
	addli r26, zero, 256
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r16, 3
	dma_cfg r8, zero, r23, 4
	addli r8, zero, 32
	dma_cfg r26, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r8, 5
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	addli r26, zero, 256
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	lock zero, r21
	ori r8, r8, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r11, zero, 2
	add.s r8, r1, r8
	dma_cfg r8, r10, r16, 3
	addli r10, zero, 128
	addli r11, zero, 32
	addli r8, zero, 7
	dma_cfg r10, r16, r23, 4
	dma_cfg r26, r10, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r16, 3
	dma_cfg r10, zero, r23, 4
	dma_cfg r26, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r23, 0
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	bneq r8, r23, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r23, 0
	xwait r15, 0
	lock zero, zero
	addli r8, zero, 32
	ds_cfg r23, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r8, zero, 13
	addli r8, zero, 1
	shuffle_batch r1, r9, r16, 1
	unlock zero
	xsignal r20, 0
	storeli.w r8, -84(r30)                  # 4-byte Folded Spill
	xsignal r21, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli r6, r6, 6
	addli r8, zero, 6
	sub.s r2, r2, r6
	div.s r2, r2, r7
	zext_int2long r[6:7], r2
	storeli.w r2, -112(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -92(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r15
	slli r25, r2, 12
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r2, 15
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	sll.d r[9:10], r[6:7], r17
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r6
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	add.s r2, r1, r2
	store.d r[9:10], -120(r30)              # 8-byte Folded Spill
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	bneq r6, r8, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], 8(r30)
	add.ul r[6:7], r[6:7], r[9:10]
	addli r9, zero, 7
	xwait r9, 0
	loadli.w r8,  -88(r30)                  # 4-byte Folded Reload
	blt.s r21, r8, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r15
	addli r8, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	dma_cfg r8, zero, r17, 4
	dma_cfg r8, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
.LBB0_17:                               # %.thread29
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r8, 15
	storeli.w zero, -80(r30)                # 4-byte Folded Spill
	storeli.w zero, -76(r30)                # 4-byte Folded Spill
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r21
	ori r8, r8, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r1, r1, r8
	dma_cfg r1, r6, r16, 3
	addli r7, zero, 128
	addli r1, zero, 512
	addli r6, zero, 6
	dma_cfg r7, r16, r17, 4
	dma_cfg r7, r1, r16, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	dma_cfg r7, zero, r17, 4
	dma_cfg r7, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r6, 0
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	j .LBB0_24
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	beq r6, r21, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 7
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	bneq r6, r7, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 6
	storeli.w zero, -80(r30)                # 4-byte Folded Spill
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	addli r6, zero, 2
	lock zero, zero
	ds_cfg r6, zero, 0
	addli r6, zero, 32
	ds_cfg r6, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r1, r2, r16, 2
	addli r1, zero, 1
	unlock zero
	xsignal r7, 0
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 110 7 is_stmt 1               # parallel-rne.mlir:110:7
	addli r2, zero, 8
	storeli.w zero, -76(r30)                # 4-byte Folded Spill
	xwait r21, 0
	addli r6, zero, 1
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 32
	lock zero, r6
	mm_cfg r2, r16, r2, 0
	mm_cfg r21, r6, r6, 2
	mm r25, r1, r1, 8
	addli r1, zero, 1
	storeli.w r1, -80(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r6
	xsignal r15, 0
	xsignal r1, 0
	addli r1, zero, 10
.LBB0_22:                               # %.thread30
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -80(r30)                # 4-byte Folded Spill
	storeli.w zero, -76(r30)                # 4-byte Folded Spill
.LBB0_24:                               # %.thread30
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	store.d r[13:14], -104(r30)             # 8-byte Folded Spill
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r1, r20, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	addli r2, zero, 14
	xwait r2, 0
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	zext_int2long r[20:21], r2
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	xfence
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r13, r25, r2
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	zext_int2long r[6:7], r2
	store.d r[6:7], -72(r30)                # 8-byte Folded Spill
	sync_core
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r1, zero, .LBB0_51
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	xfence
	mfence { lm, sm, gm }
	addli.d r[6:7], r[1:2], 0
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               # %middle.block203
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_50
.LBB0_29:                               # %.preheader50
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	load.d r[14:15], -16(r30)               # 8-byte Folded Reload
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[9:10], r[6:7], r1
	j .LBB0_31
.LBB0_30:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r6, r13, r16
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setneq.d r2, r[14:15], r[20:21]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r17, 12(r6)
	stores.w r23, 8(r6)
	stores.w r26, 4(r6)
	stores.w r1, 0(r6)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r2, zero, .LBB0_28
.LBB0_31:                               # %vector.body199
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[14:15], r[9:10]
	slli r16, r1, 2
	add.s r1, r25, r16
	loads.w r11, 12(r1)
	loads.w r27, 0(r1)
	loads.w r8, 4(r1)
	loads.w r24, 8(r1)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r18, r11, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r19, r18
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_33
# %bb.32:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r11, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_31 Depth=3
	or r17, r11, r12
.LBB0_34:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	and r28, r24, r3
	setlt.u r1, r19, r28
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_36
# %bb.35:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_31 Depth=3
	or r23, r24, r12
.LBB0_37:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	and r2, r8, r3
	setlt.u r1, r19, r2
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_39
# %bb.38:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r8, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_31 Depth=3
	or r26, r8, r12
.LBB0_40:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	and r6, r27, r3
	setlt.u r1, r19, r6
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_42
# %bb.41:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r27, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r6, r5, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r6, zero, .LBB0_43
	j .LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r27, r12
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r6, r5, r6
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r6, zero, .LBB0_44
.LBB0_43:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_44:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	setlt.u r2, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r2, zero, .LBB0_47
# %bb.45:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r2, zero, .LBB0_48
.LBB0_46:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_30
	j .LBB0_49
.LBB0_47:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r26, r2, r22
	setlt.u r2, r5, r28
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_46
.LBB0_48:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r4
	and r23, r2, r22
	setlt.u r2, r5, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_30
.LBB0_49:                               # %vector.body199
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r4
	and r17, r2, r22
	j .LBB0_30
.LBB0_50:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
.LBB0_51:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	addli r2, zero, 1
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	bneq r1, r2, .LBB0_76
# %bb.52:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_54
.LBB0_53:                               # %middle.block194
                                        #   in Loop: Header=BB0_54 Depth=2
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_75
.LBB0_54:                               # %.preheader49
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	zext_int2long r[14:15], zero
	sll.d r[6:7], r[6:7], r1
	j .LBB0_56
.LBB0_55:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r2, r13, r16
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setneq.d r1, r[14:15], r[20:21]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r17, 12(r2)
	stores.w r23, 8(r2)
	stores.w r26, 4(r2)
	stores.w r9, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r1, zero, .LBB0_53
.LBB0_56:                               # %vector.body190
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[14:15], r[6:7]
	slli r16, r1, 2
	add.s r1, r25, r16
	loads.w r11, 12(r1)
	loads.w r27, 0(r1)
	loads.w r8, 4(r1)
	loads.w r24, 8(r1)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r18, r11, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r19, r18
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r11, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_56 Depth=3
	or r17, r11, r12
.LBB0_59:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	and r10, r24, r3
	setlt.u r1, r19, r10
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_56 Depth=3
	or r23, r24, r12
.LBB0_62:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	and r28, r8, r3
	setlt.u r1, r19, r28
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_64
# %bb.63:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r8, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=3
	or r26, r8, r12
.LBB0_65:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	and r1, r27, r3
	setlt.u r2, r19, r1
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r2, zero, .LBB0_67
# %bb.66:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r27, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_68
	j .LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r27, r12
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_69
.LBB0_68:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r9, r1, r22
.LBB0_69:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	setlt.u r1, r5, r28
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_72
# %bb.70:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r10
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_73
.LBB0_71:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_55
	j .LBB0_74
.LBB0_72:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r4
	and r26, r1, r22
	setlt.u r1, r5, r10
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_71
.LBB0_73:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r4
	and r23, r1, r22
	setlt.u r1, r5, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_55
.LBB0_74:                               # %vector.body190
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r17, r1, r22
	j .LBB0_55
.LBB0_75:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	mfence { sm }
.LBB0_76:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[6:7], r2
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	loadli.w r2,  -84(r30)                  # 4-byte Folded Reload
	store.d r[6:7], -48(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_101
# %bb.77:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_79
.LBB0_78:                               # %middle.block185
                                        #   in Loop: Header=BB0_79 Depth=2
	.loc	1 200 9 is_stmt 1               # parallel-rne.mlir:200:9
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_100
.LBB0_79:                               # %.preheader48
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[16:17], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[14:15], r[6:7], r1
	j .LBB0_81
.LBB0_80:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r6, r13, r23
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	setneq.d r1, r[16:17], r[20:21]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r18, 12(r6)
	stores.w r2, 8(r6)
	stores.w r26, 4(r6)
	stores.w r9, 0(r6)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	beq r1, zero, .LBB0_78
.LBB0_81:                               # %vector.body181
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[1:2], r[16:17], r[14:15]
	slli r23, r1, 2
	add.s r1, r25, r23
	loads.w r11, 12(r1)
	loads.w r27, 0(r1)
	loads.w r8, 4(r1)
	loads.w r24, 8(r1)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r1, r11, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r2, r19, r1
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r11, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	or r18, r11, r12
.LBB0_84:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	and r10, r24, r3
	setlt.u r2, r19, r10
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_86
# %bb.85:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r24, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	or r2, r24, r12
.LBB0_87:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	and r28, r8, r3
	setlt.u r6, r19, r28
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r6, zero, .LBB0_89
# %bb.88:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r8, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	or r26, r8, r12
.LBB0_90:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	and r6, r27, r3
	setlt.u r7, r19, r6
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r7, zero, .LBB0_92
# %bb.91:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r27, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r6, r5, r6
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r6, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r27, r12
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r6, r5, r6
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r6, zero, .LBB0_94
.LBB0_93:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r4
	and r9, r6, r22
.LBB0_94:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r6, r5, r28
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r6, zero, .LBB0_97
# %bb.95:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r10
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r6, zero, .LBB0_98
.LBB0_96:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r4
	and r26, r6, r22
	setlt.u r6, r5, r10
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r6, zero, .LBB0_96
.LBB0_98:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r4
	and r2, r2, r22
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_80
.LBB0_99:                               # %vector.body181
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r18, r1, r22
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 193 7                         # parallel-rne.mlir:193:7
	mfence { sm }
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[6:7], r2
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	addli r2, zero, 3
	store.d r[6:7], -40(r30)                # 8-byte Folded Spill
	bneq r1, r2, .LBB0_126
# %bb.102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block176
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_125
.LBB0_104:                              # %.preheader47
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[23:24], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[16:17], r[6:7], r1
	j .LBB0_106
.LBB0_105:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r7, r13, r27
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setneq.d r1, r[23:24], r[20:21]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r6, 12(r7)
	stores.w r2, 8(r7)
	stores.w r18, 4(r7)
	stores.w r9, 0(r7)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r1, zero, .LBB0_103
.LBB0_106:                              # %vector.body172
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[23:24], r[16:17]
	slli r27, r1, 2
	add.s r1, r25, r27
	loads.w r11, 12(r1)
	loads.w r26, 0(r1)
	loads.w r8, 4(r1)
	loads.w r7, 8(r1)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r1, r11, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r2, r19, r1
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r2, zero, .LBB0_108
# %bb.107:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	or r6, r11, r12
.LBB0_109:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	and r10, r7, r3
	setlt.u r2, r19, r10
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r2, zero, .LBB0_111
# %bb.110:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_106 Depth=3
	or r2, r7, r12
.LBB0_112:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	and r28, r8, r3
	setlt.u r9, r19, r28
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r9, zero, .LBB0_114
# %bb.113:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r8, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_106 Depth=3
	or r18, r8, r12
.LBB0_115:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	and r14, r26, r3
	setlt.u r9, r19, r14
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r9, zero, .LBB0_117
# %bb.116:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r26, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r14, r5, r14
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r14, zero, .LBB0_118
	j .LBB0_119
.LBB0_117:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r26, r12
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r14, r5, r14
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r14, zero, .LBB0_119
.LBB0_118:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_119:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r14, r5, r28
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r14, zero, .LBB0_122
# %bb.120:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r10
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r8, zero, .LBB0_123
.LBB0_121:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_105
	j .LBB0_124
.LBB0_122:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r8, 16
	andi r14, r14, 1
	add.s r8, r8, r14
	add.s r8, r8, r4
	and r18, r8, r22
	setlt.u r8, r5, r10
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r8, zero, .LBB0_121
.LBB0_123:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r22
	setlt.u r1, r5, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_105
.LBB0_124:                              # %vector.body172
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r6, r1, r22
	j .LBB0_105
.LBB0_125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	mfence { sm }
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[6:7], r2
	.loc	1 249 7 is_stmt 1               # parallel-rne.mlir:249:7
	loadli.w r2,  -80(r30)                  # 4-byte Folded Reload
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_151
# %bb.127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_129
.LBB0_128:                              # %middle.block167
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 256 9 is_stmt 1               # parallel-rne.mlir:256:9
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_150
.LBB0_129:                              # %.preheader46
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[27:28], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[16:17], r[6:7], r1
	j .LBB0_131
.LBB0_130:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	add.s r7, r13, r23
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	setneq.d r1, r[27:28], r[20:21]
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r6, 12(r7)
	stores.w r2, 8(r7)
	stores.w r18, 4(r7)
	stores.w r9, 0(r7)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	beq r1, zero, .LBB0_128
.LBB0_131:                              # %vector.body163
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[1:2], r[27:28], r[16:17]
	slli r23, r1, 2
	add.s r1, r25, r23
	loads.w r11, 12(r1)
	loads.w r24, 0(r1)
	loads.w r8, 4(r1)
	loads.w r7, 8(r1)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r1, r11, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r2, r19, r1
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r2, zero, .LBB0_133
# %bb.132:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=3
	or r6, r11, r12
.LBB0_134:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	and r10, r7, r3
	setlt.u r2, r19, r10
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r2, zero, .LBB0_136
# %bb.135:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_131 Depth=3
	or r2, r7, r12
.LBB0_137:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	and r26, r8, r3
	setlt.u r9, r19, r26
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r9, zero, .LBB0_139
# %bb.138:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r8, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_131 Depth=3
	or r18, r8, r12
.LBB0_140:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	and r14, r24, r3
	setlt.u r9, r19, r14
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r9, zero, .LBB0_142
# %bb.141:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r14, r5, r14
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r14, zero, .LBB0_143
	j .LBB0_144
.LBB0_142:                              #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r24, r12
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r14, r5, r14
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r14, zero, .LBB0_144
.LBB0_143:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_144:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r14, r5, r26
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r14, zero, .LBB0_147
# %bb.145:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r10
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r8, zero, .LBB0_148
.LBB0_146:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_130
	j .LBB0_149
.LBB0_147:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r8, 16
	andi r14, r14, 1
	add.s r8, r8, r14
	add.s r8, r8, r4
	and r18, r8, r22
	setlt.u r8, r5, r10
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r8, zero, .LBB0_146
.LBB0_148:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r22
	setlt.u r1, r5, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_130
.LBB0_149:                              # %vector.body163
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r6, r1, r22
	j .LBB0_130
.LBB0_150:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	mfence { sm }
.LBB0_151:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[6:7], r2
	.loc	1 277 7 is_stmt 1               # parallel-rne.mlir:277:7
	addli r2, zero, 5
	store.d r[6:7], -24(r30)                # 8-byte Folded Spill
	bneq r1, r2, .LBB0_176
# %bb.152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_154
.LBB0_153:                              # %middle.block158
                                        #   in Loop: Header=BB0_154 Depth=2
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_175
.LBB0_154:                              # %.preheader45
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[27:28], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[16:17], r[6:7], r1
	j .LBB0_156
.LBB0_155:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r7, r13, r23
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setneq.d r1, r[27:28], r[20:21]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r6, 12(r7)
	stores.w r2, 8(r7)
	stores.w r18, 4(r7)
	stores.w r9, 0(r7)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	beq r1, zero, .LBB0_153
.LBB0_156:                              # %vector.body154
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[1:2], r[27:28], r[16:17]
	slli r23, r1, 2
	add.s r1, r25, r23
	loads.w r11, 12(r1)
	loads.w r24, 0(r1)
	loads.w r8, 4(r1)
	loads.w r7, 8(r1)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r1, r11, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r2, r19, r1
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r2, zero, .LBB0_158
# %bb.157:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_156 Depth=3
	or r6, r11, r12
.LBB0_159:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	and r10, r7, r3
	setlt.u r2, r19, r10
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r2, zero, .LBB0_161
# %bb.160:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_156 Depth=3
	or r2, r7, r12
.LBB0_162:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	and r26, r8, r3
	setlt.u r9, r19, r26
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r9, zero, .LBB0_164
# %bb.163:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r8, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_156 Depth=3
	or r18, r8, r12
.LBB0_165:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	and r14, r24, r3
	setlt.u r9, r19, r14
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r9, zero, .LBB0_167
# %bb.166:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r14, r5, r14
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r14, zero, .LBB0_168
	j .LBB0_169
.LBB0_167:                              #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r24, r12
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r14, r5, r14
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r14, zero, .LBB0_169
.LBB0_168:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_169:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r14, r5, r26
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r14, zero, .LBB0_172
# %bb.170:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r10
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r8, zero, .LBB0_173
.LBB0_171:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_155
	j .LBB0_174
.LBB0_172:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r8, 16
	andi r14, r14, 1
	add.s r8, r8, r14
	add.s r8, r8, r4
	and r18, r8, r22
	setlt.u r8, r5, r10
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r8, zero, .LBB0_171
.LBB0_173:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r22
	setlt.u r1, r5, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_155
.LBB0_174:                              # %vector.body154
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r6, r1, r22
	j .LBB0_155
.LBB0_175:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r1
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	mfence { sm }
.LBB0_176:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[6:7], r2
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	addli r2, zero, 6
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	bneq r1, r2, .LBB0_201
# %bb.177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 305 7                         # parallel-rne.mlir:305:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_179
.LBB0_178:                              # %middle.block149
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_200
.LBB0_179:                              # %.preheader44
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[27:28], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[16:17], r[6:7], r1
	j .LBB0_181
.LBB0_180:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	add.s r7, r13, r23
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setneq.d r1, r[27:28], r[20:21]
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r6, 12(r7)
	stores.w r2, 8(r7)
	stores.w r18, 4(r7)
	stores.w r9, 0(r7)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r1, zero, .LBB0_178
.LBB0_181:                              # %vector.body145
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[27:28], r[16:17]
	slli r23, r1, 2
	add.s r1, r25, r23
	loads.w r11, 12(r1)
	loads.w r24, 0(r1)
	loads.w r8, 4(r1)
	loads.w r7, 8(r1)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r1, r11, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r2, r19, r1
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r2, zero, .LBB0_183
# %bb.182:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	or r6, r11, r12
.LBB0_184:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	and r10, r7, r3
	setlt.u r2, r19, r10
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r2, zero, .LBB0_186
# %bb.185:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	or r2, r7, r12
.LBB0_187:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	and r26, r8, r3
	setlt.u r9, r19, r26
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r9, zero, .LBB0_189
# %bb.188:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r8, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	or r18, r8, r12
.LBB0_190:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	and r14, r24, r3
	setlt.u r9, r19, r14
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r9, zero, .LBB0_192
# %bb.191:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r14, r5, r14
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r14, zero, .LBB0_193
	j .LBB0_194
.LBB0_192:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r24, r12
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r14, r5, r14
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r14, zero, .LBB0_194
.LBB0_193:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r4
	and r9, r9, r22
.LBB0_194:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r14, r5, r26
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r14, zero, .LBB0_197
# %bb.195:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r10
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r8, zero, .LBB0_198
.LBB0_196:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_180
	j .LBB0_199
.LBB0_197:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r8, 16
	andi r14, r14, 1
	add.s r8, r8, r14
	add.s r8, r8, r4
	and r18, r8, r22
	setlt.u r8, r5, r10
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r8, zero, .LBB0_196
.LBB0_198:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r22
	setlt.u r1, r5, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_180
.LBB0_199:                              # %vector.body145
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r6, r1, r22
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	mfence { sm }
.LBB0_201:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_226
# %bb.202:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 333 7                         # parallel-rne.mlir:333:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_204
.LBB0_203:                              # %middle.block140
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 340 9 is_stmt 1               # parallel-rne.mlir:340:9
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_225
.LBB0_204:                              # %.preheader43
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[23:24], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	j .LBB0_206
.LBB0_205:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r7, r13, r26
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	setneq.d r1, r[23:24], r[20:21]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r6, 12(r7)
	stores.w r2, 8(r7)
	stores.w r18, 4(r7)
	stores.w r14, 0(r7)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	beq r1, zero, .LBB0_203
.LBB0_206:                              # %vector.body136
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[1:2], r[23:24], r[27:28]
	slli r26, r1, 2
	add.s r1, r25, r26
	loads.w r11, 12(r1)
	loads.w r9, 0(r1)
	loads.w r8, 4(r1)
	loads.w r7, 8(r1)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r1, r11, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r2, r19, r1
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r2, zero, .LBB0_208
# %bb.207:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	or r6, r11, r12
.LBB0_209:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	and r10, r7, r3
	setlt.u r2, r19, r10
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r2, zero, .LBB0_211
# %bb.210:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_206 Depth=3
	or r2, r7, r12
.LBB0_212:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	and r15, r8, r3
	setlt.u r14, r19, r15
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r14, zero, .LBB0_214
# %bb.213:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r8, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_206 Depth=3
	or r18, r8, r12
.LBB0_215:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	and r16, r9, r3
	setlt.u r14, r19, r16
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r14, zero, .LBB0_217
# %bb.216:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r16, r5, r16
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r16, zero, .LBB0_218
	j .LBB0_219
.LBB0_217:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r14, r9, r12
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r16, r5, r16
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r16, zero, .LBB0_219
.LBB0_218:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r4
	and r14, r9, r22
.LBB0_219:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	setlt.u r9, r5, r15
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r9, zero, .LBB0_222
# %bb.220:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r10
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r8, zero, .LBB0_223
.LBB0_221:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_205
	j .LBB0_224
.LBB0_222:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r4
	and r18, r8, r22
	setlt.u r8, r5, r10
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r8, zero, .LBB0_221
.LBB0_223:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r22
	setlt.u r1, r5, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_205
.LBB0_224:                              # %vector.body136
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r6, r1, r22
	j .LBB0_205
.LBB0_225:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	mfence { sm }
.LBB0_226:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -112(r30)                 # 4-byte Folded Reload
	addli r2, zero, 224
	zext_int2long r[6:7], r2
	slli r1, r1, 5
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	min.ul r[15:16], r[1:2], r[20:21]
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r1, zero, 255
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	csr_set csr5, r1
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 3
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	sync_core
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	store.d r[15:16], -112(r30)             # 8-byte Folded Spill
	bneq r2, r1, .LBB0_228
# %bb.227:                              # %.thread33.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	addli r1, zero, 13
	xwait r1, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 18
	xwait r1, 0
	j .LBB0_237
.LBB0_228:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -92(r30)                  # 4-byte Folded Reload
	lui r6, 25
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	slli r1, r1, 7
	add.s r14, r1, r6
	.loc	1 365 7 is_stmt 1               # parallel-rne.mlir:365:7
	addli r6, zero, 1
	bneq r2, r6, .LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], 16(r30)
	addli r11, zero, 16
	addli r10, zero, 4
	xwait r11, 0
	loadli.w r2,  -88(r30)                  # 4-byte Folded Reload
	add.ul r[6:7], r[6:7], r[8:9]
	blt.s r10, r2, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	addli r9, zero, 1
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	addli r8, zero, 2
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r8, 3
	addli r8, zero, 128
	dma_cfg r8, zero, r9, 4
	dma_cfg r8, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_231:                              # %.thread33.thread35
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 25
	addli r9, zero, 1
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	lock zero, r10
	addli r8, zero, 64
	ori r2, r2, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r1, r1, r2
	addli r2, r15, 31
	dma_cfg r1, r6, r8, 3
	srli r1, r2, 5
	slli r2, r15, 1
	addli r15, zero, 128
	addli r6, zero, 5
	addli r7, zero, 2
	dma_cfg r15, r8, r1, 4
	andi r2, r2, 62
	dma_cfg r15, r8, r9, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 3
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 7
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r8, 3
	dma_cfg r15, zero, r1, 4
	dma_cfg r15, zero, r9, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r7, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	j .LBB0_236
.LBB0_232:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 366 7                         # parallel-rne.mlir:366:7
	addli r1, zero, 5
	bneq r2, r1, .LBB0_237
# %bb.233:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	addli r1, zero, 0
	addli r6, zero, 4096
	xwait r2, 0
	addli r2, zero, 15
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, r2, zero, 0
	addli r2, zero, 31
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 1
	ew_cfg r2, zero, zero, 3
.LBB0_234:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r13, r1
	addli r1, r1, 128
	dsmadd r2, r2, r14, 0
	bneq r1, r6, .LBB0_234
# %bb.235:                              # %.thread33
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
.LBB0_236:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r2
.LBB0_237:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 25
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	xfence
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	mfence { lm, sm, gm }
	ori r1, r1, 640
	add.s r26, r25, r1
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	beq r2, zero, .LBB0_244
# %bb.238:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	addli r1, zero, 1
	beq r2, r1, .LBB0_275
.LBB0_239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_306
.LBB0_240:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r1, zero, 3
	beq r2, r1, .LBB0_337
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	loadli.w r1,  -80(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_368
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	addli r1, zero, 5
	beq r2, r1, .LBB0_399
.LBB0_243:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	addli r1, zero, 6
	beq r2, r1, .LBB0_430
	j .LBB0_461
.LBB0_244:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_246
.LBB0_245:                              # %middle.block131
                                        #   in Loop: Header=BB0_246 Depth=2
	.loc	1 381 9                         # parallel-rne.mlir:381:9
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_274
.LBB0_246:                              # %.preheader42
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_249 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[6:7], r1
	.loc	1 382 11 is_stmt 1              # parallel-rne.mlir:382:11
	bneq r26, r13, .LBB0_253
# %bb.247:                              # %scalar.ph125.preheader
                                        #   in Loop: Header=BB0_246 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_249
.LBB0_248:                              # %scalar.ph125
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	.loc	1 397 13 is_stmt 1              # parallel-rne.mlir:397:13
	add.s r6, r26, r6
	stores.w r7, 0(r6)
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_245
.LBB0_249:                              # %scalar.ph125
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_246 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	add.ul r[6:7], r[1:2], r[14:15]
	slli r6, r6, 2
	add.s r7, r13, r6
	loads.w r8, 0(r7)
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r9, r8, r3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	setlt.u r7, r19, r9
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r7, zero, .LBB0_251
# %bb.250:                              # %scalar.ph125
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r9, r5, r9
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_248
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r9, r5, r9
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r9, zero, .LBB0_248
.LBB0_252:                              # %scalar.ph125
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r22
	j .LBB0_248
.LBB0_253:                              # %vector.body127.preheader
                                        #   in Loop: Header=BB0_246 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_255
.LBB0_254:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 382 11 is_stmt 1              # parallel-rne.mlir:382:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	add.s r2, r26, r11
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	seteq.d r1, r[23:24], r[20:21]
	.loc	1 397 13                        # parallel-rne.mlir:397:13
	stores.w r6, 12(r2)
	stores.w r9, 8(r2)
	stores.w r27, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 382 11                        # parallel-rne.mlir:382:11
	bneq r1, zero, .LBB0_245
.LBB0_255:                              # %vector.body127
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_246 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	add.ul r[1:2], r[23:24], r[14:15]
	slli r11, r1, 2
	add.s r8, r13, r11
	loads.w r18, 12(r8)
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r7, r18, r3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	setlt.u r1, r19, r7
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_257
# %bb.256:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r18, 0
	j .LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_255 Depth=3
	or r6, r18, r12
.LBB0_258:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r1, 8(r8)
	and r10, r1, r3
	setlt.u r2, r19, r10
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r2, zero, .LBB0_260
# %bb.259:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r1, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_255 Depth=3
	or r9, r1, r12
.LBB0_261:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r2, 4(r8)
	and r28, r2, r3
	setlt.u r16, r19, r28
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r16, zero, .LBB0_263
# %bb.262:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r2, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_255 Depth=3
	or r27, r2, r12
.LBB0_264:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r19, r17
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r8, zero, .LBB0_266
# %bb.265:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r17, r5, r17
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r17, zero, .LBB0_267
	j .LBB0_268
.LBB0_266:                              #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r12
	.loc	1 394 19 is_stmt 1              # parallel-rne.mlir:394:19
	setlt.u r17, r5, r17
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r17, zero, .LBB0_268
.LBB0_267:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_268:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r16, r5, r28
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r16, zero, .LBB0_271
# %bb.269:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r10
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	beq r2, zero, .LBB0_272
.LBB0_270:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r7
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r1, zero, .LBB0_254
	j .LBB0_273
.LBB0_271:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r2, 16
	andi r16, r16, 1
	add.s r2, r2, r16
	add.s r2, r2, r4
	and r27, r2, r22
	setlt.u r2, r5, r10
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r2, zero, .LBB0_270
.LBB0_272:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r4
	and r9, r1, r22
	setlt.u r1, r5, r7
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	bneq r1, zero, .LBB0_254
.LBB0_273:                              # %vector.body127
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r4
	and r6, r1, r22
	j .LBB0_254
.LBB0_274:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	mfence { sm }
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	addli r1, zero, 1
	bneq r2, r1, .LBB0_239
.LBB0_275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_277
.LBB0_276:                              # %middle.block122
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 409 9 is_stmt 1               # parallel-rne.mlir:409:9
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_305
.LBB0_277:                              # %.preheader41
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_286 Depth 3
                                        #       Child Loop BB0_280 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[6:7], r1
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	bneq r26, r13, .LBB0_284
# %bb.278:                              # %scalar.ph116.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_280
.LBB0_279:                              # %scalar.ph116
                                        #   in Loop: Header=BB0_280 Depth=3
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	.loc	1 425 13 is_stmt 1              # parallel-rne.mlir:425:13
	add.s r6, r26, r6
	stores.w r7, 0(r6)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_276
.LBB0_280:                              # %scalar.ph116
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[6:7], r[1:2], r[14:15]
	slli r6, r6, 2
	add.s r7, r13, r6
	loads.w r8, 0(r7)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r9, r8, r3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	setlt.u r7, r19, r9
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r7, zero, .LBB0_282
# %bb.281:                              # %scalar.ph116
                                        #   in Loop: Header=BB0_280 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r9, r5, r9
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r9, zero, .LBB0_279
	j .LBB0_283
.LBB0_282:                              #   in Loop: Header=BB0_280 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r9, r5, r9
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r9, zero, .LBB0_279
.LBB0_283:                              # %scalar.ph116
                                        #   in Loop: Header=BB0_280 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r22
	j .LBB0_279
.LBB0_284:                              # %vector.body118.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_286
.LBB0_285:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	add.s r6, r26, r11
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	seteq.d r2, r[23:24], r[20:21]
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	stores.w r18, 12(r6)
	stores.w r1, 8(r6)
	stores.w r27, 4(r6)
	stores.w r8, 0(r6)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	bneq r2, zero, .LBB0_276
.LBB0_286:                              # %vector.body118
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[1:2], r[23:24], r[14:15]
	slli r11, r1, 2
	add.s r8, r13, r11
	loads.w r6, 12(r8)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r7, r6, r3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	setlt.u r1, r19, r7
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r1, zero, .LBB0_288
# %bb.287:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r6, 0
	j .LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_286 Depth=3
	or r18, r6, r12
.LBB0_289:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	loads.w r9, 8(r8)
	and r10, r9, r3
	setlt.u r1, r19, r10
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r1, zero, .LBB0_291
# %bb.290:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r9, 0
	j .LBB0_292
.LBB0_291:                              #   in Loop: Header=BB0_286 Depth=3
	or r1, r9, r12
.LBB0_292:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	loads.w r2, 4(r8)
	and r28, r2, r3
	setlt.u r16, r19, r28
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r16, zero, .LBB0_294
# %bb.293:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r2, 0
	j .LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_286 Depth=3
	or r27, r2, r12
.LBB0_295:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r19, r17
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_297
# %bb.296:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r17, r5, r17
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r17, zero, .LBB0_298
	j .LBB0_299
.LBB0_297:                              #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r12
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r17, r5, r17
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r17, zero, .LBB0_299
.LBB0_298:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_299:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	setlt.u r16, r5, r28
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r16, zero, .LBB0_302
# %bb.300:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r10
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r2, zero, .LBB0_303
.LBB0_301:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r7
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r2, zero, .LBB0_285
	j .LBB0_304
.LBB0_302:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r2, 16
	andi r16, r16, 1
	add.s r2, r2, r16
	add.s r2, r2, r4
	and r27, r2, r22
	setlt.u r2, r5, r10
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r2, zero, .LBB0_301
.LBB0_303:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r7
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r2, zero, .LBB0_285
.LBB0_304:                              # %vector.body118
                                        #   in Loop: Header=BB0_286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r18, r2, r22
	j .LBB0_285
.LBB0_305:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	mfence { sm }
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_240
.LBB0_306:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_308
.LBB0_307:                              # %middle.block113
                                        #   in Loop: Header=BB0_308 Depth=2
	.loc	1 437 9 is_stmt 1               # parallel-rne.mlir:437:9
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_336
.LBB0_308:                              # %.preheader40
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	sll.d r[14:15], r[6:7], r1
	.loc	1 438 11 is_stmt 1              # parallel-rne.mlir:438:11
	bneq r26, r13, .LBB0_315
# %bb.309:                              # %scalar.ph107.preheader
                                        #   in Loop: Header=BB0_308 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_311
.LBB0_310:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	.loc	1 453 13 is_stmt 1              # parallel-rne.mlir:453:13
	add.s r6, r26, r6
	stores.w r7, 0(r6)
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_307
.LBB0_311:                              # %scalar.ph107
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_308 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.ul r[6:7], r[1:2], r[14:15]
	slli r6, r6, 2
	add.s r7, r13, r6
	loads.w r8, 0(r7)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	and r9, r8, r3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	setlt.u r7, r19, r9
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r7, zero, .LBB0_313
# %bb.312:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r9, r5, r9
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r9, zero, .LBB0_310
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r9, r5, r9
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r9, zero, .LBB0_310
.LBB0_314:                              # %scalar.ph107
                                        #   in Loop: Header=BB0_311 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r22
	j .LBB0_310
.LBB0_315:                              # %vector.body109.preheader
                                        #   in Loop: Header=BB0_308 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_317
.LBB0_316:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 438 11 is_stmt 1              # parallel-rne.mlir:438:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	add.s r6, r26, r11
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	seteq.d r2, r[23:24], r[20:21]
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	stores.w r18, 12(r6)
	stores.w r1, 8(r6)
	stores.w r9, 4(r6)
	stores.w r8, 0(r6)
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	bneq r2, zero, .LBB0_307
.LBB0_317:                              # %vector.body109
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_308 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.ul r[1:2], r[23:24], r[14:15]
	slli r11, r1, 2
	add.s r8, r13, r11
	loads.w r6, 12(r8)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	and r7, r6, r3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	setlt.u r1, r19, r7
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r1, zero, .LBB0_319
# %bb.318:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r6, 0
	j .LBB0_320
.LBB0_319:                              #   in Loop: Header=BB0_317 Depth=3
	or r18, r6, r12
.LBB0_320:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	loads.w r27, 8(r8)
	and r28, r27, r3
	setlt.u r1, r19, r28
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r1, zero, .LBB0_322
# %bb.321:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r27, 0
	j .LBB0_323
.LBB0_322:                              #   in Loop: Header=BB0_317 Depth=3
	or r1, r27, r12
.LBB0_323:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	loads.w r2, 4(r8)
	and r10, r2, r3
	setlt.u r9, r19, r10
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r9, zero, .LBB0_325
# %bb.324:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_326
.LBB0_325:                              #   in Loop: Header=BB0_317 Depth=3
	or r9, r2, r12
.LBB0_326:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	loads.w r16, 0(r8)
	and r17, r16, r3
	setlt.u r8, r19, r17
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	bneq r8, zero, .LBB0_328
# %bb.327:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r17, r5, r17
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r17, zero, .LBB0_329
	j .LBB0_330
.LBB0_328:                              #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r16, r12
	.loc	1 450 19 is_stmt 1              # parallel-rne.mlir:450:19
	setlt.u r17, r5, r17
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r17, zero, .LBB0_330
.LBB0_329:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r4
	and r8, r8, r22
.LBB0_330:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	setlt.u r10, r5, r10
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r10, zero, .LBB0_333
# %bb.331:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r2, zero, .LBB0_334
.LBB0_332:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r7
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r2, zero, .LBB0_316
	j .LBB0_335
.LBB0_333:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r4
	and r9, r2, r22
	setlt.u r2, r5, r28
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r2, zero, .LBB0_332
.LBB0_334:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r7
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r2, zero, .LBB0_316
.LBB0_335:                              # %vector.body109
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r18, r2, r22
	j .LBB0_316
.LBB0_336:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	mfence { sm }
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r1, zero, 3
	bneq r2, r1, .LBB0_241
.LBB0_337:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_339
.LBB0_338:                              # %middle.block104
                                        #   in Loop: Header=BB0_339 Depth=2
	.loc	1 465 9 is_stmt 1               # parallel-rne.mlir:465:9
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -48(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_367
.LBB0_339:                              # %.preheader39
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_348 Depth 3
                                        #       Child Loop BB0_342 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -48(r30)                # 8-byte Folded Spill
	sll.d r[9:10], r[6:7], r1
	.loc	1 466 11 is_stmt 1              # parallel-rne.mlir:466:11
	bneq r26, r13, .LBB0_346
# %bb.340:                              # %scalar.ph98.preheader
                                        #   in Loop: Header=BB0_339 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_342
.LBB0_341:                              # %scalar.ph98
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 481 13 is_stmt 1              # parallel-rne.mlir:481:13
	add.s r6, r26, r6
	stores.w r7, 0(r6)
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	setlt.ul r8, r[1:2], r[14:15]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_338
.LBB0_342:                              # %scalar.ph98
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_339 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 467 19                        # parallel-rne.mlir:467:19
	add.ul r[6:7], r[1:2], r[9:10]
	slli r6, r6, 2
	add.s r7, r13, r6
	loads.w r8, 0(r7)
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	and r11, r8, r3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	setlt.u r7, r19, r11
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r7, zero, .LBB0_344
# %bb.343:                              # %scalar.ph98
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r11, r5, r11
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r11, zero, .LBB0_341
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r11, r5, r11
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r11, zero, .LBB0_341
.LBB0_345:                              # %scalar.ph98
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r22
	j .LBB0_341
.LBB0_346:                              # %vector.body100.preheader
                                        #   in Loop: Header=BB0_339 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_348
.LBB0_347:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 466 11 is_stmt 1              # parallel-rne.mlir:466:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	add.s r6, r26, r11
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	seteq.d r2, r[14:15], r[20:21]
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	stores.w r18, 12(r6)
	stores.w r23, 8(r6)
	stores.w r1, 4(r6)
	stores.w r8, 0(r6)
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	bneq r2, zero, .LBB0_338
.LBB0_348:                              # %vector.body100
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_339 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 467 19                        # parallel-rne.mlir:467:19
	add.ul r[1:2], r[14:15], r[9:10]
	slli r11, r1, 2
	add.s r2, r13, r11
	loads.w r6, 12(r2)
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	and r7, r6, r3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	setlt.u r1, r19, r7
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_350
# %bb.349:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r6, 0
	j .LBB0_351
.LBB0_350:                              #   in Loop: Header=BB0_348 Depth=3
	or r18, r6, r12
.LBB0_351:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	loads.w r27, 8(r2)
	and r28, r27, r3
	setlt.u r1, r19, r28
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_353
# %bb.352:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r27, 0
	j .LBB0_354
.LBB0_353:                              #   in Loop: Header=BB0_348 Depth=3
	or r23, r27, r12
.LBB0_354:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	loads.w r24, 4(r2)
	and r16, r24, r3
	setlt.u r1, r19, r16
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_356
# %bb.355:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
	j .LBB0_357
.LBB0_356:                              #   in Loop: Header=BB0_348 Depth=3
	or r1, r24, r12
.LBB0_357:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r19, r17
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r8, zero, .LBB0_359
# %bb.358:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r17, r5, r17
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	beq r17, zero, .LBB0_360
	j .LBB0_361
.LBB0_359:                              #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r12
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r17, r5, r17
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r17, zero, .LBB0_361
.LBB0_360:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_361:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	setlt.u r2, r5, r16
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	beq r2, zero, .LBB0_364
# %bb.362:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	beq r2, zero, .LBB0_365
.LBB0_363:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r7
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r2, zero, .LBB0_347
	j .LBB0_366
.LBB0_364:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r28
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r2, zero, .LBB0_363
.LBB0_365:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r4
	and r23, r2, r22
	setlt.u r2, r5, r7
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	bneq r2, zero, .LBB0_347
.LBB0_366:                              # %vector.body100
                                        #   in Loop: Header=BB0_348 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r18, r2, r22
	j .LBB0_347
.LBB0_367:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	mfence { sm }
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	loadli.w r1,  -80(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_242
.LBB0_368:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_370
.LBB0_369:                              # %middle.block95
                                        #   in Loop: Header=BB0_370 Depth=2
	.loc	1 493 9 is_stmt 1               # parallel-rne.mlir:493:9
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_398
.LBB0_370:                              # %.preheader38
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_379 Depth 3
                                        #       Child Loop BB0_373 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -40(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 494 11 is_stmt 1              # parallel-rne.mlir:494:11
	bneq r26, r13, .LBB0_377
# %bb.371:                              # %scalar.ph89.preheader
                                        #   in Loop: Header=BB0_370 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_373
.LBB0_372:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_373 Depth=3
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 509 13 is_stmt 1              # parallel-rne.mlir:509:13
	add.s r8, r26, r8
	stores.w r9, 0(r8)
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_369
.LBB0_373:                              # %scalar.ph89
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_370 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r13, r8
	loads.w r10, 0(r9)
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	and r11, r10, r3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	setlt.u r9, r19, r11
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r9, zero, .LBB0_375
# %bb.374:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_373 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r11, r5, r11
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r11, zero, .LBB0_372
	j .LBB0_376
.LBB0_375:                              #   in Loop: Header=BB0_373 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r12
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r11, r5, r11
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r11, zero, .LBB0_372
.LBB0_376:                              # %scalar.ph89
                                        #   in Loop: Header=BB0_373 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
	j .LBB0_372
.LBB0_377:                              # %vector.body91.preheader
                                        #   in Loop: Header=BB0_370 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_379
.LBB0_378:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 494 11 is_stmt 1              # parallel-rne.mlir:494:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 509 13                        # parallel-rne.mlir:509:13
	add.s r11, r26, r11
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	seteq.d r2, r[9:10], r[20:21]
	.loc	1 509 13                        # parallel-rne.mlir:509:13
	stores.w r14, 12(r11)
	stores.w r23, 8(r11)
	stores.w r1, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 494 11                        # parallel-rne.mlir:494:11
	bneq r2, zero, .LBB0_369
.LBB0_379:                              # %vector.body91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_370 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r11, r1, 2
	add.s r2, r13, r11
	loads.w r15, 12(r2)
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	and r18, r15, r3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	setlt.u r1, r19, r18
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r1, zero, .LBB0_381
# %bb.380:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_382
.LBB0_381:                              #   in Loop: Header=BB0_379 Depth=3
	or r14, r15, r12
.LBB0_382:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	loads.w r27, 8(r2)
	and r28, r27, r3
	setlt.u r1, r19, r28
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r1, zero, .LBB0_384
# %bb.383:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r27, 0
	j .LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_379 Depth=3
	or r23, r27, r12
.LBB0_385:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	loads.w r24, 4(r2)
	and r16, r24, r3
	setlt.u r1, r19, r16
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r1, zero, .LBB0_387
# %bb.386:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
	j .LBB0_388
.LBB0_387:                              #   in Loop: Header=BB0_379 Depth=3
	or r1, r24, r12
.LBB0_388:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r19, r17
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r8, zero, .LBB0_390
# %bb.389:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r17, r5, r17
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	beq r17, zero, .LBB0_391
	j .LBB0_392
.LBB0_390:                              #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r12
	.loc	1 506 19 is_stmt 1              # parallel-rne.mlir:506:19
	setlt.u r17, r5, r17
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r17, zero, .LBB0_392
.LBB0_391:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_392:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	setlt.u r2, r5, r16
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	beq r2, zero, .LBB0_395
# %bb.393:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	beq r2, zero, .LBB0_396
.LBB0_394:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_378
	j .LBB0_397
.LBB0_395:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r28
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_394
.LBB0_396:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r4
	and r23, r2, r22
	setlt.u r2, r5, r18
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	bneq r2, zero, .LBB0_378
.LBB0_397:                              # %vector.body91
                                        #   in Loop: Header=BB0_379 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r4
	and r14, r2, r22
	j .LBB0_378
.LBB0_398:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	mfence { sm }
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	addli r1, zero, 5
	bneq r2, r1, .LBB0_243
.LBB0_399:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_401
.LBB0_400:                              # %middle.block86
                                        #   in Loop: Header=BB0_401 Depth=2
	.loc	1 521 9 is_stmt 1               # parallel-rne.mlir:521:9
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_429
.LBB0_401:                              # %.preheader37
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_410 Depth 3
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 522 11 is_stmt 1              # parallel-rne.mlir:522:11
	bneq r26, r13, .LBB0_408
# %bb.402:                              # %scalar.ph80.preheader
                                        #   in Loop: Header=BB0_401 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_404
.LBB0_403:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 537 13 is_stmt 1              # parallel-rne.mlir:537:13
	add.s r8, r26, r8
	stores.w r9, 0(r8)
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_400
.LBB0_404:                              # %scalar.ph80
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 523 19                        # parallel-rne.mlir:523:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r13, r8
	loads.w r10, 0(r9)
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	and r11, r10, r3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	setlt.u r9, r19, r11
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r9, zero, .LBB0_406
# %bb.405:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r11, r5, r11
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r11, zero, .LBB0_403
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r12
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r11, r5, r11
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r11, zero, .LBB0_403
.LBB0_407:                              # %scalar.ph80
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
	j .LBB0_403
.LBB0_408:                              # %vector.body82.preheader
                                        #   in Loop: Header=BB0_401 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_410
.LBB0_409:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 522 11 is_stmt 1              # parallel-rne.mlir:522:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 537 13                        # parallel-rne.mlir:537:13
	add.s r11, r26, r11
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	seteq.d r2, r[9:10], r[20:21]
	.loc	1 537 13                        # parallel-rne.mlir:537:13
	stores.w r14, 12(r11)
	stores.w r23, 8(r11)
	stores.w r1, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 522 11                        # parallel-rne.mlir:522:11
	bneq r2, zero, .LBB0_400
.LBB0_410:                              # %vector.body82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 523 19                        # parallel-rne.mlir:523:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r11, r1, 2
	add.s r2, r13, r11
	loads.w r15, 12(r2)
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	and r18, r15, r3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	setlt.u r1, r19, r18
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r1, zero, .LBB0_412
# %bb.411:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_410 Depth=3
	or r14, r15, r12
.LBB0_413:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	loads.w r27, 8(r2)
	and r28, r27, r3
	setlt.u r1, r19, r28
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r1, zero, .LBB0_415
# %bb.414:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r27, 0
	j .LBB0_416
.LBB0_415:                              #   in Loop: Header=BB0_410 Depth=3
	or r23, r27, r12
.LBB0_416:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	loads.w r24, 4(r2)
	and r16, r24, r3
	setlt.u r1, r19, r16
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r1, zero, .LBB0_418
# %bb.417:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
	j .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_410 Depth=3
	or r1, r24, r12
.LBB0_419:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r19, r17
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	bneq r8, zero, .LBB0_421
# %bb.420:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r17, r5, r17
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	beq r17, zero, .LBB0_422
	j .LBB0_423
.LBB0_421:                              #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r12
	.loc	1 534 19 is_stmt 1              # parallel-rne.mlir:534:19
	setlt.u r17, r5, r17
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r17, zero, .LBB0_423
.LBB0_422:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_423:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	setlt.u r2, r5, r16
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	beq r2, zero, .LBB0_426
# %bb.424:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	beq r2, zero, .LBB0_427
.LBB0_425:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_409
	j .LBB0_428
.LBB0_426:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r28
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_425
.LBB0_427:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r4
	and r23, r2, r22
	setlt.u r2, r5, r18
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	bneq r2, zero, .LBB0_409
.LBB0_428:                              # %vector.body82
                                        #   in Loop: Header=BB0_410 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r4
	and r14, r2, r22
	j .LBB0_409
.LBB0_429:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 514 7                         # parallel-rne.mlir:514:7
	mfence { sm }
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	addli r1, zero, 6
	bneq r2, r1, .LBB0_461
.LBB0_430:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_432
.LBB0_431:                              # %middle.block77
                                        #   in Loop: Header=BB0_432 Depth=2
	.loc	1 549 9 is_stmt 1               # parallel-rne.mlir:549:9
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	load.d r[6:7], -24(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_460
.LBB0_432:                              # %.preheader36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_441 Depth 3
                                        #       Child Loop BB0_435 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -24(r30)                # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 550 11 is_stmt 1              # parallel-rne.mlir:550:11
	bneq r26, r13, .LBB0_439
# %bb.433:                              # %scalar.ph71.preheader
                                        #   in Loop: Header=BB0_432 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_435
.LBB0_434:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_435 Depth=3
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	.loc	1 565 13 is_stmt 1              # parallel-rne.mlir:565:13
	add.s r8, r26, r8
	stores.w r9, 0(r8)
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	setlt.ul r10, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r10, zero, .LBB0_431
.LBB0_435:                              # %scalar.ph71
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	add.ul r[8:9], r[1:2], r[6:7]
	slli r8, r8, 2
	add.s r9, r13, r8
	loads.w r10, 0(r9)
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	and r11, r10, r3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	setlt.u r9, r19, r11
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r9, zero, .LBB0_437
# %bb.436:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_435 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r11, r5, r11
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r11, zero, .LBB0_434
	j .LBB0_438
.LBB0_437:                              #   in Loop: Header=BB0_435 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r12
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r11, r5, r11
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r11, zero, .LBB0_434
.LBB0_438:                              # %scalar.ph71
                                        #   in Loop: Header=BB0_435 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r4
	and r9, r9, r22
	j .LBB0_434
.LBB0_439:                              # %vector.body73.preheader
                                        #   in Loop: Header=BB0_432 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_441
.LBB0_440:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 550 11 is_stmt 1              # parallel-rne.mlir:550:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	add.s r11, r26, r11
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	seteq.d r2, r[9:10], r[20:21]
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	stores.w r14, 12(r11)
	stores.w r23, 8(r11)
	stores.w r1, 4(r11)
	stores.w r8, 0(r11)
	.loc	1 550 11                        # parallel-rne.mlir:550:11
	bneq r2, zero, .LBB0_431
.LBB0_441:                              # %vector.body73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	add.ul r[1:2], r[9:10], r[6:7]
	slli r11, r1, 2
	add.s r2, r13, r11
	loads.w r15, 12(r2)
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	and r18, r15, r3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	setlt.u r1, r19, r18
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r1, zero, .LBB0_443
# %bb.442:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_444
.LBB0_443:                              #   in Loop: Header=BB0_441 Depth=3
	or r14, r15, r12
.LBB0_444:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	loads.w r27, 8(r2)
	and r28, r27, r3
	setlt.u r1, r19, r28
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r1, zero, .LBB0_446
# %bb.445:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r27, 0
	j .LBB0_447
.LBB0_446:                              #   in Loop: Header=BB0_441 Depth=3
	or r23, r27, r12
.LBB0_447:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	loads.w r24, 4(r2)
	and r16, r24, r3
	setlt.u r1, r19, r16
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r1, zero, .LBB0_449
# %bb.448:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r24, 0
	j .LBB0_450
.LBB0_449:                              #   in Loop: Header=BB0_441 Depth=3
	or r1, r24, r12
.LBB0_450:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	loads.w r2, 0(r2)
	and r17, r2, r3
	setlt.u r8, r19, r17
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	bneq r8, zero, .LBB0_452
# %bb.451:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r2, 0
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r17, r5, r17
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	beq r17, zero, .LBB0_453
	j .LBB0_454
.LBB0_452:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r2, r12
	.loc	1 562 19 is_stmt 1              # parallel-rne.mlir:562:19
	setlt.u r17, r5, r17
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r17, zero, .LBB0_454
.LBB0_453:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r2, 16
	andi r8, r8, 1
	add.s r2, r2, r8
	add.s r2, r2, r4
	and r8, r2, r22
.LBB0_454:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	setlt.u r2, r5, r16
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	beq r2, zero, .LBB0_457
# %bb.455:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r28
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	beq r2, zero, .LBB0_458
.LBB0_456:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r18
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_440
	j .LBB0_459
.LBB0_457:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r4
	and r1, r1, r22
	setlt.u r2, r5, r28
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_456
.LBB0_458:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r4
	and r23, r2, r22
	setlt.u r2, r5, r18
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	bneq r2, zero, .LBB0_440
.LBB0_459:                              # %vector.body73
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r4
	and r14, r2, r22
	j .LBB0_440
.LBB0_460:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 542 7                         # parallel-rne.mlir:542:7
	mfence { sm }
.LBB0_461:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -24(r30)                # 8-byte Folded Spill
	beq r1, zero, .LBB0_493
# %bb.462:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_464
.LBB0_463:                              # %middle.block
                                        #   in Loop: Header=BB0_464 Depth=2
	.loc	1 577 9 is_stmt 1               # parallel-rne.mlir:577:9
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_492
.LBB0_464:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_473 Depth 3
                                        #       Child Loop BB0_467 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	sll.d r[9:10], r[6:7], r1
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	bneq r26, r13, .LBB0_471
# %bb.465:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_464 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_467
.LBB0_466:                              # %scalar.ph
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	.loc	1 593 13 is_stmt 1              # parallel-rne.mlir:593:13
	add.s r6, r26, r6
	stores.w r7, 0(r6)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	setlt.ul r8, r[1:2], r[14:15]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_463
.LBB0_467:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_464 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[6:7], r[1:2], r[9:10]
	slli r6, r6, 2
	add.s r7, r13, r6
	loads.w r8, 0(r7)
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	and r11, r8, r3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	setlt.u r7, r19, r11
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r7, zero, .LBB0_469
# %bb.468:                              # %scalar.ph
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r11, r5, r11
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r11, zero, .LBB0_466
	j .LBB0_470
.LBB0_469:                              #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r11, r5, r11
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r11, zero, .LBB0_466
.LBB0_470:                              # %scalar.ph
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r22
	j .LBB0_466
.LBB0_471:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_464 Depth=2
	load.d r[14:15], -24(r30)               # 8-byte Folded Reload
	j .LBB0_473
.LBB0_472:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 593 13                        # parallel-rne.mlir:593:13
	add.s r7, r26, r11
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	seteq.d r2, r[14:15], r[20:21]
	.loc	1 593 13                        # parallel-rne.mlir:593:13
	stores.w r18, 12(r7)
	stores.w r8, 8(r7)
	stores.w r6, 4(r7)
	stores.w r1, 0(r7)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	bneq r2, zero, .LBB0_463
.LBB0_473:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_464 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[1:2], r[14:15], r[9:10]
	slli r11, r1, 2
	add.s r1, r13, r11
	loads.w r23, 12(r1)
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	and r24, r23, r3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	setlt.u r2, r19, r24
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r2, zero, .LBB0_475
# %bb.474:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r23, 0
	j .LBB0_476
.LBB0_475:                              #   in Loop: Header=BB0_473 Depth=3
	or r18, r23, r12
.LBB0_476:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	loads.w r27, 8(r1)
	and r2, r27, r3
	setlt.u r6, r19, r2
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r6, zero, .LBB0_478
# %bb.477:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r27, 0
	j .LBB0_479
.LBB0_478:                              #   in Loop: Header=BB0_473 Depth=3
	or r8, r27, r12
.LBB0_479:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	loads.w r28, 4(r1)
	and r7, r28, r3
	setlt.u r6, r19, r7
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r6, zero, .LBB0_481
# %bb.480:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_482
.LBB0_481:                              #   in Loop: Header=BB0_473 Depth=3
	or r6, r28, r12
.LBB0_482:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	loads.w r16, 0(r1)
	and r17, r16, r3
	setlt.u r1, r19, r17
	.loc	1 584 19                        # parallel-rne.mlir:584:19
	bneq r1, zero, .LBB0_484
# %bb.483:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r16, 0
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r17, r5, r17
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	beq r17, zero, .LBB0_485
	j .LBB0_486
.LBB0_484:                              #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r16, r12
	.loc	1 590 19 is_stmt 1              # parallel-rne.mlir:590:19
	setlt.u r17, r5, r17
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r17, zero, .LBB0_486
.LBB0_485:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_486:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	setlt.u r7, r5, r7
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	beq r7, zero, .LBB0_489
# %bb.487:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r2
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	beq r2, zero, .LBB0_490
.LBB0_488:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r24
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r2, zero, .LBB0_472
	j .LBB0_491
.LBB0_489:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r4
	and r6, r6, r22
	setlt.u r2, r5, r2
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r2, zero, .LBB0_488
.LBB0_490:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r27, 16
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r4
	and r8, r2, r22
	setlt.u r2, r5, r24
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	bneq r2, zero, .LBB0_472
.LBB0_491:                              # %vector.body
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r4
	and r18, r2, r22
	j .LBB0_472
.LBB0_492:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r2
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	mfence { sm }
.LBB0_493:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 598 7                         # parallel-rne.mlir:598:7
	addli r1, zero, 255
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 598 7                         # parallel-rne.mlir:598:7
	csr_set csr5, r1
	.loc	1 599 7                         # parallel-rne.mlir:599:7
	addli r1, zero, 3
	.loc	1 598 7                         # parallel-rne.mlir:598:7
	sync_core
	.loc	1 599 7                         # parallel-rne.mlir:599:7
	beq r2, r1, .LBB0_5
# %bb.494:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[13:14], -104(r30)              # 8-byte Folded Reload
	.loc	1 608 7 is_stmt 1               # parallel-rne.mlir:608:7
	bneq r2, zero, .LBB0_6
# %bb.495:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	load.d r[6:7], -128(r30)                # 8-byte Folded Reload
	addli r8, zero, 17
	addli r2, zero, 14
	addli r11, zero, 5
	addli r16, zero, 1
	load.d r[17:18], 24(r30)
	addli r15, zero, 64
	xwait r8, 0
	load.d r[8:9], -24(r30)                 # 8-byte Folded Reload
	lock zero, r11
	slli r1, r1, 5
	sll.d r[6:7], r[6:7], r2
	dma_cfg r16, r16, zero, 0
	sext_int2long r[1:2], r1
	add.ul r[6:7], r[17:18], r[6:7]
	min.sl r[8:9], r[1:2], r[8:9]
	addli.d r[8:9], r[8:9], 32
	max.sl r[8:9], r[8:9], r[1:2]
	sub.sl r[1:2], r[8:9], r[1:2]
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	dma_cfg zero, r16, zero, 1
	.loc	1 604 13 is_stmt 1              # parallel-rne.mlir:604:13
	min.sl r[1:2], r[1:2], r[20:21]
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	add.ul r[6:7], r[6:7], r[8:9]
	lui r8, 25
	dma_cfg r7, zero, zero, 2
	ori r8, r8, 704
	load.d r[17:18], -112(r30)              # 8-byte Folded Reload
	add.s r8, r25, r8
	addli r9, r17, 31
	dma_cfg r6, r8, r15, 3
	slli r7, r17, 1
	addli r8, zero, 128
	srli r6, r9, 5
	dma_cfg r15, r8, r6, 4
	andi r6, r7, 62
	addli r7, zero, 512
	dma_cfg r7, r8, r1, 5
	addli r1, zero, 18
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r1, 0
	j .LBB0_6
.LBB0_496:                              # %._crit_edge
	.loc	1 610 5                         # parallel-rne.mlir:610:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_498
# %bb.497:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 610 5                         # parallel-rne.mlir:610:5
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
.LBB0_498:
	.loc	1 611 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:611:5
	addli sp, sp, 152
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
	.long	216                             # 0xd8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-xwwp1ir_" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
