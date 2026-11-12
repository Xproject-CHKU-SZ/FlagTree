	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-dciebi1k" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -136
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # parallel-rne.mlir:27:5
	core_id r10
	addli r30, sp, 72
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 27 5                          # parallel-rne.mlir:27:5
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
	addli r2, zero, 13
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 29 10 is_stmt 1               # parallel-rne.mlir:29:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 30 10                         # parallel-rne.mlir:30:10
	mul.s r1, r2, r1
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	mul.s r3, r1, r3
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	addli r2, r2, -1
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	div.s r2, r2, r4
	.loc	1 28 10                         # parallel-rne.mlir:28:10
	load_param_i r4, 0
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	fmac.s r2, r2, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	min.s r2, r2, r3
	.loc	1 46 5                          # parallel-rne.mlir:46:5
	ble.s r2, r1, .LBB0_286
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r23, zero, 5
	addli r12, zero, 16
	addli r14, zero, 1
	addli r15, zero, 8
	addli r16, zero, 6
	addli r17, zero, 11
	addli r22, zero, 3
	lui r26, 522240
	lui r20, 1048560
	addli r7, zero, 0
	.loc	1 38 11 is_stmt 1               # parallel-rne.mlir:38:11
	store.d r[2:3], -72(r30)                # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 524287
	lui r2, 522239
	ori r13, r1, 4095
	lui r1, 7
	ori r25, r2, 4095
	ori r24, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	addli r1, zero, 11
	addli r23, zero, 5
	addli r12, zero, 16
	addli r14, zero, 1
	addli r22, zero, 3
	xsignal r1, 0
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -48(r30)                 # 8-byte Folded Reload
	.loc	1 46 5 is_stmt 1                # parallel-rne.mlir:46:5
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	loadli.w r7,  -40(r30)                  # 4-byte Folded Reload
	addli r15, zero, 8
	addli r16, zero, 6
	addli r17, zero, 11
	addli.d r[3:4], r[3:4], 1
	addli r7, r7, 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_286
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_123 Depth 2
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_159 Depth 3
                                        #     Child Loop BB0_60 Depth 2
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_64 Depth 3
                                        #     Child Loop BB0_187 Depth 2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_92 Depth 2
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #     Child Loop BB0_219 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
                                        #     Child Loop BB0_251 Depth 2
                                        #       Child Loop BB0_260 Depth 3
                                        #       Child Loop BB0_255 Depth 3
	.loc	1 48 13                         # parallel-rne.mlir:48:13
	loadli.w r1,  32(r30)
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r2,  28(r30)
	store.d r[3:4], -48(r30)                # 8-byte Folded Spill
	addli r21, r7, 0
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r21, -40(r30)                 # 4-byte Folded Spill
	.loc	1 48 13                         # parallel-rne.mlir:48:13
	div.s r1, r3, r1
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r1, r1, r2
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r3, r1, r12
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	slli r4, r3, 3
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	sub.s r2, r14, r4
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	min.s r6, r2, r15
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	mod.s r2, r7, r23
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r5, r1, r6
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	slli r11, r2, 12
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	add.s r4, r5, r4
	storeli.w r4, -60(r30)                  # 4-byte Folded Spill
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	zext_int2long r[27:28], r4
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	lui r4, 5
	add.s r7, r11, r4
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r10, r14, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[18:19], 0(r30)
	sll.d r[4:5], r[27:28], r17
	xwait r22, 0
	add.ul r[4:5], r[18:19], r[4:5]
	addli r18, zero, 4
	blt.s r18, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	lock zero, r23
	addli r19, zero, 2
	addli r8, zero, 7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r8, 3
	addli r8, zero, 128
	dma_cfg r8, zero, r19, 4
	addli r8, zero, 256
	dma_cfg r8, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r8, 5
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	addli r19, zero, 64
	addli r21, zero, 128
	addli r22, zero, 3
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	lock zero, r18
	ori r8, r8, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r5, zero, 2
	add.s r8, r11, r8
	dma_cfg r8, r4, r19, 3
	addli r4, zero, 2
	addli r8, zero, 256
	addli r5, zero, 7
	dma_cfg r21, r19, r4, 4
	dma_cfg r8, r21, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r23
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r19, 3
	dma_cfg r21, zero, r4, 4
	dma_cfg r8, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	j .LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 2
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	bneq r10, r4, .LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r4, 0
	xwait r23, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r12, zero, 13
	shuffle_batch r11, r7, r4, 1
	addli r4, zero, 1
	unlock zero
	xsignal r22, 0
	storeli.w r4, -56(r30)                  # 4-byte Folded Spill
	addli r4, zero, 4
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r4, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	slli r3, r3, 4
	.loc	1 99 13 is_stmt 1               # parallel-rne.mlir:99:13
	slli r2, r2, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r1, r3
	div.s r1, r1, r6
	zext_int2long r[3:4], r1
	storeli.w r1, -64(r30)                  # 4-byte Folded Spill
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r1, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[3:4], r[3:4], r16
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	add.s r1, r2, r1
	.loc	1 105 7 is_stmt 1               # parallel-rne.mlir:105:7
	sll.d r[6:7], r[3:4], r14
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	bneq r10, r16, .LBB0_52
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], 8(r30)
	add.ul r[3:4], r[3:4], r[6:7]
	addli r7, zero, 7
	addli r6, zero, 4
	xwait r7, 0
	loadli.w r5,  -40(r30)                  # 4-byte Folded Reload
	blt.s r6, r5, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	lock zero, r23
	addli r5, zero, 2
	addli r18, zero, 9
	addli r19, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 13
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 14
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 15
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 18
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 19
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 20
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 21
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 22
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 23
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 24
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 25
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 26
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 27
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 28
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 29
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 30
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 31
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r18, 3
	dma_cfg r19, zero, r5, 4
	addli r5, zero, 256
	dma_cfg r5, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
