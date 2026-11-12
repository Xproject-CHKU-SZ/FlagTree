	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-j8e7cxs6" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # parallel-rne.mlir:27:5
	core_id r10
	addli r30, sp, 80
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
	ble.s r2, r1, .LBB0_285
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 38 11 is_stmt 1               # parallel-rne.mlir:38:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r12, zero, 5
	addli r14, zero, 128
	addli r18, zero, 1
	addli r11, zero, 8
	addli r19, zero, 6
	addli r20, zero, 13
	addli r16, zero, 3
	addli r17, zero, 4
	lui r4, 522240
	lui r5, 1048560
	addli r9, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r13, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r24, r1, 4095
	ori r28, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 343 7                         # parallel-rne.mlir:343:7
	addli r1, zero, 11
	addli r12, zero, 5
	addli r14, zero, 128
	addli r18, zero, 1
	addli r20, zero, 13
	xsignal r1, 0
	.loc	1 344 7                         # parallel-rne.mlir:344:7
	addli r1, zero, 12
	xsignal r1, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 46 5 is_stmt 1                # parallel-rne.mlir:46:5
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	loadli.w r9,  -24(r30)                  # 4-byte Folded Reload
	addli r11, zero, 8
	addli r16, zero, 3
	addli r17, zero, 4
	addli.d r[6:7], r[6:7], 1
	addli r9, r9, 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_285
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #     Child Loop BB0_94 Depth 2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_125 Depth 2
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_159 Depth 3
                                        #     Child Loop BB0_187 Depth 2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #     Child Loop BB0_218 Depth 2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #     Child Loop BB0_250 Depth 2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_253 Depth 3
	.loc	1 48 13                         # parallel-rne.mlir:48:13
	loadli.w r1,  32(r30)
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r2,  28(r30)
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	mod.s r3, r9, r12
	addli r23, r9, 0
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	storeli.w r23, -24(r30)                 # 4-byte Folded Spill
	.loc	1 48 13                         # parallel-rne.mlir:48:13
	div.s r1, r6, r1
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	slli r15, r3, 14
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r6, r1, r2
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r7, r6, r14
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	slli r1, r7, 3
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	sub.s r2, r18, r1
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	min.s r8, r2, r11
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	mod.s r2, r6, r8
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	add.s r1, r2, r1
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	zext_int2long r[2:3], r1
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	lui r1, 20
	add.s r9, r15, r1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	store.d r[2:3], -48(r30)                # 8-byte Folded Spill
	bneq r10, r18, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[21:22], 0(r30)
	sll.d r[1:2], r[2:3], r20
	xwait r16, 0
	add.ul r[1:2], r[21:22], r[1:2]
	blt.s r17, r23, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r12
	addli r3, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 7
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 9
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 11
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 12
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 14
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 15
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 16
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 17
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
	addli r19, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r19, 3
	dma_cfg r14, zero, r3, 4
	addli r3, zero, 256
	dma_cfg r3, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 20
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r19, zero, 64
	addli r21, zero, 256
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	lock zero, r17
	ori r3, r3, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r2, zero, 2
	add.s r3, r15, r3
	dma_cfg r3, r1, r19, 3
	addli r1, zero, 2
	addli r3, zero, 6
	addli r2, zero, 7
	dma_cfg r14, r19, r1, 4
	dma_cfg r21, r14, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r19, 3
	dma_cfg r14, zero, r1, 4
	dma_cfg r21, zero, r19, 5
	addli r19, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r1, 0
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r10, r1, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r1, 0
	xwait r12, 0
	lock zero, zero
	addli r19, zero, 2
	ds_cfg r1, zero, 0
	addli r1, zero, 64
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r1, zero, 13
	shuffle_batch r15, r9, r1, 1
	addli r1, zero, 1
	unlock zero
	xsignal r16, 0
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	xsignal r17, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r19, zero, 2
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r7, 7
	addli r7, zero, 6
	sub.s r1, r6, r1
	div.s r1, r1, r8
	storeli.w r1, -68(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r3
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	lui r3, 60
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	sll.d r[8:9], r[1:2], r18
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	add.s r6, r15, r3
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	store.d r[8:9], -64(r30)                # 8-byte Folded Spill
	bneq r10, r7, .LBB0_26
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[8:9]
	addli r8, zero, 7
	xwait r8, 0
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	blt.s r17, r3, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r12
	addli r3, zero, 2
	addli r9, zero, 9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r20, 10
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
	addli r9, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r9, 3
	dma_cfg r14, zero, r3, 4
	addli r3, zero, 256
	dma_cfg r3, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 60
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	addli r9, zero, 64
	addli r19, zero, 256
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	lock zero, r17
	ori r3, r3, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r2, zero, 2
	add.s r3, r15, r3
	dma_cfg r3, r1, r9, 3
	addli r1, zero, 2
	addli r2, zero, 2048
	addli r3, zero, 64
	dma_cfg r14, r9, r1, 4
	dma_cfg r19, r2, r9, 5
	addli r2, zero, 9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r3, 3
	dma_cfg r14, zero, r1, 4
	dma_cfg r19, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r7, 0
.LBB0_19:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 40
	.loc	1 115 7 is_stmt 1               # parallel-rne.mlir:115:7
	xfence
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r20, r15, r1
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[16:17], r1
	addli r1, zero, 63
	zext_int2long r[8:9], r1
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	beq r10, zero, .LBB0_30
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_61
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_92
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_123
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 230 7                         # parallel-rne.mlir:230:7
	loadli.w r1,  -16(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_154
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_185
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 286 7                         # parallel-rne.mlir:286:7
	beq r10, r7, .LBB0_216
	j .LBB0_247
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	beq r10, r16, .LBB0_283
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	beq r10, r17, .LBB0_282
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 2
	addli r2, zero, 7
	addli r8, zero, 64
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	bneq r10, r2, .LBB0_284
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 9
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r7, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 1
	ds_cfg r8, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r15, r6, r8, 2
	unlock zero
	xsignal r2, 0
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	xsignal r11, 0
	j .LBB0_19
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_32
.LBB0_31:                               # %middle.block97
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 125 9 is_stmt 1               # parallel-rne.mlir:125:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_60
.LBB0_32:                               # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_35 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 126 11 is_stmt 1              # parallel-rne.mlir:126:11
	bneq r20, r15, .LBB0_39
# %bb.33:                               # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_35
.LBB0_34:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 126 11                        # parallel-rne.mlir:126:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 141 13 is_stmt 1              # parallel-rne.mlir:141:13
	add.s r3, r20, r3
	.loc	1 126 11                        # parallel-rne.mlir:126:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	stores.w r6, 0(r3)
	.loc	1 126 11                        # parallel-rne.mlir:126:11
	beq r7, zero, .LBB0_31
.LBB0_35:                               # %scalar.ph91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 127 19                        # parallel-rne.mlir:127:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	and r10, r7, r13
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	setlt.u r6, r4, r10
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	bneq r6, zero, .LBB0_37
# %bb.36:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 138 19 is_stmt 1              # parallel-rne.mlir:138:19
	setlt.u r10, r28, r10
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r10, zero, .LBB0_34
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 138 19 is_stmt 1              # parallel-rne.mlir:138:19
	setlt.u r10, r28, r10
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r10, zero, .LBB0_34
.LBB0_38:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_34
.LBB0_39:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB0_32 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_41
.LBB0_40:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 126 11 is_stmt 1              # parallel-rne.mlir:126:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	add.s r3, r20, r21
	.loc	1 126 11                        # parallel-rne.mlir:126:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 126 11                        # parallel-rne.mlir:126:11
	bneq r2, zero, .LBB0_31
.LBB0_41:                               # %vector.body93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 127 19                        # parallel-rne.mlir:127:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	and r22, r2, r13
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	setlt.u r3, r4, r22
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	bneq r3, zero, .LBB0_43
# %bb.42:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_41 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_44:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	bneq r10, zero, .LBB0_46
# %bb.45:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_41 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_47:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	bneq r11, zero, .LBB0_49
# %bb.48:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_41 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_50:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 132 19                        # parallel-rne.mlir:132:19
	bneq r1, zero, .LBB0_52
# %bb.51:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 138 19 is_stmt 1              # parallel-rne.mlir:138:19
	setlt.u r26, r28, r26
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	beq r26, zero, .LBB0_53
	j .LBB0_54
.LBB0_52:                               #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 138 19 is_stmt 1              # parallel-rne.mlir:138:19
	setlt.u r26, r28, r26
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r26, zero, .LBB0_54
.LBB0_53:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_54:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	setlt.u r10, r28, r10
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	beq r10, zero, .LBB0_57
# %bb.55:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	beq r10, zero, .LBB0_58
.LBB0_56:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r3, zero, .LBB0_40
	j .LBB0_59
.LBB0_57:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r10, zero, .LBB0_56
.LBB0_58:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 139 19                        # parallel-rne.mlir:139:19
	bneq r3, zero, .LBB0_40
.LBB0_59:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_40
.LBB0_60:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	mfence { sm }
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_21
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_63
.LBB0_62:                               # %middle.block88
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 153 9 is_stmt 1               # parallel-rne.mlir:153:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_91
.LBB0_63:                               # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_66 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 154 11 is_stmt 1              # parallel-rne.mlir:154:11
	bneq r20, r15, .LBB0_70
# %bb.64:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_66
.LBB0_65:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 169 13 is_stmt 1              # parallel-rne.mlir:169:13
	add.s r3, r20, r3
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	stores.w r6, 0(r3)
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	beq r7, zero, .LBB0_62
.LBB0_66:                               # %scalar.ph82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	and r10, r7, r13
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	setlt.u r6, r4, r10
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_68
# %bb.67:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 166 19 is_stmt 1              # parallel-rne.mlir:166:19
	setlt.u r10, r28, r10
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r10, zero, .LBB0_65
	j .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 166 19 is_stmt 1              # parallel-rne.mlir:166:19
	setlt.u r10, r28, r10
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r10, zero, .LBB0_65
.LBB0_69:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_65
.LBB0_70:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_72
.LBB0_71:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 154 11 is_stmt 1              # parallel-rne.mlir:154:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	add.s r3, r20, r21
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	bneq r2, zero, .LBB0_62
.LBB0_72:                               # %vector.body84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	and r22, r2, r13
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	setlt.u r3, r4, r22
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r3, zero, .LBB0_74
# %bb.73:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_75:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r10, zero, .LBB0_77
# %bb.76:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_78:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r11, zero, .LBB0_80
# %bb.79:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_72 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_81:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r1, zero, .LBB0_87
# %bb.82:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 166 19 is_stmt 1              # parallel-rne.mlir:166:19
	setlt.u r26, r28, r26
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r26, zero, .LBB0_84
.LBB0_83:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_84:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r10, r28, r10
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	beq r10, zero, .LBB0_88
# %bb.85:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	beq r10, zero, .LBB0_89
.LBB0_86:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r3, zero, .LBB0_71
	j .LBB0_90
.LBB0_87:                               #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 166 19 is_stmt 1              # parallel-rne.mlir:166:19
	setlt.u r26, r28, r26
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	beq r26, zero, .LBB0_83
	j .LBB0_84
.LBB0_88:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r10, zero, .LBB0_86
.LBB0_89:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r3, zero, .LBB0_71
.LBB0_90:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_71
.LBB0_91:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	mfence { sm }
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_22
.LBB0_92:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_94
.LBB0_93:                               # %middle.block79
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 181 9 is_stmt 1               # parallel-rne.mlir:181:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_122
.LBB0_94:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 182 11 is_stmt 1              # parallel-rne.mlir:182:11
	bneq r20, r15, .LBB0_101
# %bb.95:                               # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_97
.LBB0_96:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 182 11                        # parallel-rne.mlir:182:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 197 13 is_stmt 1              # parallel-rne.mlir:197:13
	add.s r3, r20, r3
	.loc	1 182 11                        # parallel-rne.mlir:182:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 197 13                        # parallel-rne.mlir:197:13
	stores.w r6, 0(r3)
	.loc	1 182 11                        # parallel-rne.mlir:182:11
	beq r7, zero, .LBB0_93
.LBB0_97:                               # %scalar.ph73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	and r10, r7, r13
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	setlt.u r6, r4, r10
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_99
# %bb.98:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 194 19 is_stmt 1              # parallel-rne.mlir:194:19
	setlt.u r10, r28, r10
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	bneq r10, zero, .LBB0_96
	j .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 194 19 is_stmt 1              # parallel-rne.mlir:194:19
	setlt.u r10, r28, r10
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	bneq r10, zero, .LBB0_96
.LBB0_100:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_96
.LBB0_101:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_94 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_103
.LBB0_102:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 182 11 is_stmt 1              # parallel-rne.mlir:182:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 197 13                        # parallel-rne.mlir:197:13
	add.s r3, r20, r21
	.loc	1 182 11                        # parallel-rne.mlir:182:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 197 13                        # parallel-rne.mlir:197:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 182 11                        # parallel-rne.mlir:182:11
	bneq r2, zero, .LBB0_93
.LBB0_103:                              # %vector.body75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	and r22, r2, r13
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	setlt.u r3, r4, r22
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_105
# %bb.104:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_106:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r10, zero, .LBB0_108
# %bb.107:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_109:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r11, zero, .LBB0_111
# %bb.110:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_103 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_112:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r1, zero, .LBB0_118
# %bb.113:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 194 19 is_stmt 1              # parallel-rne.mlir:194:19
	setlt.u r26, r28, r26
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	bneq r26, zero, .LBB0_115
.LBB0_114:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_115:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r10, r28, r10
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	beq r10, zero, .LBB0_119
# %bb.116:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	beq r10, zero, .LBB0_120
.LBB0_117:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	bneq r3, zero, .LBB0_102
	j .LBB0_121
.LBB0_118:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 194 19 is_stmt 1              # parallel-rne.mlir:194:19
	setlt.u r26, r28, r26
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	beq r26, zero, .LBB0_114
	j .LBB0_115
.LBB0_119:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	bneq r10, zero, .LBB0_117
.LBB0_120:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	bneq r3, zero, .LBB0_102
.LBB0_121:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_102
.LBB0_122:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	mfence { sm }
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_23
.LBB0_123:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_125
.LBB0_124:                              # %middle.block70
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 209 9 is_stmt 1               # parallel-rne.mlir:209:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_153
.LBB0_125:                              # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_128 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 210 11 is_stmt 1              # parallel-rne.mlir:210:11
	bneq r20, r15, .LBB0_132
# %bb.126:                              # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_128
.LBB0_127:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 225 13 is_stmt 1              # parallel-rne.mlir:225:13
	add.s r3, r20, r3
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 225 13                        # parallel-rne.mlir:225:13
	stores.w r6, 0(r3)
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	beq r7, zero, .LBB0_124
.LBB0_128:                              # %scalar.ph64
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r10, r7, r13
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	setlt.u r6, r4, r10
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_130
# %bb.129:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	setlt.u r10, r28, r10
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r10, zero, .LBB0_127
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	setlt.u r10, r28, r10
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r10, zero, .LBB0_127
.LBB0_131:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_127
.LBB0_132:                              # %vector.body66.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_134
.LBB0_133:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 210 11 is_stmt 1              # parallel-rne.mlir:210:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 225 13                        # parallel-rne.mlir:225:13
	add.s r3, r20, r21
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 225 13                        # parallel-rne.mlir:225:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	bneq r2, zero, .LBB0_124
.LBB0_134:                              # %vector.body66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r22, r2, r13
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	setlt.u r3, r4, r22
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_136
# %bb.135:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_134 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_137:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r10, zero, .LBB0_139
# %bb.138:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_134 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_140:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r11, zero, .LBB0_142
# %bb.141:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_134 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_143:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r1, zero, .LBB0_149
# %bb.144:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	setlt.u r26, r28, r26
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r26, zero, .LBB0_146
.LBB0_145:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_146:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r10, r28, r10
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	beq r10, zero, .LBB0_150
# %bb.147:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	beq r10, zero, .LBB0_151
.LBB0_148:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r3, zero, .LBB0_133
	j .LBB0_152
.LBB0_149:                              #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	setlt.u r26, r28, r26
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	beq r26, zero, .LBB0_145
	j .LBB0_146
.LBB0_150:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r10, zero, .LBB0_148
.LBB0_151:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r3, zero, .LBB0_133
.LBB0_152:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_133
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	mfence { sm }
	.loc	1 230 7                         # parallel-rne.mlir:230:7
	loadli.w r1,  -16(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_24
.LBB0_154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 230 7                         # parallel-rne.mlir:230:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_156
.LBB0_155:                              # %middle.block61
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 237 9 is_stmt 1               # parallel-rne.mlir:237:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_184
.LBB0_156:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_159 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 238 11 is_stmt 1              # parallel-rne.mlir:238:11
	bneq r20, r15, .LBB0_163
# %bb.157:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_159
.LBB0_158:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 238 11                        # parallel-rne.mlir:238:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 253 13 is_stmt 1              # parallel-rne.mlir:253:13
	add.s r3, r20, r3
	.loc	1 238 11                        # parallel-rne.mlir:238:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 253 13                        # parallel-rne.mlir:253:13
	stores.w r6, 0(r3)
	.loc	1 238 11                        # parallel-rne.mlir:238:11
	beq r7, zero, .LBB0_155
.LBB0_159:                              # %scalar.ph55
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	and r10, r7, r13
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	setlt.u r6, r4, r10
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_161
# %bb.160:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 250 19 is_stmt 1              # parallel-rne.mlir:250:19
	setlt.u r10, r28, r10
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r10, zero, .LBB0_158
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 250 19 is_stmt 1              # parallel-rne.mlir:250:19
	setlt.u r10, r28, r10
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r10, zero, .LBB0_158
.LBB0_162:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_158
.LBB0_163:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_156 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_165
.LBB0_164:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 238 11 is_stmt 1              # parallel-rne.mlir:238:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 253 13                        # parallel-rne.mlir:253:13
	add.s r3, r20, r21
	.loc	1 238 11                        # parallel-rne.mlir:238:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 253 13                        # parallel-rne.mlir:253:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 238 11                        # parallel-rne.mlir:238:11
	bneq r2, zero, .LBB0_155
.LBB0_165:                              # %vector.body57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	and r22, r2, r13
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	setlt.u r3, r4, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_167
# %bb.166:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_168:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r10, zero, .LBB0_170
# %bb.169:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_165 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_171:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r11, zero, .LBB0_173
# %bb.172:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_165 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_174:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_180
# %bb.175:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 250 19 is_stmt 1              # parallel-rne.mlir:250:19
	setlt.u r26, r28, r26
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r26, zero, .LBB0_177
.LBB0_176:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_177:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	setlt.u r10, r28, r10
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	beq r10, zero, .LBB0_181
# %bb.178:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	beq r10, zero, .LBB0_182
.LBB0_179:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r3, zero, .LBB0_164
	j .LBB0_183
.LBB0_180:                              #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 250 19 is_stmt 1              # parallel-rne.mlir:250:19
	setlt.u r26, r28, r26
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	beq r26, zero, .LBB0_176
	j .LBB0_177
.LBB0_181:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r10, zero, .LBB0_179
.LBB0_182:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	bneq r3, zero, .LBB0_164
.LBB0_183:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_164
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 230 7                         # parallel-rne.mlir:230:7
	mfence { sm }
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_25
.LBB0_185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_187
.LBB0_186:                              # %middle.block52
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 265 9 is_stmt 1               # parallel-rne.mlir:265:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_215
.LBB0_187:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 266 11 is_stmt 1              # parallel-rne.mlir:266:11
	bneq r20, r15, .LBB0_194
# %bb.188:                              # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 281 13 is_stmt 1              # parallel-rne.mlir:281:13
	add.s r3, r20, r3
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 281 13                        # parallel-rne.mlir:281:13
	stores.w r6, 0(r3)
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	beq r7, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph46
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r10, r7, r13
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	setlt.u r6, r4, r10
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_192
# %bb.191:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 278 19 is_stmt 1              # parallel-rne.mlir:278:19
	setlt.u r10, r28, r10
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r10, zero, .LBB0_189
	j .LBB0_193
.LBB0_192:                              #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 278 19 is_stmt 1              # parallel-rne.mlir:278:19
	setlt.u r10, r28, r10
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r10, zero, .LBB0_189
.LBB0_193:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_189
.LBB0_194:                              # %vector.body48.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_196
.LBB0_195:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 266 11 is_stmt 1              # parallel-rne.mlir:266:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 281 13                        # parallel-rne.mlir:281:13
	add.s r3, r20, r21
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 281 13                        # parallel-rne.mlir:281:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 266 11                        # parallel-rne.mlir:266:11
	bneq r2, zero, .LBB0_186
.LBB0_196:                              # %vector.body48
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r22, r2, r13
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	setlt.u r3, r4, r22
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_198
# %bb.197:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_199:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r10, zero, .LBB0_201
# %bb.200:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_196 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_202:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r11, zero, .LBB0_204
# %bb.203:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_196 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_205:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r1, zero, .LBB0_211
# %bb.206:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 278 19 is_stmt 1              # parallel-rne.mlir:278:19
	setlt.u r26, r28, r26
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r26, zero, .LBB0_208
.LBB0_207:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_208:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r10, r28, r10
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	beq r10, zero, .LBB0_212
# %bb.209:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	beq r10, zero, .LBB0_213
.LBB0_210:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r3, zero, .LBB0_195
	j .LBB0_214
.LBB0_211:                              #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 278 19 is_stmt 1              # parallel-rne.mlir:278:19
	setlt.u r26, r28, r26
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	beq r26, zero, .LBB0_207
	j .LBB0_208
.LBB0_212:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r10, zero, .LBB0_210
.LBB0_213:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r3, zero, .LBB0_195
.LBB0_214:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_195
.LBB0_215:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 258 7                         # parallel-rne.mlir:258:7
	mfence { sm }
	.loc	1 286 7                         # parallel-rne.mlir:286:7
	bneq r10, r7, .LBB0_247
.LBB0_216:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 286 7                         # parallel-rne.mlir:286:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_218
.LBB0_217:                              # %middle.block43
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 293 9 is_stmt 1               # parallel-rne.mlir:293:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	addli r7, zero, 6
	beq r1, zero, .LBB0_246
.LBB0_218:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_221 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r7
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 294 11 is_stmt 1              # parallel-rne.mlir:294:11
	bneq r20, r15, .LBB0_225
# %bb.219:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_221
.LBB0_220:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	setlt.ul r7, r[1:2], r[8:9]
	.loc	1 309 13 is_stmt 1              # parallel-rne.mlir:309:13
	add.s r3, r20, r3
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 309 13                        # parallel-rne.mlir:309:13
	stores.w r6, 0(r3)
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	beq r7, zero, .LBB0_217
.LBB0_221:                              # %scalar.ph37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r15, r3
	loads.w r7, 0(r6)
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	and r10, r7, r13
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	setlt.u r6, r4, r10
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_223
# %bb.222:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 306 19 is_stmt 1              # parallel-rne.mlir:306:19
	setlt.u r10, r28, r10
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r10, zero, .LBB0_220
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r7, r6
	.loc	1 306 19 is_stmt 1              # parallel-rne.mlir:306:19
	setlt.u r10, r28, r10
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r10, zero, .LBB0_220
.LBB0_224:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r24
	and r6, r6, r5
	j .LBB0_220
.LBB0_225:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_218 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_227
.LBB0_226:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 294 11 is_stmt 1              # parallel-rne.mlir:294:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 309 13                        # parallel-rne.mlir:309:13
	add.s r3, r20, r21
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	seteq.d r2, r[6:7], r[16:17]
	.loc	1 309 13                        # parallel-rne.mlir:309:13
	stores.w r14, 12(r3)
	stores.w r23, 8(r3)
	stores.w r25, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	bneq r2, zero, .LBB0_217
.LBB0_227:                              # %vector.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.ul r[1:2], r[6:7], r[18:19]
	slli r21, r1, 2
	add.s r1, r15, r21
	loads.w r2, 12(r1)
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	and r22, r2, r13
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	setlt.u r3, r4, r22
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_229
# %bb.228:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_227 Depth=3
	lui r3, 1024
	or r14, r2, r3
.LBB0_230:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r3, 8(r1)
	and r12, r3, r13
	setlt.u r10, r4, r12
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r10, zero, .LBB0_232
# %bb.231:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r3, 0
	j .LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_227 Depth=3
	lui r10, 1024
	or r23, r3, r10
.LBB0_233:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r27, 4(r1)
	and r10, r27, r13
	setlt.u r11, r4, r10
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r11, zero, .LBB0_235
# %bb.234:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_227 Depth=3
	lui r11, 1024
	or r25, r27, r11
.LBB0_236:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r11, 0(r1)
	and r26, r11, r13
	setlt.u r1, r4, r26
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r1, zero, .LBB0_242
# %bb.237:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r11, 0
	.loc	1 306 19 is_stmt 1              # parallel-rne.mlir:306:19
	setlt.u r26, r28, r26
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r26, zero, .LBB0_239
.LBB0_238:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r24
	and r1, r1, r5
.LBB0_239:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	setlt.u r10, r28, r10
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	beq r10, zero, .LBB0_243
# %bb.240:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r28, r12
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	beq r10, zero, .LBB0_244
.LBB0_241:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r3, zero, .LBB0_226
	j .LBB0_245
.LBB0_242:                              #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r11, r1
	.loc	1 306 19 is_stmt 1              # parallel-rne.mlir:306:19
	setlt.u r26, r28, r26
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	beq r26, zero, .LBB0_238
	j .LBB0_239
.LBB0_243:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r24
	and r25, r10, r5
	setlt.u r10, r28, r12
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r10, zero, .LBB0_241
.LBB0_244:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r24
	and r23, r3, r5
	setlt.u r3, r28, r22
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	bneq r3, zero, .LBB0_226
.LBB0_245:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r24
	and r14, r2, r5
	j .LBB0_226
.LBB0_246:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 286 7                         # parallel-rne.mlir:286:7
	mfence { sm }
.LBB0_247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 314 7 is_stmt 1               # parallel-rne.mlir:314:7
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_279
# %bb.248:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 314 7                         # parallel-rne.mlir:314:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_250
.LBB0_249:                              # %middle.block
                                        #   in Loop: Header=BB0_250 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[2:3], -8(r30)                  # 8-byte Folded Reload
	.loc	1 321 9 is_stmt 1               # parallel-rne.mlir:321:9
	setlt.ul r1, r[2:3], r[8:9]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_278
.LBB0_250:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_253 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[2:3], r1
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	bneq r20, r15, .LBB0_257
# %bb.251:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_250 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_253
.LBB0_252:                              # %scalar.ph
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	setlt.ul r11, r[1:2], r[8:9]
	.loc	1 337 13 is_stmt 1              # parallel-rne.mlir:337:13
	add.s r3, r20, r3
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r10, 0(r3)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	beq r11, zero, .LBB0_249
.LBB0_253:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_250 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r10, r15, r3
	loads.w r11, 0(r10)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r12, r11, r13
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r10, r4, r12
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r10, zero, .LBB0_255
# %bb.254:                              # %scalar.ph
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r12, r28, r12
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r12, zero, .LBB0_252
	j .LBB0_256
.LBB0_255:                              #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r12, r28, r12
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r12, zero, .LBB0_252
.LBB0_256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r11, 16
	andi r10, r10, 1
	add.s r10, r11, r10
	add.s r10, r10, r24
	and r10, r10, r5
	j .LBB0_252
.LBB0_257:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_250 Depth=2
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	j .LBB0_259
.LBB0_258:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r14, r20, r14
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	seteq.d r2, r[10:11], r[16:17]
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r27, 12(r14)
	stores.w r1, 8(r14)
	stores.w r3, 4(r14)
	stores.w r12, 0(r14)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	bneq r2, zero, .LBB0_249
.LBB0_259:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_250 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[1:2], r[10:11], r[6:7]
	slli r14, r1, 2
	add.s r12, r15, r14
	loads.w r2, 12(r12)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r23, r2, r13
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r1, r4, r23
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r1, zero, .LBB0_261
# %bb.260:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r2, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_259 Depth=3
	lui r1, 1024
	or r27, r2, r1
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r25, 8(r12)
	and r21, r25, r13
	setlt.u r1, r4, r21
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r1, zero, .LBB0_264
# %bb.263:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_259 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_265:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r22, 4(r12)
	and r18, r22, r13
	setlt.u r3, r4, r18
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_267
# %bb.266:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r22, 0
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_259 Depth=3
	lui r3, 1024
	or r3, r22, r3
.LBB0_268:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r19, 0(r12)
	and r26, r19, r13
	setlt.u r12, r4, r26
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r12, zero, .LBB0_274
# %bb.269:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r26, r28, r26
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r26, zero, .LBB0_271
.LBB0_270:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r19, 16
	andi r12, r12, 1
	add.s r12, r19, r12
	add.s r12, r12, r24
	and r12, r12, r5
.LBB0_271:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	setlt.u r18, r28, r18
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r18, zero, .LBB0_275
# %bb.272:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r18, r28, r21
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r18, zero, .LBB0_276
.LBB0_273:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r18, r28, r23
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r18, zero, .LBB0_258
	j .LBB0_277
.LBB0_274:                              #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r19, r12
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r26, r28, r26
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r26, zero, .LBB0_270
	j .LBB0_271
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r24
	and r3, r3, r5
	setlt.u r18, r28, r21
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r18, zero, .LBB0_273
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r24
	and r1, r1, r5
	setlt.u r18, r28, r23
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r18, zero, .LBB0_258
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r24
	and r27, r2, r5
	j .LBB0_258
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 27 5 is_stmt 1                # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 314 7                         # parallel-rne.mlir:314:7
	mfence { sm }
.LBB0_279:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	addli r1, zero, 255
	addli r19, zero, 6
	csr_set csr5, r1
	sync_core
	.loc	1 343 7                         # parallel-rne.mlir:343:7
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.280:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 5
	addli r14, zero, 128
	addli r18, zero, 1
	addli r20, zero, 13
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	bneq r10, zero, .LBB0_6
# %bb.281:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	addli r2, zero, 960
	.loc	1 347 13 is_stmt 1              # parallel-rne.mlir:347:13
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	slli r1, r1, 6
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	zext_int2long r[6:7], r1
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	min.ul r[2:3], r[6:7], r[2:3]
	slli r1, r1, 6
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	sext_int2long r[8:9], r1
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	addli.d r[1:2], r[2:3], 64
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r3, zero, 17
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	max.ul r[1:2], r[1:2], r[6:7]
	.loc	1 347 13                        # parallel-rne.mlir:347:13
	addli.d r[10:11], r[10:11], 64
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	sub.sl r[1:2], r[1:2], r[6:7]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	max.sl r[6:7], r[10:11], r[8:9]
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	load.d r[10:11], -48(r30)               # 8-byte Folded Reload
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	min.ul r[1:2], r[1:2], r[16:17]
	.loc	1 349 13                        # parallel-rne.mlir:349:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	load.d r[8:9], 16(r30)
	sll.d r[10:11], r[10:11], r3
	addli r3, zero, 12
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	min.sl r[6:7], r[6:7], r[16:17]
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	add.ul r[8:9], r[8:9], r[10:11]
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	xwait r3, 0
	lui r3, 40
	lock zero, r12
	dma_cfg r18, r18, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r18, zero, 1
	add.ul r[8:9], r[8:9], r[10:11]
	addli r10, r1, 31
	addli r11, zero, 64
	slli r1, r1, 1
	addli r2, zero, 256
	add.s r3, r15, r3
	dma_cfg r9, zero, zero, 2
	andi r1, r1, 62
	dma_cfg r8, r3, r11, 3
	srli r3, r10, 5
	.loc	1 27 5                          # parallel-rne.mlir:27:5
	core_id r10
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	dma_cfg r11, r14, r3, 4
	addli r3, zero, 2048
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r20, 0
	j .LBB0_6
.LBB0_282:                              # %.thread34
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	addli r1, zero, 11
	addli r2, zero, 1
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	xwait r17, 0
	xwait r11, 0
	xwait r1, 0
	addli r1, zero, 64
	lock zero, r2
	mm_cfg r1, r1, r1, 0
	addli r1, zero, 1
	mm_cfg r17, r19, r2, 2
	mm r15, r15, r15, 8
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r2
	xsignal r12, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 112 7                         # parallel-rne.mlir:112:7
	j .LBB0_19
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
	xwait r20, 0
	j .LBB0_19
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -20(r30)                # 4-byte Folded Spill
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	j .LBB0_19
.LBB0_285:                              # %._crit_edge
	.loc	1 362 5                         # parallel-rne.mlir:362:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_287
# %bb.286:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 362 5                         # parallel-rne.mlir:362:5
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
.LBB0_287:
	.loc	1 363 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:363:5
	addli sp, sp, 80
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
	.long	144                             # 0x90
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-j8e7cxs6" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
