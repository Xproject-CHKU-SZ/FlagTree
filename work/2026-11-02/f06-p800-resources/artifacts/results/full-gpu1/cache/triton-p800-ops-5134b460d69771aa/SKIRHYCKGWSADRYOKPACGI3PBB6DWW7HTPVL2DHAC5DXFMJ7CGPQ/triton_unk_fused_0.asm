	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-9pxih2mt" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -208
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r2
	core_id r10
	addli r30, sp, 144
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
	ble.s r2, r1, .LBB0_443
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	lui r4, 522239
	addli r12, zero, 64
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 13
	addli r18, zero, 3
	addli r23, zero, 4
	addli r24, zero, 2
	addli r14, zero, 6
	lui r22, 1024
	lui r20, 522240
	lui r21, 1048560
	addli r11, zero, 0
	store.d r[2:3], -144(r30)               # 8-byte Folded Spill
	lui r2, 7
	ori r1, r1, 4095
	ori r13, r4, 4095
	ori r3, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	addli r2, zero, 14
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r12, zero, 64
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 13
	addli r23, zero, 4
	addli r24, zero, 2
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	xsignal r2, 0
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r2, zero, 17
.LBB0_6:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[4:5], -144(r30)                # 8-byte Folded Reload
	loadli.w r11,  -96(r30)                 # 4-byte Folded Reload
	addli r14, zero, 6
	addli.d r[6:7], r[6:7], 1
	addli r11, r11, 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_443
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_32 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #     Child Loop BB0_80 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_180 Depth 2
                                        #       Child Loop BB0_182 Depth 3
                                        #     Child Loop BB0_205 Depth 2
                                        #       Child Loop BB0_207 Depth 3
                                        #     Child Loop BB0_235 Depth 2
                                        #     Child Loop BB0_315 Depth 2
                                        #       Child Loop BB0_317 Depth 3
                                        #     Child Loop BB0_241 Depth 2
                                        #       Child Loop BB0_243 Depth 3
                                        #     Child Loop BB0_340 Depth 2
                                        #       Child Loop BB0_342 Depth 3
                                        #     Child Loop BB0_266 Depth 2
                                        #       Child Loop BB0_268 Depth 3
                                        #     Child Loop BB0_365 Depth 2
                                        #       Child Loop BB0_367 Depth 3
                                        #     Child Loop BB0_291 Depth 2
                                        #       Child Loop BB0_293 Depth 3
                                        #     Child Loop BB0_390 Depth 2
                                        #       Child Loop BB0_392 Depth 3
                                        #     Child Loop BB0_415 Depth 2
                                        #       Child Loop BB0_417 Depth 3
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r2,  40(r30)
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r4,  36(r30)
	store.d r[6:7], -104(r30)               # 8-byte Folded Spill
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	addli r8, zero, 5
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	storeli.w r11, -96(r30)                 # 4-byte Folded Spill
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r8, r11, r8
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r2, r6, r2
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	addli r7, zero, 8
	storeli.w r8, -80(r30)                  # 4-byte Folded Spill
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r5, r2, r4
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	div.s r6, r5, r12
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	slli r2, r6, 3
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	sub.s r4, r15, r2
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	min.s r7, r4, r7
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	mod.s r4, r5, r7
	.loc	1 62 13                         # parallel-rne.mlir:62:13
	add.s r2, r4, r2
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	slli r4, r8, 14
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	zext_int2long r[9:10], r2
	storeli.w r2, -132(r30)                 # 4-byte Folded Spill
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	lui r2, 40
	add.s r8, r4, r2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r2
	store.d r[9:10], -128(r30)              # 8-byte Folded Spill
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r2, r15, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[25:26], 0(r30)
	sll.d r[9:10], r[9:10], r17
	xwait r18, 0
	add.ul r[9:10], r[25:26], r[9:10]
	blt.s r23, r11, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	addli r11, zero, 8
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 128
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r12, 3
	dma_cfg r11, zero, r24, 4
	addli r11, zero, 256
	dma_cfg r11, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 40
	storeli.w zero, -92(r30)                # 4-byte Folded Spill
	addli r11, zero, 256
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	lock zero, r23
	ori r2, r2, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r10, zero, 2
	add.s r2, r4, r2
	dma_cfg r2, r9, r12, 3
	addli r10, zero, 128
	addli r2, zero, 5
	addli r9, zero, 8
	dma_cfg r10, r12, r24, 4
	dma_cfg r11, r10, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 18
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 24
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 25
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 26
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 27
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 28
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 29
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 30
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 31
	dma_cfg zero, zero, r9, 10
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r12, 3
	dma_cfg r10, zero, r24, 4
	dma_cfg r11, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r24, 0
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	bneq r2, r24, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	xwait r24, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 1
	ds_cfg r24, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r12, zero, 13
	shuffle_batch r4, r8, r12, 1
	unlock zero
	xsignal r18, 0
	storeli.w r2, -92(r30)                  # 4-byte Folded Spill
	xsignal r23, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -92(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r2, r6, 6
	addli r8, zero, 6
	sub.s r2, r5, r2
	div.s r2, r2, r7
	zext_int2long r[5:6], r2
	storeli.w r2, -112(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -80(r30)                  # 4-byte Folded Reload
	sll.d r[6:7], r[5:6], r16
	slli r14, r2, 15
	.loc	1 104 13 is_stmt 1              # parallel-rne.mlir:104:13
	lui r2, 60
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	sll.d r[9:10], r[6:7], r15
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r6
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	add.s r5, r14, r2
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	store.d r[9:10], -120(r30)              # 8-byte Folded Spill
	bneq r6, r8, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], 8(r30)
	xwait r16, 0
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	add.ul r[6:7], r[6:7], r[9:10]
	blt.s r23, r2, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r4, zero, 6
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r17, 10
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r12, 3
	dma_cfg r4, zero, r23, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
.LBB0_18:                               # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 60
	storeli.w zero, -88(r30)                # 4-byte Folded Spill
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	addli r8, zero, 512
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r4, zero, 8
	lock zero, r23
	ori r2, r2, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r2, r14, r2
	dma_cfg r2, r6, r12, 3
	addli r7, zero, 128
	addli r2, zero, 2048
	addli r6, zero, 6
	dma_cfg r7, r12, r23, 4
	dma_cfg r8, r2, r12, 5
	addli r2, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r17, 10
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r12, 3
	dma_cfg r7, zero, r23, 4
	dma_cfg r8, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	xsignal r6, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	j .LBB0_25
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 111 7                         # parallel-rne.mlir:111:7
	beq r6, r23, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r6, r16, .LBB0_442
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	storeli.w zero, -88(r30)                # 4-byte Folded Spill
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r24, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 1
	shuffle_coa r14, r5, r12, 2
	unlock zero
	xsignal r16, 0
	storeli.w r2, -84(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	xsignal r2, 0
	lui r10, 8
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	beq r6, r18, .LBB0_26
	j .LBB0_27
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	addli r2, zero, 8
	xwait r23, 0
	addli r6, zero, 0
	addli r5, zero, 1
	addli r7, zero, 11
	xwait r2, 0
	addli r2, zero, 1
	xwait r7, 0
.LBB0_23:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r7, r6, 14
	slli r6, r6, 8
	lock zero, r2
	mm_cfg r12, r12, r12, 0
	or r7, r7, r14
	or r6, r6, r14
	mm_cfg r23, r23, r2, 2
	mm r6, r4, r7, 8
	andi r7, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r2
	bneq r7, zero, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -88(r30)                  # 4-byte Folded Spill
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_25:                               # %.thread30
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r6, r18, .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	addli r2, zero, 14
	xwait r2, 0
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 140
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	xfence
	addli r4, zero, 128
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	ori r2, r2, 2560
	zext_int2long r[4:5], r4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r24, r14, r2
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 7
	zext_int2long r[7:8], r2
	store.d r[7:8], -72(r30)                # 8-byte Folded Spill
	sync_core
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r6, zero, .LBB0_52
# %bb.28:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	j .LBB0_30
.LBB0_29:                               # %middle.block205
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 145 9                         # parallel-rne.mlir:145:9
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_51
.LBB0_30:                               # %.preheader52
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_32 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[15:16], -16(r30)               # 8-byte Folded Reload
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[10:11], r[6:7], r2
	j .LBB0_32
.LBB0_31:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r8, r24, r17
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	setneq.d r7, r[15:16], r[4:5]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r2, 12(r8)
	stores.w r23, 8(r8)
	stores.w r26, 4(r8)
	stores.w r6, 0(r8)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r7, zero, .LBB0_29
.LBB0_32:                               # %vector.body201
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[6:7], r[15:16], r[10:11]
	slli r17, r6, 2
	add.s r2, r14, r17
	loads.w r18, 12(r2)
	loads.w r28, 0(r2)
	loads.w r27, 4(r2)
	loads.w r25, 8(r2)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r19, r18, r1
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r2, r20, r19
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_34
# %bb.33:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r18, 0
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_32 Depth=3
	or r2, r18, r22
.LBB0_35:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	and r12, r25, r1
	setlt.u r6, r20, r12
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r6, zero, .LBB0_37
# %bb.36:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_32 Depth=3
	or r23, r25, r22
.LBB0_38:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	and r7, r27, r1
	setlt.u r6, r20, r7
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r6, zero, .LBB0_40
# %bb.39:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_32 Depth=3
	or r26, r27, r22
.LBB0_41:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	and r8, r28, r1
	setlt.u r6, r20, r8
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r6, zero, .LBB0_43
# %bb.42:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r28, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r8, r13, r8
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r8, zero, .LBB0_44
	j .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r28, r22
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r8, r13, r8
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r8, zero, .LBB0_45
.LBB0_44:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r28, 16
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r3
	and r6, r6, r21
.LBB0_45:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	setlt.u r7, r13, r7
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r7, zero, .LBB0_48
# %bb.46:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r27, 16
	andi r7, r7, 1
	add.s r7, r27, r7
	add.s r7, r7, r3
	and r26, r7, r21
	setlt.u r7, r13, r12
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r7, zero, .LBB0_49
.LBB0_47:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r19
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r7, zero, .LBB0_31
	j .LBB0_50
.LBB0_48:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r12
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r7, zero, .LBB0_47
.LBB0_49:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r25, 16
	andi r7, r7, 1
	add.s r7, r25, r7
	add.s r7, r7, r3
	and r23, r7, r21
	setlt.u r7, r13, r19
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r7, zero, .LBB0_31
.LBB0_50:                               # %vector.body201
                                        #   in Loop: Header=BB0_32 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_31
.LBB0_51:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
.LBB0_52:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[7:8], r2
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	addli r2, zero, 1
	store.d r[7:8], -8(r30)                 # 8-byte Folded Spill
	bneq r6, r2, .LBB0_77
# %bb.53:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_55
.LBB0_54:                               # %middle.block196
                                        #   in Loop: Header=BB0_55 Depth=2
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	load.d r[8:9], -16(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_76
.LBB0_55:                               # %.preheader51
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[10:11], zero
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r2
	j .LBB0_57
.LBB0_56:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r7, r24, r15
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setneq.d r6, r[10:11], r[4:5]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r2, 12(r7)
	stores.w r18, 8(r7)
	stores.w r23, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r6, zero, .LBB0_54
.LBB0_57:                               # %vector.body192
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[6:7], r[10:11], r[8:9]
	slli r15, r6, 2
	add.s r2, r14, r15
	loads.w r16, 12(r2)
	loads.w r27, 0(r2)
	loads.w r25, 4(r2)
	loads.w r19, 8(r2)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r17, r16, r1
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r2, r20, r17
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_59
# %bb.58:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r16, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=3
	or r2, r16, r22
.LBB0_60:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	and r12, r19, r1
	setlt.u r6, r20, r12
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r6, zero, .LBB0_62
# %bb.61:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_57 Depth=3
	or r18, r19, r22
.LBB0_63:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	and r28, r25, r1
	setlt.u r6, r20, r28
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r6, zero, .LBB0_65
# %bb.64:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_57 Depth=3
	or r23, r25, r22
.LBB0_66:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	and r6, r27, r1
	setlt.u r7, r20, r6
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r7, zero, .LBB0_68
# %bb.67:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r6, r13, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r6, zero, .LBB0_69
	j .LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r27, r22
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r6, r13, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_70
.LBB0_69:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r3
	and r26, r6, r21
.LBB0_70:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	setlt.u r6, r13, r28
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_73
# %bb.71:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r3
	and r23, r6, r21
	setlt.u r6, r13, r12
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r6, zero, .LBB0_74
.LBB0_72:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r17
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_56
	j .LBB0_75
.LBB0_73:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r12
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_72
.LBB0_74:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r18, r6, r21
	setlt.u r6, r13, r17
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_56
.LBB0_75:                               # %vector.body192
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_56
.LBB0_76:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	mfence { sm }
.LBB0_77:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[7:8], r2
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	loadli.w r2,  -92(r30)                  # 4-byte Folded Reload
	store.d r[7:8], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_102
# %bb.78:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 195 7                         # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_80
.LBB0_79:                               # %middle.block187
                                        #   in Loop: Header=BB0_80 Depth=2
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -24(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_101
.LBB0_80:                               # %.preheader50
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[10:11], zero
	store.d r[6:7], -24(r30)                # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r2
	j .LBB0_82
.LBB0_81:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r7, r24, r15
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setneq.d r6, r[10:11], r[4:5]
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r2, 12(r7)
	stores.w r18, 8(r7)
	stores.w r23, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r6, zero, .LBB0_79
.LBB0_82:                               # %vector.body183
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[6:7], r[10:11], r[8:9]
	slli r15, r6, 2
	add.s r2, r14, r15
	loads.w r16, 12(r2)
	loads.w r27, 0(r2)
	loads.w r25, 4(r2)
	loads.w r19, 8(r2)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r17, r16, r1
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r2, r20, r17
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_84
# %bb.83:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r16, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	or r2, r16, r22
.LBB0_85:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	and r12, r19, r1
	setlt.u r6, r20, r12
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r6, zero, .LBB0_87
# %bb.86:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	or r18, r19, r22
.LBB0_88:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	and r28, r25, r1
	setlt.u r6, r20, r28
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r6, zero, .LBB0_90
# %bb.89:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	or r23, r25, r22
.LBB0_91:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	and r6, r27, r1
	setlt.u r7, r20, r6
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r7, zero, .LBB0_93
# %bb.92:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r6, r13, r6
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r6, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r27, r22
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r6, r13, r6
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r6, zero, .LBB0_95
.LBB0_94:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r3
	and r26, r6, r21
.LBB0_95:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r6, r13, r28
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r6, zero, .LBB0_98
# %bb.96:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r3
	and r23, r6, r21
	setlt.u r6, r13, r12
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r6, zero, .LBB0_99
.LBB0_97:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r17
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r6, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r12
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r6, zero, .LBB0_97
.LBB0_99:                               # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r18, r6, r21
	setlt.u r6, r13, r17
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r6, zero, .LBB0_81
.LBB0_100:                              # %vector.body183
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 195 7                         # parallel-rne.mlir:195:7
	mfence { sm }
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[7:8], r2
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	addli r2, zero, 3
	store.d r[7:8], -24(r30)                # 8-byte Folded Spill
	bneq r6, r2, .LBB0_127
# %bb.103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_105
.LBB0_104:                              # %middle.block178
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	load.d r[6:7], -24(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -32(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_126
.LBB0_105:                              # %.preheader49
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[10:11], zero
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r2
	j .LBB0_107
.LBB0_106:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r7, r24, r15
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	setneq.d r6, r[10:11], r[4:5]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r2, 12(r7)
	stores.w r18, 8(r7)
	stores.w r23, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r6, zero, .LBB0_104
.LBB0_107:                              # %vector.body174
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[6:7], r[10:11], r[8:9]
	slli r15, r6, 2
	add.s r2, r14, r15
	loads.w r16, 12(r2)
	loads.w r27, 0(r2)
	loads.w r25, 4(r2)
	loads.w r19, 8(r2)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r17, r16, r1
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r2, r20, r17
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r16, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	or r2, r16, r22
.LBB0_110:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	and r12, r19, r1
	setlt.u r6, r20, r12
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r6, zero, .LBB0_112
# %bb.111:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	or r18, r19, r22
.LBB0_113:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	and r28, r25, r1
	setlt.u r6, r20, r28
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r6, zero, .LBB0_115
# %bb.114:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	or r23, r25, r22
.LBB0_116:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	and r6, r27, r1
	setlt.u r7, r20, r6
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r7, zero, .LBB0_118
# %bb.117:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r6, r13, r6
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r6, zero, .LBB0_119
	j .LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r27, r22
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r6, r13, r6
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r6, zero, .LBB0_120
.LBB0_119:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r3
	and r26, r6, r21
.LBB0_120:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r6, r13, r28
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r6, zero, .LBB0_123
# %bb.121:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r3
	and r23, r6, r21
	setlt.u r6, r13, r12
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r6, zero, .LBB0_124
.LBB0_122:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r17
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r6, zero, .LBB0_106
	j .LBB0_125
.LBB0_123:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r12
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r6, zero, .LBB0_122
.LBB0_124:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r18, r6, r21
	setlt.u r6, r13, r17
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r6, zero, .LBB0_106
.LBB0_125:                              # %vector.body174
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	mfence { sm }
.LBB0_127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 39
	zext_int2long r[7:8], r2
	.loc	1 253 7 is_stmt 1               # parallel-rne.mlir:253:7
	loadli.w r2,  -88(r30)                  # 4-byte Folded Reload
	store.d r[7:8], -32(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_152
# %bb.128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_130
.LBB0_129:                              # %middle.block169
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -40(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_151
.LBB0_130:                              # %.preheader48
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -40(r30)                # 8-byte Folded Spill
	sll.d r[10:11], r[6:7], r2
	j .LBB0_132
.LBB0_131:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r7, r24, r8
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	setneq.d r6, r[15:16], r[4:5]
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r2, 12(r7)
	stores.w r18, 8(r7)
	stores.w r23, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r6, zero, .LBB0_129
.LBB0_132:                              # %vector.body165
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[6:7], r[15:16], r[10:11]
	slli r8, r6, 2
	add.s r2, r14, r8
	loads.w r9, 12(r2)
	loads.w r27, 0(r2)
	loads.w r25, 4(r2)
	loads.w r19, 8(r2)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r17, r9, r1
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r2, r20, r17
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_134
# %bb.133:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	or r2, r9, r22
.LBB0_135:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	and r12, r19, r1
	setlt.u r6, r20, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r6, zero, .LBB0_137
# %bb.136:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_132 Depth=3
	or r18, r19, r22
.LBB0_138:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	and r28, r25, r1
	setlt.u r6, r20, r28
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r6, zero, .LBB0_140
# %bb.139:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_132 Depth=3
	or r23, r25, r22
.LBB0_141:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	and r6, r27, r1
	setlt.u r7, r20, r6
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r7, zero, .LBB0_143
# %bb.142:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r6, r13, r6
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r6, zero, .LBB0_144
	j .LBB0_145
.LBB0_143:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r27, r22
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r6, r13, r6
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r6, zero, .LBB0_145
.LBB0_144:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r27, 16
	andi r6, r6, 1
	add.s r6, r27, r6
	add.s r6, r6, r3
	and r26, r6, r21
.LBB0_145:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r6, r13, r28
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r6, zero, .LBB0_148
# %bb.146:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r3
	and r23, r6, r21
	setlt.u r6, r13, r12
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r6, zero, .LBB0_149
.LBB0_147:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r17
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r6, zero, .LBB0_131
	j .LBB0_150
.LBB0_148:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r12
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r6, zero, .LBB0_147
.LBB0_149:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r18, r6, r21
	setlt.u r6, r13, r17
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r6, zero, .LBB0_131
.LBB0_150:                              # %vector.body165
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_131
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
.LBB0_152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[7:8], r2
	.loc	1 282 7 is_stmt 1               # parallel-rne.mlir:282:7
	addli r2, zero, 5
	store.d r[7:8], -40(r30)                # 8-byte Folded Spill
	bneq r6, r2, .LBB0_177
# %bb.153:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_155
.LBB0_154:                              # %middle.block160
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -48(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_176
.LBB0_155:                              # %.preheader47
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_157 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -48(r30)                # 8-byte Folded Spill
	sll.d r[17:18], r[6:7], r2
	j .LBB0_157
.LBB0_156:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r8, r24, r8
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setneq.d r6, r[15:16], r[4:5]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r2, 12(r8)
	stores.w r7, 8(r8)
	stores.w r23, 4(r8)
	stores.w r26, 0(r8)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r6, zero, .LBB0_154
.LBB0_157:                              # %vector.body156
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[6:7], r[15:16], r[17:18]
	slli r8, r6, 2
	add.s r2, r14, r8
	loads.w r9, 12(r2)
	loads.w r27, 0(r2)
	loads.w r25, 4(r2)
	loads.w r19, 8(r2)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r6, r9, r1
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r2, r20, r6
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_159
# %bb.158:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_157 Depth=3
	or r2, r9, r22
.LBB0_160:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	and r12, r19, r1
	setlt.u r7, r20, r12
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r7, zero, .LBB0_162
# %bb.161:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r19, 0
	j .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_157 Depth=3
	or r7, r19, r22
.LBB0_163:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	and r28, r25, r1
	setlt.u r10, r20, r28
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_165
# %bb.164:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r25, 0
	j .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_157 Depth=3
	or r23, r25, r22
.LBB0_166:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	and r10, r27, r1
	setlt.u r11, r20, r10
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r11, zero, .LBB0_168
# %bb.167:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r27, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r10, r13, r10
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r10, zero, .LBB0_169
	j .LBB0_170
.LBB0_168:                              #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r26, r27, r22
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r10, r13, r10
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r10, zero, .LBB0_170
.LBB0_169:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r3
	and r26, r10, r21
.LBB0_170:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r10, r13, r28
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r10, zero, .LBB0_173
# %bb.171:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r25, 16
	andi r10, r10, 1
	add.s r10, r25, r10
	add.s r10, r10, r3
	and r23, r10, r21
	setlt.u r10, r13, r12
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r10, zero, .LBB0_174
.LBB0_172:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r6
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r6, zero, .LBB0_156
	j .LBB0_175
.LBB0_173:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r13, r12
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r10, zero, .LBB0_172
.LBB0_174:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r19, 16
	andi r7, r7, 1
	add.s r7, r19, r7
	add.s r7, r7, r3
	and r7, r7, r21
	setlt.u r6, r13, r6
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r6, zero, .LBB0_156
.LBB0_175:                              # %vector.body156
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_156
.LBB0_176:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r6
	lui r10, 8
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	mfence { sm }
.LBB0_177:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	zext_int2long r[7:8], r2
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	addli r2, zero, 6
	store.d r[7:8], -48(r30)                # 8-byte Folded Spill
	bneq r6, r2, .LBB0_202
# %bb.178:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 311 7                         # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_180
.LBB0_179:                              # %middle.block151
                                        #   in Loop: Header=BB0_180 Depth=2
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	load.d r[6:7], -48(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_201
.LBB0_180:                              # %.preheader46
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_182 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	j .LBB0_182
.LBB0_181:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r8, r24, r8
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	setneq.d r6, r[15:16], r[4:5]
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r2, 12(r8)
	stores.w r7, 8(r8)
	stores.w r11, 4(r8)
	stores.w r23, 0(r8)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r6, zero, .LBB0_179
.LBB0_182:                              # %vector.body147
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_180 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[6:7], r[15:16], r[25:26]
	slli r8, r6, 2
	add.s r2, r14, r8
	loads.w r9, 12(r2)
	loads.w r27, 0(r2)
	loads.w r19, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r6, r9, r1
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r2, r20, r6
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_184
# %bb.183:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=3
	or r2, r9, r22
.LBB0_185:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	and r12, r10, r1
	setlt.u r7, r20, r12
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r7, zero, .LBB0_187
# %bb.186:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r10, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_182 Depth=3
	or r7, r10, r22
.LBB0_188:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	and r28, r19, r1
	setlt.u r11, r20, r28
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r11, zero, .LBB0_190
# %bb.189:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_182 Depth=3
	or r11, r19, r22
.LBB0_191:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	and r17, r27, r1
	setlt.u r18, r20, r17
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r18, zero, .LBB0_193
# %bb.192:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r27, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r17, r13, r17
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r17, zero, .LBB0_194
	j .LBB0_195
.LBB0_193:                              #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r27, r22
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r17, r13, r17
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r17, zero, .LBB0_195
.LBB0_194:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r17, r27, 16
	andi r17, r17, 1
	add.s r17, r27, r17
	add.s r17, r17, r3
	and r23, r17, r21
.LBB0_195:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	setlt.u r17, r13, r28
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r17, zero, .LBB0_198
# %bb.196:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r19, 16
	andi r11, r11, 1
	add.s r11, r19, r11
	add.s r11, r11, r3
	and r11, r11, r21
	setlt.u r12, r13, r12
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r12, zero, .LBB0_199
.LBB0_197:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r6
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r6, zero, .LBB0_181
	j .LBB0_200
.LBB0_198:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r13, r12
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r12, zero, .LBB0_197
.LBB0_199:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r10, 16
	andi r7, r7, 1
	add.s r7, r10, r7
	add.s r7, r7, r3
	and r7, r7, r21
	setlt.u r6, r13, r6
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r6, zero, .LBB0_181
.LBB0_200:                              # %vector.body147
                                        #   in Loop: Header=BB0_182 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_181
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	lui r10, 8
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	mfence { sm }
.LBB0_202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[6:7], r2
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	loadli.w r2,  -84(r30)                  # 4-byte Folded Reload
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_227
# %bb.203:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 340 7                         # parallel-rne.mlir:340:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_205
.LBB0_204:                              # %middle.block142
                                        #   in Loop: Header=BB0_205 Depth=2
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_226
.LBB0_205:                              # %.preheader45
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_207 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	j .LBB0_207
.LBB0_206:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r8, r24, r8
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setneq.d r6, r[15:16], r[4:5]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r2, 12(r8)
	stores.w r7, 8(r8)
	stores.w r11, 4(r8)
	stores.w r18, 0(r8)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r6, zero, .LBB0_204
.LBB0_207:                              # %vector.body138
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[6:7], r[15:16], r[25:26]
	slli r8, r6, 2
	add.s r2, r14, r8
	loads.w r9, 12(r2)
	loads.w r19, 0(r2)
	loads.w r17, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r6, r9, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r2, r20, r6
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_209
# %bb.208:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_207 Depth=3
	or r2, r9, r22
.LBB0_210:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	and r12, r10, r1
	setlt.u r7, r20, r12
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r7, zero, .LBB0_212
# %bb.211:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r10, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_207 Depth=3
	or r7, r10, r22
.LBB0_213:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	and r23, r17, r1
	setlt.u r11, r20, r23
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r11, zero, .LBB0_215
# %bb.214:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_207 Depth=3
	or r11, r17, r22
.LBB0_216:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	and r27, r19, r1
	setlt.u r18, r20, r27
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r18, zero, .LBB0_218
# %bb.217:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r27, r13, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r27, zero, .LBB0_219
	j .LBB0_220
.LBB0_218:                              #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r19, r22
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r27, r13, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r27, zero, .LBB0_220
.LBB0_219:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r19, 16
	andi r18, r18, 1
	add.s r18, r19, r18
	add.s r18, r18, r3
	and r18, r18, r21
.LBB0_220:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	setlt.u r19, r13, r23
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r19, zero, .LBB0_223
# %bb.221:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r17, 16
	andi r11, r11, 1
	add.s r11, r17, r11
	add.s r11, r11, r3
	and r11, r11, r21
	setlt.u r12, r13, r12
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r12, zero, .LBB0_224
.LBB0_222:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r6
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r6, zero, .LBB0_206
	j .LBB0_225
.LBB0_223:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r13, r12
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r12, zero, .LBB0_222
.LBB0_224:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r10, 16
	andi r7, r7, 1
	add.s r7, r10, r7
	add.s r7, r7, r3
	and r7, r7, r21
	setlt.u r6, r13, r6
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r6, zero, .LBB0_206
.LBB0_225:                              # %vector.body138
                                        #   in Loop: Header=BB0_207 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r3
	and r2, r2, r21
	j .LBB0_206
.LBB0_226:                              #   in Loop: Header=BB0_8 Depth=1
	lui r10, 8
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	mfence { sm }
.LBB0_227:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -112(r30)                 # 4-byte Folded Reload
	addli r6, zero, 896
	zext_int2long r[6:7], r6
	slli r2, r2, 7
	zext_int2long r[8:9], r2
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r2, zero, 255
	min.ul r[6:7], r[8:9], r[6:7]
	csr_set csr5, r2
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 3
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	sync_core
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[8:9]
	sub.sl r[6:7], r[6:7], r[8:9]
	min.ul r[15:16], r[6:7], r[4:5]
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	store.d r[15:16], -112(r30)             # 8-byte Folded Spill
	bneq r7, r2, .LBB0_229
# %bb.228:                              # %.thread33.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r2, zero, 19
	xwait r2, 0
	j .LBB0_237
.LBB0_229:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -80(r30)                  # 4-byte Folded Reload
	lui r6, 140
	slli r2, r2, 9
	add.s r19, r2, r6
	.loc	1 373 7 is_stmt 1               # parallel-rne.mlir:373:7
	addli r6, zero, 1
	bneq r7, r6, .LBB0_233
# %bb.230:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], 16(r30)
	load.d r[8:9], -120(r30)                # 8-byte Folded Reload
	addli r12, zero, 16
	addli r11, zero, 4
	xwait r12, 0
	add.ul r[6:7], r[6:7], r[8:9]
	loadli.w r8,  -96(r30)                  # 4-byte Folded Reload
	blt.s r11, r8, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 5
	addli r10, zero, 1
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r9, zero, 2
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 3
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 18
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 24
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 25
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 26
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 27
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 28
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 29
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 30
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 31
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r11, 4
	addli r9, zero, 512
	dma_cfg r9, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
.LBB0_232:                              # %.thread33.thread37
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r8, 140
	addli r10, zero, 1
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	lock zero, r11
	addli r9, zero, 64
	ori r8, r8, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r2, r2, r8
	addli r8, r15, 31
	dma_cfg r2, r6, r9, 3
	slli r6, r15, 1
	srli r2, r8, 5
	addli r15, zero, 128
	addli r7, zero, 256
	addli r16, zero, 512
	addli r8, zero, 2
	dma_cfg r15, r9, r2, 4
	andi r6, r6, 62
	dma_cfg r16, r7, r10, 5
	addli r7, zero, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r7, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r9, 3
	dma_cfg r15, zero, r2, 4
	dma_cfg r16, zero, r10, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r8, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	j .LBB0_237
.LBB0_233:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r2, zero, 5
	bneq r7, r2, .LBB0_237
# %bb.234:                              #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 12
	addli r2, zero, 0
	xwait r6, 0
	addli r6, zero, 15
	xwait r6, 0
	addli r6, zero, 2
	lock zero, r6
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_235:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r24, r2
	addli r2, r2, 512
	dsmadd r6, r6, r19, 0
	bneq r2, r10, .LBB0_235
# %bb.236:                              # %.thread33
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 16
	xsignal r2, 0
.LBB0_237:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 100
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	xfence
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	mfence { lm, sm, gm }
	add.s r19, r14, r2
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	beq r7, zero, .LBB0_313
# %bb.238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 411 7                         # parallel-rne.mlir:411:7
	addli r2, zero, 1
	bneq r7, r2, .LBB0_337
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 411 7                         # parallel-rne.mlir:411:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_241
.LBB0_240:                              # %middle.block124
                                        #   in Loop: Header=BB0_241 Depth=2
	.loc	1 419 9 is_stmt 1               # parallel-rne.mlir:419:9
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_262
.LBB0_241:                              # %.preheader43
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	j .LBB0_243
.LBB0_242:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 420 11 is_stmt 1              # parallel-rne.mlir:420:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 435 13                        # parallel-rne.mlir:435:13
	add.s r7, r19, r8
	.loc	1 420 11                        # parallel-rne.mlir:420:11
	setneq.d r2, r[15:16], r[4:5]
	.loc	1 435 13                        # parallel-rne.mlir:435:13
	stores.w r6, 12(r7)
	stores.w r9, 8(r7)
	stores.w r11, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 420 11                        # parallel-rne.mlir:420:11
	beq r2, zero, .LBB0_240
.LBB0_243:                              # %vector.body120
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	add.ul r[6:7], r[15:16], r[25:26]
	slli r8, r6, 2
	add.s r6, r24, r8
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r17, 4(r6)
	loads.w r10, 8(r6)
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	and r7, r2, r1
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	setlt.u r6, r20, r7
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r6, zero, .LBB0_245
# %bb.244:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_243 Depth=3
	or r6, r2, r22
.LBB0_246:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	and r18, r10, r1
	setlt.u r9, r20, r18
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r9, zero, .LBB0_248
# %bb.247:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_243 Depth=3
	or r9, r10, r22
.LBB0_249:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	and r27, r17, r1
	setlt.u r11, r20, r27
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r11, zero, .LBB0_251
# %bb.250:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=3
	or r11, r17, r22
.LBB0_252:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	and r28, r23, r1
	setlt.u r12, r20, r28
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	bneq r12, zero, .LBB0_254
# %bb.253:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 432 19 is_stmt 1              # parallel-rne.mlir:432:19
	setlt.u r28, r13, r28
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	beq r28, zero, .LBB0_255
	j .LBB0_256
.LBB0_254:                              #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r22
	.loc	1 432 19 is_stmt 1              # parallel-rne.mlir:432:19
	setlt.u r28, r13, r28
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r28, zero, .LBB0_256
.LBB0_255:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r3
	and r12, r12, r21
.LBB0_256:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r23, r13, r27
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r23, zero, .LBB0_259
# %bb.257:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r17, 16
	andi r11, r11, 1
	add.s r11, r17, r11
	add.s r11, r11, r3
	and r11, r11, r21
	setlt.u r17, r13, r18
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	beq r17, zero, .LBB0_260
.LBB0_258:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r7, zero, .LBB0_242
	j .LBB0_261
.LBB0_259:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r17, r13, r18
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r17, zero, .LBB0_258
.LBB0_260:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r3
	and r9, r9, r21
	setlt.u r7, r13, r7
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r7, zero, .LBB0_242
.LBB0_261:                              # %vector.body120
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r6, r2, r21
	j .LBB0_242
.LBB0_262:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 411 7                         # parallel-rne.mlir:411:7
	mfence { sm }
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	loadli.w r2,  -92(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_338
.LBB0_263:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r2, zero, 3
	bneq r7, r2, .LBB0_362
.LBB0_264:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_266
.LBB0_265:                              # %middle.block106
                                        #   in Loop: Header=BB0_266 Depth=2
	.loc	1 477 9 is_stmt 1               # parallel-rne.mlir:477:9
	load.d r[6:7], -24(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_287
.LBB0_266:                              # %.preheader41
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_268 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	j .LBB0_268
.LBB0_267:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 478 11 is_stmt 1              # parallel-rne.mlir:478:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	add.s r7, r19, r8
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	setneq.d r2, r[15:16], r[4:5]
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	stores.w r6, 12(r7)
	stores.w r9, 8(r7)
	stores.w r11, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	beq r2, zero, .LBB0_265
.LBB0_268:                              # %vector.body102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	add.ul r[6:7], r[15:16], r[27:28]
	slli r8, r6, 2
	add.s r6, r24, r8
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r17, 4(r6)
	loads.w r10, 8(r6)
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	and r7, r2, r1
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	setlt.u r6, r20, r7
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r6, zero, .LBB0_270
# %bb.269:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_271
.LBB0_270:                              #   in Loop: Header=BB0_268 Depth=3
	or r6, r2, r22
.LBB0_271:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	and r18, r10, r1
	setlt.u r9, r20, r18
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r9, zero, .LBB0_273
# %bb.272:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_268 Depth=3
	or r9, r10, r22
.LBB0_274:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	and r25, r17, r1
	setlt.u r11, r20, r25
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r11, zero, .LBB0_276
# %bb.275:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_268 Depth=3
	or r11, r17, r22
.LBB0_277:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	and r26, r23, r1
	setlt.u r12, r20, r26
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r12, zero, .LBB0_279
# %bb.278:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 490 19 is_stmt 1              # parallel-rne.mlir:490:19
	setlt.u r26, r13, r26
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r26, zero, .LBB0_280
	j .LBB0_281
.LBB0_279:                              #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r22
	.loc	1 490 19 is_stmt 1              # parallel-rne.mlir:490:19
	setlt.u r26, r13, r26
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r26, zero, .LBB0_281
.LBB0_280:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r3
	and r12, r12, r21
.LBB0_281:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	setlt.u r23, r13, r25
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r23, zero, .LBB0_284
# %bb.282:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r17, 16
	andi r11, r11, 1
	add.s r11, r17, r11
	add.s r11, r11, r3
	and r11, r11, r21
	setlt.u r17, r13, r18
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r17, zero, .LBB0_285
.LBB0_283:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r7, zero, .LBB0_267
	j .LBB0_286
.LBB0_284:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r17, r13, r18
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r17, zero, .LBB0_283
.LBB0_285:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r3
	and r9, r9, r21
	setlt.u r7, r13, r7
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r7, zero, .LBB0_267
.LBB0_286:                              # %vector.body102
                                        #   in Loop: Header=BB0_268 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r6, r2, r21
	j .LBB0_267
.LBB0_287:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	mfence { sm }
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	loadli.w r2,  -88(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_363
.LBB0_288:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 527 7                         # parallel-rne.mlir:527:7
	addli r2, zero, 5
	bneq r7, r2, .LBB0_387
.LBB0_289:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 527 7                         # parallel-rne.mlir:527:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_291
.LBB0_290:                              # %middle.block88
                                        #   in Loop: Header=BB0_291 Depth=2
	.loc	1 535 9 is_stmt 1               # parallel-rne.mlir:535:9
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_312
.LBB0_291:                              # %.preheader39
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_293 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[25:26], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r2
	j .LBB0_293
.LBB0_292:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 536 11 is_stmt 1              # parallel-rne.mlir:536:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r7, r19, r23
	.loc	1 536 11                        # parallel-rne.mlir:536:11
	setneq.d r2, r[25:26], r[4:5]
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r6, 12(r7)
	stores.w r10, 8(r7)
	stores.w r17, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 536 11                        # parallel-rne.mlir:536:11
	beq r2, zero, .LBB0_290
.LBB0_293:                              # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	add.ul r[6:7], r[25:26], r[15:16]
	slli r23, r6, 2
	add.s r6, r24, r23
	loads.w r2, 12(r6)
	loads.w r28, 0(r6)
	loads.w r18, 4(r6)
	loads.w r11, 8(r6)
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	and r7, r2, r1
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	setlt.u r6, r20, r7
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r6, zero, .LBB0_295
# %bb.294:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_293 Depth=3
	or r6, r2, r22
.LBB0_296:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	and r27, r11, r1
	setlt.u r8, r20, r27
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r8, zero, .LBB0_298
# %bb.297:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_299
.LBB0_298:                              #   in Loop: Header=BB0_293 Depth=3
	or r10, r11, r22
.LBB0_299:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	and r8, r18, r1
	setlt.u r9, r20, r8
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r9, zero, .LBB0_301
# %bb.300:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_302
.LBB0_301:                              #   in Loop: Header=BB0_293 Depth=3
	or r17, r18, r22
.LBB0_302:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	and r9, r28, r1
	setlt.u r12, r20, r9
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r12, zero, .LBB0_304
# %bb.303:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r28, 0
	.loc	1 548 19 is_stmt 1              # parallel-rne.mlir:548:19
	setlt.u r9, r13, r9
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r9, zero, .LBB0_305
	j .LBB0_306
.LBB0_304:                              #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r28, r22
	.loc	1 548 19 is_stmt 1              # parallel-rne.mlir:548:19
	setlt.u r9, r13, r9
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r9, zero, .LBB0_306
.LBB0_305:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r3
	and r12, r9, r21
.LBB0_306:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	setlt.u r8, r13, r8
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r8, zero, .LBB0_309
# %bb.307:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r3
	and r17, r8, r21
	setlt.u r8, r13, r27
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r8, zero, .LBB0_310
.LBB0_308:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r7, zero, .LBB0_292
	j .LBB0_311
.LBB0_309:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r13, r27
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r8, zero, .LBB0_308
.LBB0_310:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r10, r8, r21
	setlt.u r7, r13, r7
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r7, zero, .LBB0_292
.LBB0_311:                              # %vector.body84
                                        #   in Loop: Header=BB0_293 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r6, r2, r21
	j .LBB0_292
.LBB0_312:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 527 7                         # parallel-rne.mlir:527:7
	mfence { sm }
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	addli r2, zero, 6
	bneq r7, r2, .LBB0_412
	j .LBB0_388
.LBB0_313:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	store.d r[6:7], -80(r30)                # 8-byte Folded Spill
	j .LBB0_315
.LBB0_314:                              # %middle.block133
                                        #   in Loop: Header=BB0_315 Depth=2
	.loc	1 390 9                         # parallel-rne.mlir:390:9
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -64(r30)                 # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_336
.LBB0_315:                              # %.preheader44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_317 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[25:26], -80(r30)               # 8-byte Folded Reload
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	sll.d r[15:16], r[6:7], r2
	j .LBB0_317
.LBB0_316:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 391 11 is_stmt 1              # parallel-rne.mlir:391:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 406 13                        # parallel-rne.mlir:406:13
	add.s r7, r19, r23
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	setneq.d r2, r[25:26], r[4:5]
	.loc	1 406 13                        # parallel-rne.mlir:406:13
	stores.w r6, 12(r7)
	stores.w r10, 8(r7)
	stores.w r17, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	beq r2, zero, .LBB0_314
.LBB0_317:                              # %vector.body129
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_315 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	add.ul r[6:7], r[25:26], r[15:16]
	slli r23, r6, 2
	add.s r6, r24, r23
	loads.w r2, 12(r6)
	loads.w r9, 0(r6)
	loads.w r18, 4(r6)
	loads.w r11, 8(r6)
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	and r7, r2, r1
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	setlt.u r6, r20, r7
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	bneq r6, zero, .LBB0_319
# %bb.318:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_320
.LBB0_319:                              #   in Loop: Header=BB0_317 Depth=3
	or r6, r2, r22
.LBB0_320:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	and r8, r11, r1
	setlt.u r10, r20, r8
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	bneq r10, zero, .LBB0_322
# %bb.321:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_323
.LBB0_322:                              #   in Loop: Header=BB0_317 Depth=3
	or r10, r11, r22
.LBB0_323:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	and r27, r18, r1
	setlt.u r12, r20, r27
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	bneq r12, zero, .LBB0_325
# %bb.324:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_326
.LBB0_325:                              #   in Loop: Header=BB0_317 Depth=3
	or r17, r18, r22
.LBB0_326:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	and r28, r9, r1
	setlt.u r12, r20, r28
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	bneq r12, zero, .LBB0_328
# %bb.327:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 403 19 is_stmt 1              # parallel-rne.mlir:403:19
	setlt.u r28, r13, r28
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	beq r28, zero, .LBB0_329
	j .LBB0_330
.LBB0_328:                              #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r9, r22
	.loc	1 403 19 is_stmt 1              # parallel-rne.mlir:403:19
	setlt.u r28, r13, r28
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	bneq r28, zero, .LBB0_330
.LBB0_329:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r9, 16
	andi r12, r12, 1
	add.s r9, r9, r12
	add.s r9, r9, r3
	and r12, r9, r21
.LBB0_330:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	setlt.u r9, r13, r27
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	bneq r9, zero, .LBB0_333
# %bb.331:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r18, 16
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r3
	and r17, r9, r21
	setlt.u r8, r13, r8
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	beq r8, zero, .LBB0_334
.LBB0_332:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	bneq r7, zero, .LBB0_316
	j .LBB0_335
.LBB0_333:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r13, r8
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	bneq r8, zero, .LBB0_332
.LBB0_334:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r10, r8, r21
	setlt.u r7, r13, r7
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	bneq r7, zero, .LBB0_316
.LBB0_335:                              # %vector.body129
                                        #   in Loop: Header=BB0_317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r6, r2, r21
	j .LBB0_316
.LBB0_336:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	mfence { sm }
	.loc	1 411 7                         # parallel-rne.mlir:411:7
	addli r2, zero, 1
	beq r7, r2, .LBB0_239
.LBB0_337:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	loadli.w r2,  -92(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_263
.LBB0_338:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_340
.LBB0_339:                              # %middle.block115
                                        #   in Loop: Header=BB0_340 Depth=2
	.loc	1 448 9 is_stmt 1               # parallel-rne.mlir:448:9
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_361
.LBB0_340:                              # %.preheader42
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_342 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	j .LBB0_342
.LBB0_341:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 449 11 is_stmt 1              # parallel-rne.mlir:449:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	add.s r7, r19, r8
	.loc	1 449 11                        # parallel-rne.mlir:449:11
	setneq.d r2, r[15:16], r[4:5]
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	stores.w r6, 12(r7)
	stores.w r9, 8(r7)
	stores.w r11, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 449 11                        # parallel-rne.mlir:449:11
	beq r2, zero, .LBB0_339
.LBB0_342:                              # %vector.body111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	add.ul r[6:7], r[15:16], r[25:26]
	slli r8, r6, 2
	add.s r6, r24, r8
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r17, 4(r6)
	loads.w r10, 8(r6)
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	and r7, r2, r1
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	setlt.u r6, r20, r7
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r6, zero, .LBB0_344
# %bb.343:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_342 Depth=3
	or r6, r2, r22
.LBB0_345:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	and r18, r10, r1
	setlt.u r9, r20, r18
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r9, zero, .LBB0_347
# %bb.346:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_348
.LBB0_347:                              #   in Loop: Header=BB0_342 Depth=3
	or r9, r10, r22
.LBB0_348:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	and r27, r17, r1
	setlt.u r11, r20, r27
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r11, zero, .LBB0_350
# %bb.349:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_351
.LBB0_350:                              #   in Loop: Header=BB0_342 Depth=3
	or r11, r17, r22
.LBB0_351:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	and r28, r23, r1
	setlt.u r12, r20, r28
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r12, zero, .LBB0_353
# %bb.352:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 461 19 is_stmt 1              # parallel-rne.mlir:461:19
	setlt.u r28, r13, r28
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	beq r28, zero, .LBB0_354
	j .LBB0_355
.LBB0_353:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r22
	.loc	1 461 19 is_stmt 1              # parallel-rne.mlir:461:19
	setlt.u r28, r13, r28
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r28, zero, .LBB0_355
.LBB0_354:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r3
	and r12, r12, r21
.LBB0_355:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	setlt.u r23, r13, r27
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r23, zero, .LBB0_358
# %bb.356:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r17, 16
	andi r11, r11, 1
	add.s r11, r17, r11
	add.s r11, r11, r3
	and r11, r11, r21
	setlt.u r17, r13, r18
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	beq r17, zero, .LBB0_359
.LBB0_357:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r7, zero, .LBB0_341
	j .LBB0_360
.LBB0_358:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r17, r13, r18
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r17, zero, .LBB0_357
.LBB0_359:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r3
	and r9, r9, r21
	setlt.u r7, r13, r7
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r7, zero, .LBB0_341
.LBB0_360:                              # %vector.body111
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r6, r2, r21
	j .LBB0_341
.LBB0_361:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 440 7                         # parallel-rne.mlir:440:7
	mfence { sm }
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r2, zero, 3
	beq r7, r2, .LBB0_264
.LBB0_362:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	loadli.w r2,  -88(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_288
.LBB0_363:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_365
.LBB0_364:                              # %middle.block97
                                        #   in Loop: Header=BB0_365 Depth=2
	.loc	1 506 9 is_stmt 1               # parallel-rne.mlir:506:9
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_386
.LBB0_365:                              # %.preheader40
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_367 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[27:28], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	j .LBB0_367
.LBB0_366:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 507 11 is_stmt 1              # parallel-rne.mlir:507:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 522 13                        # parallel-rne.mlir:522:13
	add.s r7, r19, r8
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	setneq.d r2, r[27:28], r[4:5]
	.loc	1 522 13                        # parallel-rne.mlir:522:13
	stores.w r6, 12(r7)
	stores.w r9, 8(r7)
	stores.w r11, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	beq r2, zero, .LBB0_364
.LBB0_367:                              # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_365 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	add.ul r[6:7], r[27:28], r[25:26]
	slli r8, r6, 2
	add.s r6, r24, r8
	loads.w r2, 12(r6)
	loads.w r23, 0(r6)
	loads.w r17, 4(r6)
	loads.w r10, 8(r6)
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	and r7, r2, r1
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	setlt.u r6, r20, r7
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r6, zero, .LBB0_369
# %bb.368:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r2, 0
	j .LBB0_370
.LBB0_369:                              #   in Loop: Header=BB0_367 Depth=3
	or r6, r2, r22
.LBB0_370:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	and r18, r10, r1
	setlt.u r9, r20, r18
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r9, zero, .LBB0_372
# %bb.371:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r10, 0
	j .LBB0_373
.LBB0_372:                              #   in Loop: Header=BB0_367 Depth=3
	or r9, r10, r22
.LBB0_373:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	and r15, r17, r1
	setlt.u r11, r20, r15
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r11, zero, .LBB0_375
# %bb.374:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_376
.LBB0_375:                              #   in Loop: Header=BB0_367 Depth=3
	or r11, r17, r22
.LBB0_376:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	and r16, r23, r1
	setlt.u r12, r20, r16
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r12, zero, .LBB0_378
# %bb.377:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
	.loc	1 519 19 is_stmt 1              # parallel-rne.mlir:519:19
	setlt.u r16, r13, r16
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	beq r16, zero, .LBB0_379
	j .LBB0_380
.LBB0_378:                              #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r23, r22
	.loc	1 519 19 is_stmt 1              # parallel-rne.mlir:519:19
	setlt.u r16, r13, r16
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r16, zero, .LBB0_380
.LBB0_379:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r23, 16
	andi r12, r12, 1
	add.s r12, r23, r12
	add.s r12, r12, r3
	and r12, r12, r21
.LBB0_380:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	setlt.u r15, r13, r15
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r15, zero, .LBB0_383
# %bb.381:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r17, 16
	andi r11, r11, 1
	add.s r11, r17, r11
	add.s r11, r11, r3
	and r11, r11, r21
	setlt.u r15, r13, r18
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	beq r15, zero, .LBB0_384
.LBB0_382:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r7, zero, .LBB0_366
	j .LBB0_385
.LBB0_383:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r13, r18
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r15, zero, .LBB0_382
.LBB0_384:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r3
	and r9, r9, r21
	setlt.u r7, r13, r7
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r7, zero, .LBB0_366
.LBB0_385:                              # %vector.body93
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r6, r2, r21
	j .LBB0_366
.LBB0_386:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	mfence { sm }
	.loc	1 527 7                         # parallel-rne.mlir:527:7
	addli r2, zero, 5
	beq r7, r2, .LBB0_289
.LBB0_387:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	addli r2, zero, 6
	bneq r7, r2, .LBB0_412
.LBB0_388:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_390
.LBB0_389:                              # %middle.block79
                                        #   in Loop: Header=BB0_390 Depth=2
	.loc	1 564 9 is_stmt 1               # parallel-rne.mlir:564:9
	load.d r[6:7], -48(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_411
.LBB0_390:                              # %.preheader38
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_392 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[15:16], zero
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[8:9], r[6:7], r2
	j .LBB0_392
.LBB0_391:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 565 11 is_stmt 1              # parallel-rne.mlir:565:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r6, r19, r23
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	setneq.d r2, r[15:16], r[4:5]
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r25, 12(r6)
	stores.w r10, 8(r6)
	stores.w r17, 4(r6)
	stores.w r12, 0(r6)
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	beq r2, zero, .LBB0_389
.LBB0_392:                              # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_390 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	add.ul r[6:7], r[15:16], r[8:9]
	slli r23, r6, 2
	add.s r6, r24, r23
	loads.w r2, 12(r6)
	loads.w r28, 0(r6)
	loads.w r18, 4(r6)
	loads.w r11, 8(r6)
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	and r26, r2, r1
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	setlt.u r6, r20, r26
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r6, zero, .LBB0_394
# %bb.393:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_395
.LBB0_394:                              #   in Loop: Header=BB0_392 Depth=3
	or r25, r2, r22
.LBB0_395:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	and r27, r11, r1
	setlt.u r6, r20, r27
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r6, zero, .LBB0_397
# %bb.396:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_398
.LBB0_397:                              #   in Loop: Header=BB0_392 Depth=3
	or r10, r11, r22
.LBB0_398:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	and r6, r18, r1
	setlt.u r7, r20, r6
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r7, zero, .LBB0_400
# %bb.399:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_392 Depth=3
	or r17, r18, r22
.LBB0_401:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	and r7, r28, r1
	setlt.u r12, r20, r7
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r12, zero, .LBB0_403
# %bb.402:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r28, 0
	.loc	1 577 19 is_stmt 1              # parallel-rne.mlir:577:19
	setlt.u r7, r13, r7
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	beq r7, zero, .LBB0_404
	j .LBB0_405
.LBB0_403:                              #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r28, r22
	.loc	1 577 19 is_stmt 1              # parallel-rne.mlir:577:19
	setlt.u r7, r13, r7
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	bneq r7, zero, .LBB0_405
.LBB0_404:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r28, 16
	andi r7, r7, 1
	add.s r7, r28, r7
	add.s r7, r7, r3
	and r12, r7, r21
.LBB0_405:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	setlt.u r6, r13, r6
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	bneq r6, zero, .LBB0_408
# %bb.406:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r3
	and r17, r6, r21
	setlt.u r6, r13, r27
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	beq r6, zero, .LBB0_409
.LBB0_407:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r26
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	bneq r6, zero, .LBB0_391
	j .LBB0_410
.LBB0_408:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r27
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	bneq r6, zero, .LBB0_407
.LBB0_409:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r3
	and r10, r6, r21
	setlt.u r6, r13, r26
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	bneq r6, zero, .LBB0_391
.LBB0_410:                              # %vector.body75
                                        #   in Loop: Header=BB0_392 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r25, r2, r21
	j .LBB0_391
.LBB0_411:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	mfence { sm }
.LBB0_412:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	loadli.w r2,  -84(r30)                  # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	store.d r[8:9], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_437
# %bb.413:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_415
.LBB0_414:                              # %middle.block
                                        #   in Loop: Header=BB0_415 Depth=2
	.loc	1 593 9 is_stmt 1               # parallel-rne.mlir:593:9
	load.d r[6:7], -56(r30)                 # 8-byte Folded Reload
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_436
.LBB0_415:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_417 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[15:16], -16(r30)               # 8-byte Folded Reload
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[10:11], r[6:7], r2
	j .LBB0_417
.LBB0_416:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 594 11 is_stmt 1              # parallel-rne.mlir:594:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 609 13                        # parallel-rne.mlir:609:13
	add.s r6, r19, r23
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	setneq.d r2, r[15:16], r[4:5]
	.loc	1 609 13                        # parallel-rne.mlir:609:13
	stores.w r25, 12(r6)
	stores.w r27, 8(r6)
	stores.w r17, 4(r6)
	stores.w r12, 0(r6)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	beq r2, zero, .LBB0_414
.LBB0_417:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_415 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[6:7], r[15:16], r[10:11]
	slli r23, r6, 2
	add.s r6, r24, r23
	loads.w r2, 12(r6)
	loads.w r7, 0(r6)
	loads.w r18, 4(r6)
	loads.w r28, 8(r6)
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	and r26, r2, r1
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	setlt.u r6, r20, r26
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	bneq r6, zero, .LBB0_419
# %bb.418:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_420
.LBB0_419:                              #   in Loop: Header=BB0_417 Depth=3
	or r25, r2, r22
.LBB0_420:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	and r6, r28, r1
	setlt.u r8, r20, r6
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	bneq r8, zero, .LBB0_422
# %bb.421:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r28, 0
	j .LBB0_423
.LBB0_422:                              #   in Loop: Header=BB0_417 Depth=3
	or r27, r28, r22
.LBB0_423:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	and r8, r18, r1
	setlt.u r9, r20, r8
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	bneq r9, zero, .LBB0_425
# %bb.424:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_426
.LBB0_425:                              #   in Loop: Header=BB0_417 Depth=3
	or r17, r18, r22
.LBB0_426:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	and r9, r7, r1
	setlt.u r12, r20, r9
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	bneq r12, zero, .LBB0_428
# %bb.427:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r7, 0
	.loc	1 606 19 is_stmt 1              # parallel-rne.mlir:606:19
	setlt.u r9, r13, r9
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	beq r9, zero, .LBB0_429
	j .LBB0_430
.LBB0_428:                              #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r7, r22
	.loc	1 606 19 is_stmt 1              # parallel-rne.mlir:606:19
	setlt.u r9, r13, r9
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	bneq r9, zero, .LBB0_430
.LBB0_429:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r3
	and r12, r7, r21
.LBB0_430:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	setlt.u r7, r13, r8
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	bneq r7, zero, .LBB0_433
# %bb.431:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r3
	and r17, r7, r21
	setlt.u r6, r13, r6
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	beq r6, zero, .LBB0_434
.LBB0_432:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r26
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	bneq r6, zero, .LBB0_416
	j .LBB0_435
.LBB0_433:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r13, r6
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	bneq r6, zero, .LBB0_432
.LBB0_434:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r3
	and r27, r6, r21
	setlt.u r6, r13, r26
	.loc	1 607 19                        # parallel-rne.mlir:607:19
	bneq r6, zero, .LBB0_416
.LBB0_435:                              # %vector.body
                                        #   in Loop: Header=BB0_417 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r3
	and r25, r2, r21
	j .LBB0_416
.LBB0_436:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r7
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	mfence { sm }
.LBB0_437:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r2, zero, 255
	addli r18, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	beq r7, r18, .LBB0_5
# %bb.438:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r2, zero, 5
	addli r12, zero, 64
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 13
	addli r23, zero, 4
	addli r24, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	bneq r7, r2, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 17
	xwait r2, 0
	lock zero, r24
	lui r2, 260096
	ew_cfg r15, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 2047
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 18
	ew_cfg r23, zero, zero, 3
	ew_cfg r23, r23, zero, 19
	dsmadd r19, r19, r19, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r24
	j .LBB0_6
.LBB0_440:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	bneq r7, zero, .LBB0_7
# %bb.441:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	load.d r[8:9], -128(r30)                # 8-byte Folded Reload
	load.d r[25:26], 24(r30)
	addli r11, zero, 5
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	slli r2, r2, 6
	sext_int2long r[4:5], r2
	addli r2, zero, 17
	sll.d r[8:9], r[8:9], r2
	addli r2, zero, 18
	min.sl r[6:7], r[4:5], r[6:7]
	xwait r2, 0
	lock zero, r11
	add.ul r[8:9], r[25:26], r[8:9]
	addli.d r[6:7], r[6:7], 64
	lui r2, 100
	load.d r[25:26], -120(r30)              # 8-byte Folded Reload
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	max.sl r[6:7], r[6:7], r[4:5]
	ori r2, r2, 64
	add.ul r[8:9], r[8:9], r[25:26]
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r12
	add.s r2, r14, r2
	dma_cfg r9, zero, zero, 2
	.loc	1 621 13 is_stmt 1              # parallel-rne.mlir:621:13
	min.sl r[4:5], r[4:5], r[6:7]
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	addli r7, zero, 128
	load.d r[25:26], -112(r30)              # 8-byte Folded Reload
	dma_cfg r8, r2, r12, 3
	addli r6, r25, 31
	srli r2, r6, 5
	slli r6, r25, 1
	dma_cfg r12, r7, r2, 4
	andi r2, r6, 62
	addli r6, zero, 512
	addli r7, zero, 2048
	dma_cfg r7, r6, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	addli r2, zero, 19
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_442:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -88(r30)                # 4-byte Folded Spill
	storeli.w zero, -84(r30)                # 4-byte Folded Spill
	lui r10, 8
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	beq r6, r18, .LBB0_26
	j .LBB0_27
.LBB0_443:                              # %._crit_edge
	.loc	1 627 5                         # parallel-rne.mlir:627:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_445
# %bb.444:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 627 5                         # parallel-rne.mlir:627:5
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
.LBB0_445:
	.loc	1 628 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:628:5
	addli sp, sp, 144
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
	.long	208                             # 0xd0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-9pxih2mt" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