.LBB0_19:                               # %.thread15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r5, 15
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	addli r18, zero, 256
	addli r8, zero, 64
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	lock zero, r6
	ori r5, r5, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r4, zero, 2
	add.s r2, r2, r5
	addli r5, zero, 64
	dma_cfg r2, r3, r5, 3
	addli r2, zero, 2
	addli r4, zero, 128
	addli r3, zero, 9
	dma_cfg r4, r5, r2, 4
	dma_cfg r18, r18, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r23
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r8, 3
	dma_cfg r4, zero, r2, 4
	dma_cfg r18, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	xsignal r16, 0
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
.LBB0_20:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 10
	.loc	1 115 7 is_stmt 1               # parallel-rne.mlir:115:7
	xfence
	zext_int2long r[8:9], r8
	addli.d r[16:17], r[27:28], 0
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r14, r11, r1
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	sync_core
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	beq r10, zero, .LBB0_121
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_152
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	xfence
	addli r4, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_24
.LBB0_23:                               # %middle.block88
                                        #   in Loop: Header=BB0_24 Depth=2
	.loc	1 155 9 is_stmt 1               # parallel-rne.mlir:155:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 192
	addli r4, zero, 0
	zext_int2long r[2:3], r2
	andi r1, r1, 1
	beq r1, zero, .LBB0_56
.LBB0_24:                               # %vector.memcheck80
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	bneq r14, r11, .LBB0_31
# %bb.25:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_28
.LBB0_26:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_28 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_27:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_28 Depth=3
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 171 13 is_stmt 1              # parallel-rne.mlir:171:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_23
.LBB0_28:                               # %scalar.ph82
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	and r10, r1, r13
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	setlt.u r7, r26, r10
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r7, zero, .LBB0_30
# %bb.29:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_28 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r10, r25, r10
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r10, zero, .LBB0_27
	j .LBB0_26
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r10, r25, r10
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r10, zero, .LBB0_27
	j .LBB0_26
.LBB0_31:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_33
.LBB0_32:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	add.s r4, r14, r4
	addli.d r[27:28], r[16:17], 0
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 171 13                        # parallel-rne.mlir:171:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	bneq r12, zero, .LBB0_23
.LBB0_33:                               # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r21, 12(r19)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	and r23, r21, r13
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	setlt.u r1, r26, r23
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_35
# %bb.34:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_33 Depth=3
	lui r1, 1024
	or r10, r21, r1
.LBB0_36:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	loads.w r27, 8(r19)
	and r22, r27, r13
	setlt.u r1, r26, r22
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_38
# %bb.37:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r27, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_33 Depth=3
	lui r1, 1024
	or r18, r27, r1
.LBB0_39:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	loads.w r15, 4(r19)
	and r12, r15, r13
	setlt.u r1, r26, r12
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_41
# %bb.40:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_33 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_42:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	bneq r1, zero, .LBB0_51
# %bb.43:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r28, r25, r28
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r28, zero, .LBB0_45
.LBB0_44:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_45:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	setlt.u r12, r25, r12
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_48
# %bb.46:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
	setlt.u r12, r25, r22
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	beq r12, zero, .LBB0_49
.LBB0_47:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r23
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_32
	j .LBB0_50
.LBB0_48:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r22
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_47
.LBB0_49:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r27, 16
	andi r12, r12, 1
	add.s r12, r27, r12
	add.s r12, r12, r24
	and r18, r12, r20
	setlt.u r12, r25, r23
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r12, zero, .LBB0_32
.LBB0_50:                               # %vector.body84
                                        #   in Loop: Header=BB0_33 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_32
.LBB0_51:                               #   in Loop: Header=BB0_33 Depth=3
	lui r1, 1024
	or r1, r19, r1
	.loc	1 168 19 is_stmt 1              # parallel-rne.mlir:168:19
	setlt.u r28, r25, r28
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	beq r28, zero, .LBB0_44
	j .LBB0_45
.LBB0_52:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	beq r10, r22, .LBB0_284
# %bb.53:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 4
	addli r4, zero, 2
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	beq r10, r3, .LBB0_283
# %bb.54:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 7
	addli r8, zero, 64
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	bneq r10, r3, .LBB0_285
# %bb.55:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 9
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	xwait r16, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg r8, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r2, r1, r8, 2
	addli r1, zero, 1
	unlock zero
	xsignal r3, 0
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	xsignal r15, 0
	j .LBB0_20
.LBB0_56:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_153
.LBB0_57:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_184
.LBB0_58:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	xfence
	addli r4, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_60
.LBB0_59:                               # %middle.block70
                                        #   in Loop: Header=BB0_60 Depth=2
	.loc	1 213 9 is_stmt 1               # parallel-rne.mlir:213:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 448
	addli r4, zero, 0
	zext_int2long r[2:3], r2
	andi r1, r1, 1
	beq r1, zero, .LBB0_88
.LBB0_60:                               # %vector.memcheck62
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_64 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	bneq r14, r11, .LBB0_67
# %bb.61:                               # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_60 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_64
.LBB0_62:                               # %scalar.ph64
                                        #   in Loop: Header=BB0_64 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_63:                               # %scalar.ph64
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 229 13 is_stmt 1              # parallel-rne.mlir:229:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_59
.LBB0_64:                               # %scalar.ph64
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r10, r1, r13
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r7, r26, r10
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r7, zero, .LBB0_66
# %bb.65:                               # %scalar.ph64
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r10, r25, r10
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r10, zero, .LBB0_63
	j .LBB0_62
.LBB0_66:                               #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r10, r25, r10
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r10, zero, .LBB0_63
	j .LBB0_62
.LBB0_67:                               # %vector.body66.preheader
                                        #   in Loop: Header=BB0_60 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_69
.LBB0_68:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r4, r14, r4
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	bneq r12, zero, .LBB0_59
.LBB0_69:                               # %vector.body66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r12, 12(r19)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r21, r12, r13
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r1, r26, r21
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_71
# %bb.70:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_72:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	loads.w r23, 8(r19)
	and r22, r23, r13
	setlt.u r1, r26, r22
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_74
# %bb.73:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r23, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=3
	lui r1, 1024
	or r18, r23, r1
.LBB0_75:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	loads.w r15, 4(r19)
	and r27, r15, r13
	setlt.u r1, r26, r27
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_77
# %bb.76:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_69 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_78:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_87
# %bb.79:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r28, r25, r28
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r28, zero, .LBB0_81
.LBB0_80:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_81:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r19, r25, r27
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r19, zero, .LBB0_83
# %bb.82:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
.LBB0_83:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r15, r25, r22
	addli.d r[27:28], r[16:17], 0
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r15, zero, .LBB0_85
# %bb.84:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r24
	and r18, r15, r20
.LBB0_85:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r15, r25, r21
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r15, zero, .LBB0_68
# %bb.86:                               # %vector.body66
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_68
.LBB0_87:                               #   in Loop: Header=BB0_69 Depth=3
	lui r1, 1024
	or r1, r19, r1
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r28, r25, r28
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r28, zero, .LBB0_80
	j .LBB0_81
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_185
.LBB0_89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_216
.LBB0_90:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 640
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	xfence
	addli r4, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_92
.LBB0_91:                               # %middle.block52
                                        #   in Loop: Header=BB0_92 Depth=2
	.loc	1 271 9 is_stmt 1               # parallel-rne.mlir:271:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 704
	addli r4, zero, 0
	zext_int2long r[2:3], r2
	andi r1, r1, 1
	beq r1, zero, .LBB0_120
.LBB0_92:                               # %vector.memcheck44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 272 11 is_stmt 1              # parallel-rne.mlir:272:11
	bneq r14, r11, .LBB0_99
# %bb.93:                               # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_92 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_96
.LBB0_94:                               # %scalar.ph46
                                        #   in Loop: Header=BB0_96 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_95:                               # %scalar.ph46
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 287 13 is_stmt 1              # parallel-rne.mlir:287:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_91
.LBB0_96:                               # %scalar.ph46
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r10, r1, r13
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	setlt.u r7, r26, r10
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r7, zero, .LBB0_98
# %bb.97:                               # %scalar.ph46
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r10, r25, r10
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r10, zero, .LBB0_95
	j .LBB0_94
.LBB0_98:                               #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r10, r25, r10
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r10, zero, .LBB0_95
	j .LBB0_94
.LBB0_99:                               # %vector.body48.preheader
                                        #   in Loop: Header=BB0_92 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_101
.LBB0_100:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 272 11 is_stmt 1              # parallel-rne.mlir:272:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	add.s r4, r14, r4
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	bneq r12, zero, .LBB0_91
.LBB0_101:                              # %vector.body48
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r12, 12(r19)
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r21, r12, r13
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	setlt.u r1, r26, r21
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_103
# %bb.102:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_104:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	loads.w r23, 8(r19)
	and r22, r23, r13
	setlt.u r1, r26, r22
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_106
# %bb.105:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r23, 0
	j .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_101 Depth=3
	lui r1, 1024
	or r18, r23, r1
.LBB0_107:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	loads.w r15, 4(r19)
	and r27, r15, r13
	setlt.u r1, r26, r27
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_109
# %bb.108:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_101 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_110:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_119
# %bb.111:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r28, r25, r28
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r28, zero, .LBB0_113
.LBB0_112:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_113:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r19, r25, r27
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r19, zero, .LBB0_115
# %bb.114:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
.LBB0_115:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r15, r25, r22
	addli.d r[27:28], r[16:17], 0
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r15, zero, .LBB0_117
# %bb.116:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r24
	and r18, r15, r20
.LBB0_117:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r15, r25, r21
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	bneq r15, zero, .LBB0_100
# %bb.118:                              # %vector.body48
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_100
.LBB0_119:                              #   in Loop: Header=BB0_101 Depth=3
	lui r1, 1024
	or r1, r19, r1
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r28, r25, r28
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	beq r28, zero, .LBB0_112
	j .LBB0_113
.LBB0_120:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_248
	j .LBB0_217
.LBB0_121:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	xfence
	addli r4, zero, 1
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_123
.LBB0_122:                              # %middle.block97
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 126 9                         # parallel-rne.mlir:126:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli.d r[2:3], r[8:9], 0
	addli r4, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_151
.LBB0_123:                              # %vector.memcheck89
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_127 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 127 11 is_stmt 1              # parallel-rne.mlir:127:11
	bneq r14, r11, .LBB0_130
# %bb.124:                              # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_127
.LBB0_125:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_127 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_126:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 142 13 is_stmt 1              # parallel-rne.mlir:142:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_122
.LBB0_127:                              # %scalar.ph91
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 128 19                        # parallel-rne.mlir:128:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	and r10, r1, r13
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	setlt.u r7, r26, r10
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r7, zero, .LBB0_129
# %bb.128:                              # %scalar.ph91
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r10, r25, r10
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r10, zero, .LBB0_126
	j .LBB0_125
.LBB0_129:                              #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r10, r25, r10
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r10, zero, .LBB0_126
	j .LBB0_125
.LBB0_130:                              # %vector.body93.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_132
.LBB0_131:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 127 11 is_stmt 1              # parallel-rne.mlir:127:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	add.s r4, r14, r4
	addli.d r[27:28], r[16:17], 0
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 127 11                        # parallel-rne.mlir:127:11
	bneq r12, zero, .LBB0_122
.LBB0_132:                              # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 128 19                        # parallel-rne.mlir:128:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r21, 12(r19)
	.loc	1 130 19                        # parallel-rne.mlir:130:19
	and r23, r21, r13
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	setlt.u r1, r26, r23
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_134
# %bb.133:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	lui r1, 1024
	or r10, r21, r1
.LBB0_135:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	loads.w r27, 8(r19)
	and r22, r27, r13
	setlt.u r1, r26, r22
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_137
# %bb.136:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r27, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_132 Depth=3
	lui r1, 1024
	or r18, r27, r1
.LBB0_138:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	loads.w r15, 4(r19)
	and r12, r15, r13
	setlt.u r1, r26, r12
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_140
# %bb.139:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_132 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_141:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	bneq r1, zero, .LBB0_143
# %bb.142:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r28, r25, r28
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	beq r28, zero, .LBB0_144
	j .LBB0_145
.LBB0_143:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r19, r1
	.loc	1 139 19 is_stmt 1              # parallel-rne.mlir:139:19
	setlt.u r28, r25, r28
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r28, zero, .LBB0_145
.LBB0_144:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_145:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r12, r25, r12
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_148
# %bb.146:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
	setlt.u r12, r25, r22
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	beq r12, zero, .LBB0_149
.LBB0_147:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r23
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_131
	j .LBB0_150
.LBB0_148:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r25, r22
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_147
.LBB0_149:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r27, 16
	andi r12, r12, 1
	add.s r12, r27, r12
	add.s r12, r12, r24
	and r18, r12, r20
	setlt.u r12, r25, r23
	.loc	1 140 19                        # parallel-rne.mlir:140:19
	bneq r12, zero, .LBB0_131
.LBB0_150:                              # %vector.body93
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r21, 16
	andi r10, r10, 1
	add.s r10, r21, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_131
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_22
.LBB0_152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_57
.LBB0_153:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	xfence
	addli r4, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_155
.LBB0_154:                              # %middle.block79
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 184 9 is_stmt 1               # parallel-rne.mlir:184:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 320
	addli r4, zero, 0
	zext_int2long r[2:3], r2
	andi r1, r1, 1
	beq r1, zero, .LBB0_183
.LBB0_155:                              # %vector.memcheck71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_159 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 185 11 is_stmt 1              # parallel-rne.mlir:185:11
	bneq r14, r11, .LBB0_162
# %bb.156:                              # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_159
.LBB0_157:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_159 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_158:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 200 13 is_stmt 1              # parallel-rne.mlir:200:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_154
.LBB0_159:                              # %scalar.ph73
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	and r10, r1, r13
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	setlt.u r7, r26, r10
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r7, zero, .LBB0_161
# %bb.160:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r10, r25, r10
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r10, zero, .LBB0_158
	j .LBB0_157
.LBB0_161:                              #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r10, r25, r10
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r10, zero, .LBB0_158
	j .LBB0_157
.LBB0_162:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_164
.LBB0_163:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 185 11 is_stmt 1              # parallel-rne.mlir:185:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	add.s r4, r14, r4
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	bneq r12, zero, .LBB0_154
.LBB0_164:                              # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r12, 12(r19)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	and r21, r12, r13
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	setlt.u r1, r26, r21
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_166
# %bb.165:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_164 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_167:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r23, 8(r19)
	and r22, r23, r13
	setlt.u r1, r26, r22
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_169
# %bb.168:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r23, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_164 Depth=3
	lui r1, 1024
	or r18, r23, r1
.LBB0_170:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r15, 4(r19)
	and r27, r15, r13
	setlt.u r1, r26, r27
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_172
# %bb.171:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_164 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_173:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r1, zero, .LBB0_182
# %bb.174:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r28, r25, r28
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r28, zero, .LBB0_176
.LBB0_175:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_176:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	setlt.u r19, r25, r27
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r19, zero, .LBB0_178
# %bb.177:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
.LBB0_178:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	setlt.u r15, r25, r22
	addli.d r[27:28], r[16:17], 0
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r15, zero, .LBB0_180
# %bb.179:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r24
	and r18, r15, r20
.LBB0_180:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	setlt.u r15, r25, r21
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r15, zero, .LBB0_163
# %bb.181:                              # %vector.body75
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_163
.LBB0_182:                              #   in Loop: Header=BB0_164 Depth=3
	lui r1, 1024
	or r1, r19, r1
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r28, r25, r28
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r28, zero, .LBB0_175
	j .LBB0_176
.LBB0_183:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_58
.LBB0_184:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_89
.LBB0_185:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	xfence
	addli r4, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_187
.LBB0_186:                              # %middle.block61
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 242 9 is_stmt 1               # parallel-rne.mlir:242:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 576
	addli r4, zero, 0
	zext_int2long r[2:3], r2
	andi r1, r1, 1
	beq r1, zero, .LBB0_215
.LBB0_187:                              # %vector.memcheck53
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_191 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	bneq r14, r11, .LBB0_194
# %bb.188:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_191
.LBB0_189:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_191 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_190:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 258 13 is_stmt 1              # parallel-rne.mlir:258:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_186
.LBB0_191:                              # %scalar.ph55
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	and r10, r1, r13
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	setlt.u r7, r26, r10
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r7, zero, .LBB0_193
# %bb.192:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r10, r25, r10
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r10, zero, .LBB0_190
	j .LBB0_189
.LBB0_193:                              #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r10, r25, r10
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r10, zero, .LBB0_190
	j .LBB0_189
.LBB0_194:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_196
.LBB0_195:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	add.s r4, r14, r4
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	bneq r12, zero, .LBB0_186
.LBB0_196:                              # %vector.body57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r12, 12(r19)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	and r21, r12, r13
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	setlt.u r1, r26, r21
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_198
# %bb.197:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_199:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r23, 8(r19)
	and r22, r23, r13
	setlt.u r1, r26, r22
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_201
# %bb.200:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r23, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_196 Depth=3
	lui r1, 1024
	or r18, r23, r1
.LBB0_202:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r15, 4(r19)
	and r27, r15, r13
	setlt.u r1, r26, r27
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_204
# %bb.203:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_196 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_205:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_214
# %bb.206:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r28, r25, r28
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r28, zero, .LBB0_208
.LBB0_207:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_208:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r19, r25, r27
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r19, zero, .LBB0_210
# %bb.209:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
.LBB0_210:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r15, r25, r22
	addli.d r[27:28], r[16:17], 0
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r15, zero, .LBB0_212
# %bb.211:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r24
	and r18, r15, r20
.LBB0_212:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r15, r25, r21
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r15, zero, .LBB0_195
# %bb.213:                              # %vector.body57
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_195
.LBB0_214:                              #   in Loop: Header=BB0_196 Depth=3
	lui r1, 1024
	or r1, r19, r1
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r28, r25, r28
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r28, zero, .LBB0_207
	j .LBB0_208
.LBB0_215:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_90
.LBB0_216:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_248
.LBB0_217:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 768
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	xfence
	addli r4, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_219
.LBB0_218:                              # %middle.block43
                                        #   in Loop: Header=BB0_219 Depth=2
	.loc	1 300 9 is_stmt 1               # parallel-rne.mlir:300:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 832
	addli r4, zero, 0
	zext_int2long r[2:3], r2
	andi r1, r1, 1
	beq r1, zero, .LBB0_247
.LBB0_219:                              # %vector.memcheck35
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r4, -12(r30)                  # 4-byte Folded Spill
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	bneq r14, r11, .LBB0_226
# %bb.220:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_219 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_223
.LBB0_221:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_223 Depth=3
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	add.s r1, r1, r24
	and r7, r1, r20
.LBB0_222:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 316 13 is_stmt 1              # parallel-rne.mlir:316:13
	add.s r6, r14, r6
	stores.w r7, 0(r6)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	setlt.ul r1, r[4:5], r[18:19]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_218
.LBB0_223:                              # %scalar.ph37
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r1, r11, r6
	loads.w r1, 0(r1)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r10, r1, r13
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	setlt.u r7, r26, r10
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r7, zero, .LBB0_225
# %bb.224:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r1, 0
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r10, r25, r10
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r10, zero, .LBB0_222
	j .LBB0_221
.LBB0_225:                              #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r1, r7
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r10, r25, r10
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r10, zero, .LBB0_222
	j .LBB0_221
.LBB0_226:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_219 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[6:7], zero
	j .LBB0_228
.LBB0_227:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 301 11 is_stmt 1              # parallel-rne.mlir:301:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	add.s r4, r14, r4
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	seteq.d r12, r[6:7], r[8:9]
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	stores.w r10, 12(r4)
	stores.w r18, 8(r4)
	stores.w r5, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 301 11                        # parallel-rne.mlir:301:11
	bneq r12, zero, .LBB0_218
.LBB0_228:                              # %vector.body39
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.ul r[4:5], r[6:7], r[2:3]
	slli r4, r4, 2
	add.s r19, r11, r4
	loads.w r12, 12(r19)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r21, r12, r13
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	setlt.u r1, r26, r21
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_230
# %bb.229:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_231
.LBB0_230:                              #   in Loop: Header=BB0_228 Depth=3
	lui r1, 1024
	or r10, r12, r1
.LBB0_231:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r23, 8(r19)
	and r22, r23, r13
	setlt.u r1, r26, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_233
# %bb.232:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r23, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_228 Depth=3
	lui r1, 1024
	or r18, r23, r1
.LBB0_234:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r15, 4(r19)
	and r27, r15, r13
	setlt.u r1, r26, r27
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_236
# %bb.235:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_228 Depth=3
	lui r1, 1024
	or r5, r15, r1
.LBB0_237:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r19, 0(r19)
	and r28, r19, r13
	setlt.u r1, r26, r28
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r1, zero, .LBB0_246
# %bb.238:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r28, r25, r28
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r28, zero, .LBB0_240
.LBB0_239:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r24
	and r1, r1, r20
.LBB0_240:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	setlt.u r19, r25, r27
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r19, zero, .LBB0_242
# %bb.241:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r24
	and r5, r5, r20
.LBB0_242:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	setlt.u r15, r25, r22
	addli.d r[27:28], r[16:17], 0
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r15, zero, .LBB0_244
# %bb.243:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r23, 16
	andi r15, r15, 1
	add.s r15, r23, r15
	add.s r15, r15, r24
	and r18, r15, r20
.LBB0_244:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	setlt.u r15, r25, r21
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r15, zero, .LBB0_227
# %bb.245:                              # %vector.body39
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r12, 16
	andi r10, r10, 1
	add.s r10, r12, r10
	add.s r10, r10, r24
	and r10, r10, r20
	j .LBB0_227
.LBB0_246:                              #   in Loop: Header=BB0_228 Depth=3
	lui r1, 1024
	or r1, r19, r1
	.loc	1 313 19 is_stmt 1              # parallel-rne.mlir:313:19
	setlt.u r28, r25, r28
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	beq r28, zero, .LBB0_239
	j .LBB0_240
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
.LBB0_248:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 321 7 is_stmt 1               # parallel-rne.mlir:321:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_280
# %bb.249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 896
	.loc	1 321 7                         # parallel-rne.mlir:321:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_251
.LBB0_250:                              # %middle.block
                                        #   in Loop: Header=BB0_251 Depth=2
	.loc	1 329 9 is_stmt 1               # parallel-rne.mlir:329:9
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	addli r2, zero, 960
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_279
.LBB0_251:                              # %vector.memcheck
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_260 Depth 3
                                        #       Child Loop BB0_255 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	bneq r14, r11, .LBB0_258
# %bb.252:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_251 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_255
.LBB0_253:                              # %scalar.ph
                                        #   in Loop: Header=BB0_255 Depth=3
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r24
	and r4, r4, r20
.LBB0_254:                              # %scalar.ph
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 345 13 is_stmt 1              # parallel-rne.mlir:345:13
	add.s r3, r14, r3
	stores.w r4, 0(r3)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	setlt.ul r5, r[1:2], r[18:19]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_250
.LBB0_255:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_251 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[3:4], r[1:2], r[6:7]
	slli r3, r3, 2
	add.s r4, r11, r3
	loads.w r5, 0(r4)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r10, r5, r13
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r4, r26, r10
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r4, zero, .LBB0_257
# %bb.256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r10, r25, r10
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r10, zero, .LBB0_254
	j .LBB0_253
.LBB0_257:                              #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r10, r25, r10
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r10, zero, .LBB0_254
	j .LBB0_253
.LBB0_258:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_251 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_260
.LBB0_259:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	add.s r5, r14, r10
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	seteq.d r4, r[1:2], r[8:9]
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	stores.w r23, 12(r5)
	stores.w r19, 8(r5)
	stores.w r3, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	bneq r4, zero, .LBB0_250
.LBB0_260:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_251 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[3:4], r[1:2], r[6:7]
	slli r10, r3, 2
	add.s r4, r11, r10
	loads.w r21, 12(r4)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r18, r21, r13
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r3, r26, r18
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r3, zero, .LBB0_262
# %bb.261:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r21, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_260 Depth=3
	lui r3, 1024
	or r23, r21, r3
.LBB0_263:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	loads.w r5, 8(r4)
	and r15, r5, r13
	setlt.u r3, r26, r15
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r3, zero, .LBB0_265
# %bb.264:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r5, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_260 Depth=3
	lui r3, 1024
	or r19, r5, r3
.LBB0_266:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	loads.w r27, 4(r4)
	and r12, r27, r13
	setlt.u r3, r26, r12
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r3, zero, .LBB0_268
# %bb.267:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r27, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_260 Depth=3
	lui r3, 1024
	or r3, r27, r3
.LBB0_269:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	loads.w r4, 0(r4)
	and r28, r4, r13
	setlt.u r22, r26, r28
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r22, zero, .LBB0_278
# %bb.270:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r4, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r28, r25, r28
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r28, zero, .LBB0_272
.LBB0_271:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r4, 16
	andi r22, r22, 1
	add.s r4, r4, r22
	add.s r4, r4, r24
	and r22, r4, r20
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	setlt.u r4, r25, r12
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_274
# %bb.273:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r24
	and r3, r3, r20
	setlt.u r4, r25, r15
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r4, zero, .LBB0_275
	j .LBB0_276
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r25, r15
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_276
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r24
	and r19, r4, r20
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	setlt.u r4, r25, r18
	addli.d r[27:28], r[16:17], 0
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_259
# %bb.277:                              # %vector.body
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r24
	and r23, r4, r20
	j .LBB0_259
.LBB0_278:                              #   in Loop: Header=BB0_260 Depth=3
	lui r22, 1024
	or r22, r4, r22
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r28, r25, r28
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r28, zero, .LBB0_271
	j .LBB0_272
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 321 7                         # parallel-rne.mlir:321:7
	mfence { sm }
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
.LBB0_280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 350 7                         # parallel-rne.mlir:350:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.281:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r23, zero, 5
	addli r12, zero, 16
	addli r14, zero, 1
	addli r22, zero, 3
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	bneq r10, zero, .LBB0_7
# %bb.282:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	addli.d r[15:16], r[8:9], 0
	addli.d r[18:19], r[6:7], 0
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	load.d r[7:8], -24(r30)                 # 8-byte Folded Reload
	addli r22, zero, 3
	slli r1, r1, 6
	slli r2, r2, 4
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	zext_int2long r[3:4], r1
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	sext_int2long r[1:2], r2
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	min.ul r[5:6], r[3:4], r[15:16]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	min.sl r[7:8], r[1:2], r[7:8]
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	addli.d r[5:6], r[5:6], 64
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	addli.d r[7:8], r[7:8], 16
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	max.ul r[5:6], r[5:6], r[3:4]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	max.sl r[7:8], r[7:8], r[1:2]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sub.sl r[3:4], r[5:6], r[3:4]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	sub.sl r[1:2], r[7:8], r[1:2]
	zext_int2long r[7:8], r12
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.ul r[3:4], r[3:4], r[15:16]
	addli r15, zero, 12
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	load.d r[16:17], 16(r30)
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.sl r[1:2], r[1:2], r[7:8]
	lui r7, 10
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	sll.d r[5:6], r[27:28], r15
	ori r7, r7, 64
	xwait r15, 0
	lock zero, r23
	addli r8, r3, 31
	slli r3, r3, 1
	addli r4, zero, 128
	dma_cfg r14, r14, zero, 0
	add.ul r[5:6], r[16:17], r[5:6]
	add.s r7, r11, r7
	dma_cfg zero, r14, zero, 1
	addli r11, zero, 64
	andi r3, r3, 62
	add.ul r[5:6], r[5:6], r[18:19]
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r7, r11, 3
	srli r5, r8, 5
	dma_cfg r11, r4, r5, 4
	addli r4, zero, 256
	dma_cfg r4, r4, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	j .LBB0_6
.LBB0_283:                              # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 1
	addli r8, zero, 64
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	xwait r3, 0
	xwait r15, 0
	xwait r17, 0
	addli r1, zero, 1
	lock zero, r5
	mm_cfg r8, r8, r12, 0
	mm_cfg r3, r4, r5, 2
	mm r11, r11, r2, 8
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r5
	xsignal r23, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	j .LBB0_20
.LBB0_284:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	addli r8, zero, 64
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_20
.LBB0_285:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	storeli.w zero, -24(r30)                # 4-byte Folded Spill
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_20
.LBB0_286:                              # %._crit_edge
	.loc	1 370 5                         # parallel-rne.mlir:370:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_288
# %bb.287:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 370 5                         # parallel-rne.mlir:370:5
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
.LBB0_288:
	.loc	1 371 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:371:5
	addli sp, sp, 72
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	136                             # 0x88
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-dciebi1k" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
