	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-34xuwty4" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -136
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r12
	addli r30, sp, 72
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
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
	.loc	1 30 10 is_stmt 1               # parallel-rne.mlir:30:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
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
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	ble.s r2, r1, .LBB0_285
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r8, zero, 1
	addli r10, zero, 8
	addli r16, zero, 6
	addli r17, zero, 12
	addli r18, zero, 3
	lui r21, 522240
	lui r5, 1048560
	addli r9, zero, 0
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	store.d r[2:3], -72(r30)                # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 524287
	lui r2, 522239
	ori r13, r1, 4095
	lui r1, 7
	ori r28, r2, 4095
	ori r27, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -48(r30)                 # 8-byte Folded Reload
	.loc	1 47 5 is_stmt 1                # parallel-rne.mlir:47:5
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	loadli.w r9,  -40(r30)                  # 4-byte Folded Reload
	addli r8, zero, 1
	addli r10, zero, 8
	addli r17, zero, 12
	addli r18, zero, 3
	addli.d r[3:4], r[3:4], 1
	addli r9, r9, 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_285
.LBB0_8:                                # =>This Loop Header: Depth=1
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
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	loadli.w r1,  32(r30)
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	loadli.w r2,  28(r30)
	store.d r[3:4], -48(r30)                # 8-byte Folded Spill
	addli r22, r9, 0
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	storeli.w r22, -40(r30)                 # 4-byte Folded Spill
	.loc	1 49 13                         # parallel-rne.mlir:49:13
	div.s r1, r3, r1
	.loc	1 50 13                         # parallel-rne.mlir:50:13
	div.s r2, r1, r2
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	addli r1, zero, 32
	div.s r6, r2, r1
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	slli r1, r6, 3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	sub.s r3, r8, r1
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	min.s r7, r3, r10
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	addli r3, zero, 5
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	mod.s r4, r2, r7
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	mod.s r3, r9, r3
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	add.s r1, r4, r1
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	slli r9, r3, 13
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	zext_int2long r[23:24], r1
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	lui r1, 10
	add.s r11, r9, r1
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r12, r8, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[19:20], 0(r30)
	sll.d r[14:15], r[23:24], r17
	addli r4, zero, 4
	xwait r18, 0
	add.ul r[14:15], r[19:20], r[14:15]
	blt.s r4, r22, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 5
	addli r19, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r17, 10
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
	addli r4, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r19, 4
	addli r4, zero, 32
	addli r19, zero, 256
	dma_cfg r19, zero, r4, 5
	addli r4, zero, 4
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 10
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	addli r19, zero, 64
	addli r20, zero, 128
	addli r22, zero, 256
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	lock zero, r4
	addli r4, zero, 32
	ori r1, r1, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r15, zero, 2
	add.s r1, r9, r1
	dma_cfg r1, r14, r19, 3
	addli r15, zero, 2
	addli r14, zero, 4
	addli r1, zero, 5
	dma_cfg r20, r19, r15, 4
	dma_cfg r22, r20, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 7
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 9
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 11
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 14
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 15
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 16
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 17
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
	addli r14, zero, 2
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r19, 3
	dma_cfg r20, zero, r15, 4
	dma_cfg r22, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r15, 0
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 4
	addli r1, zero, 2
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r12, r1, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r1, 0
	addli r1, zero, 5
	addli r15, zero, 2
	addli r14, zero, 2
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r15, zero, 0
	addli r15, zero, 64
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 1
	shuffle_batch r9, r11, r15, 1
	unlock zero
	xsignal r18, 0
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	xsignal r4, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r14, zero, 2
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r1, r6, 5
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	slli r3, r3, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r2, r1
	div.s r1, r1, r7
	storeli.w r1, -64(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	sll.d r[6:7], r[1:2], r16
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	lui r1, 30
	add.s r2, r3, r1
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	sll.d r[25:26], r[6:7], r8
	bneq r12, r16, .LBB0_26
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], 8(r30)
	addli r14, zero, 7
	addli r4, zero, 4
	xwait r14, 0
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	add.ul r[6:7], r[6:7], r[25:26]
	blt.s r4, r1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 5
	addli r11, zero, 2
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	addli r15, zero, 9
	addli r19, zero, 128
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 11
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 14
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 15
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 16
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 17
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
	addli r15, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r15, 3
	dma_cfg r19, zero, r11, 4
	addli r11, zero, 256
	dma_cfg r11, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 30
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	addli r11, zero, 64
	addli r15, zero, 128
	addli r19, zero, 256
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	lock zero, r4
	ori r1, r1, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r7, zero, 2
	add.s r1, r3, r1
	addli r3, zero, 2
	dma_cfg r1, r6, r11, 3
	addli r1, zero, 512
	addli r6, zero, 9
	addli r7, zero, 64
	dma_cfg r15, r11, r3, 4
	dma_cfg r19, r1, r11, 5
	addli r1, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r1
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 25
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 26
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 27
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 28
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 29
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 30
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
	dma_cfg zero, zero, r6, 10
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r7, 3
	dma_cfg r15, zero, r3, 4
	dma_cfg r19, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r1
	xsignal r16, 0
.LBB0_19:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 20
	.loc	1 116 7 is_stmt 1               # parallel-rne.mlir:116:7
	xfence
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r11, r9, r1
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	store.d r[23:24], -24(r30)              # 8-byte Folded Spill
	store.d r[25:26], -32(r30)              # 8-byte Folded Spill
	zext_int2long r[17:18], r1
	addli r1, zero, 63
	zext_int2long r[2:3], r1
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	beq r12, zero, .LBB0_30
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 1
	beq r12, r1, .LBB0_61
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_92
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_123
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -16(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_154
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	beq r12, r1, .LBB0_185
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	beq r12, r16, .LBB0_216
	j .LBB0_247
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 4
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	beq r12, r18, .LBB0_283
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 64
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	beq r12, r4, .LBB0_282
# %bb.28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	bneq r12, r1, .LBB0_284
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 9
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r16, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r7, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r3, r2, r7, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	xsignal r10, 0
	j .LBB0_19
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 119 7 is_stmt 1               # parallel-rne.mlir:119:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_32
.LBB0_31:                               # %middle.block97
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 127 9 is_stmt 1               # parallel-rne.mlir:127:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_60
.LBB0_32:                               # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_35 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	bneq r11, r9, .LBB0_39
# %bb.33:                               # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_35
.LBB0_34:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 143 13 is_stmt 1              # parallel-rne.mlir:143:13
	add.s r1, r11, r1
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r4, 0(r1)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	beq r8, zero, .LBB0_31
.LBB0_35:                               # %scalar.ph91
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r10, r8, r13
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r4, r21, r10
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r4, zero, .LBB0_37
# %bb.36:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r10, r28, r10
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r10, zero, .LBB0_34
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r10, r28, r10
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r10, zero, .LBB0_34
.LBB0_38:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_34
.LBB0_39:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB0_32 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_41
.LBB0_40:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 128 11 is_stmt 1              # parallel-rne.mlir:128:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	add.s r8, r11, r22
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 128 11                        # parallel-rne.mlir:128:11
	bneq r1, zero, .LBB0_31
.LBB0_41:                               # %vector.body93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 129 19                        # parallel-rne.mlir:129:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	and r14, r1, r13
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	setlt.u r4, r21, r14
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r4, zero, .LBB0_43
# %bb.42:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_41 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_44:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r4, zero, .LBB0_46
# %bb.45:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_41 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_47:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r4, zero, .LBB0_49
# %bb.48:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_41 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_50:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 134 19                        # parallel-rne.mlir:134:19
	bneq r19, zero, .LBB0_52
# %bb.51:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r24, r28, r24
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r24, zero, .LBB0_53
	j .LBB0_54
.LBB0_52:                               #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 140 19 is_stmt 1              # parallel-rne.mlir:140:19
	setlt.u r24, r28, r24
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r24, zero, .LBB0_54
.LBB0_53:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_54:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	setlt.u r15, r28, r15
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r15, zero, .LBB0_57
# %bb.55:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	beq r12, zero, .LBB0_58
.LBB0_56:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r8, zero, .LBB0_40
	j .LBB0_59
.LBB0_57:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r12, zero, .LBB0_56
.LBB0_58:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	bneq r8, zero, .LBB0_40
.LBB0_59:                               # %vector.body93
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_40
.LBB0_60:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 119 7 is_stmt 1               # parallel-rne.mlir:119:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	addli r4, zero, 4
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 1
	bneq r12, r1, .LBB0_21
.LBB0_61:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[6:7], r4
	mfence { lm, sm, gm }
	j .LBB0_63
.LBB0_62:                               # %middle.block88
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 156 9 is_stmt 1               # parallel-rne.mlir:156:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_91
.LBB0_63:                               # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_66 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	bneq r11, r9, .LBB0_70
# %bb.64:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_66
.LBB0_65:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 172 13 is_stmt 1              # parallel-rne.mlir:172:13
	add.s r1, r11, r1
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r4, 0(r1)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r8, zero, .LBB0_62
.LBB0_66:                               # %scalar.ph82
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r10, r8, r13
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r4, r21, r10
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r4, zero, .LBB0_68
# %bb.67:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r10, r28, r10
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r10, zero, .LBB0_65
	j .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r10, r28, r10
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r10, zero, .LBB0_65
.LBB0_69:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_65
.LBB0_70:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_72
.LBB0_71:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	add.s r8, r11, r22
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	bneq r1, zero, .LBB0_62
.LBB0_72:                               # %vector.body84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r14, r1, r13
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r4, r21, r14
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r4, zero, .LBB0_74
# %bb.73:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_75:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r4, zero, .LBB0_77
# %bb.76:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_78:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r4, zero, .LBB0_80
# %bb.79:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_72 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_81:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r19, zero, .LBB0_87
# %bb.82:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r24, r28, r24
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r24, zero, .LBB0_84
.LBB0_83:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_84:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r15, r28, r15
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r15, zero, .LBB0_88
# %bb.85:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r12, zero, .LBB0_89
.LBB0_86:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r8, zero, .LBB0_71
	j .LBB0_90
.LBB0_87:                               #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r24, r28, r24
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r24, zero, .LBB0_83
	j .LBB0_84
.LBB0_88:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r12, zero, .LBB0_86
.LBB0_89:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r8, zero, .LBB0_71
.LBB0_90:                               # %vector.body84
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_71
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_22
.LBB0_92:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_94
.LBB0_93:                               # %middle.block79
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 11
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_122
.LBB0_94:                               # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	bneq r11, r9, .LBB0_101
# %bb.95:                               # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_97
.LBB0_96:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 201 13 is_stmt 1              # parallel-rne.mlir:201:13
	add.s r1, r11, r1
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r4, 0(r1)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r8, zero, .LBB0_93
.LBB0_97:                               # %scalar.ph73
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r10, r8, r13
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r4, r21, r10
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r4, zero, .LBB0_99
# %bb.98:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r10, r28, r10
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r10, zero, .LBB0_96
	j .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r10, r28, r10
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r10, zero, .LBB0_96
.LBB0_100:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_96
.LBB0_101:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_94 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_103
.LBB0_102:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	add.s r8, r11, r22
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r1, zero, .LBB0_93
.LBB0_103:                              # %vector.body75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r14, r1, r13
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r4, r21, r14
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r4, zero, .LBB0_105
# %bb.104:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_106:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r4, zero, .LBB0_108
# %bb.107:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_109:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r4, zero, .LBB0_111
# %bb.110:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_103 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_112:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r19, zero, .LBB0_118
# %bb.113:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r24, r28, r24
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r24, zero, .LBB0_115
.LBB0_114:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_115:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r15, r28, r15
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r15, zero, .LBB0_119
# %bb.116:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r12, zero, .LBB0_120
.LBB0_117:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r8, zero, .LBB0_102
	j .LBB0_121
.LBB0_118:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r24, r28, r24
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r24, zero, .LBB0_114
	j .LBB0_115
.LBB0_119:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r12, zero, .LBB0_117
.LBB0_120:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r8, zero, .LBB0_102
.LBB0_121:                              # %vector.body75
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_102
.LBB0_122:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 177 7 is_stmt 1               # parallel-rne.mlir:177:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_23
.LBB0_123:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_125
.LBB0_124:                              # %middle.block70
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 214 9 is_stmt 1               # parallel-rne.mlir:214:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_153
.LBB0_125:                              # %.preheader21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_128 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	bneq r11, r9, .LBB0_132
# %bb.126:                              # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_128
.LBB0_127:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 230 13 is_stmt 1              # parallel-rne.mlir:230:13
	add.s r1, r11, r1
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r4, 0(r1)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	beq r8, zero, .LBB0_124
.LBB0_128:                              # %scalar.ph64
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r10, r8, r13
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r4, r21, r10
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r4, zero, .LBB0_130
# %bb.129:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r10, r28, r10
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r10, zero, .LBB0_127
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r10, r28, r10
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r10, zero, .LBB0_127
.LBB0_131:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_127
.LBB0_132:                              # %vector.body66.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_134
.LBB0_133:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	add.s r8, r11, r22
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	bneq r1, zero, .LBB0_124
.LBB0_134:                              # %vector.body66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r14, r1, r13
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r4, r21, r14
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r4, zero, .LBB0_136
# %bb.135:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_134 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_137:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r4, zero, .LBB0_139
# %bb.138:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_134 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_140:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r4, zero, .LBB0_142
# %bb.141:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_134 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_143:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r19, zero, .LBB0_149
# %bb.144:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r24, r28, r24
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r24, zero, .LBB0_146
.LBB0_145:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_146:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r15, r28, r15
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r15, zero, .LBB0_150
# %bb.147:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r12, zero, .LBB0_151
.LBB0_148:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r8, zero, .LBB0_133
	j .LBB0_152
.LBB0_149:                              #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r24, r28, r24
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r24, zero, .LBB0_145
	j .LBB0_146
.LBB0_150:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r12, zero, .LBB0_148
.LBB0_151:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r8, zero, .LBB0_133
.LBB0_152:                              # %vector.body66
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_133
.LBB0_153:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 206 7 is_stmt 1               # parallel-rne.mlir:206:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	loadli.w r1,  -16(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_24
.LBB0_154:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_156
.LBB0_155:                              # %middle.block61
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 19
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 243 9 is_stmt 1               # parallel-rne.mlir:243:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_184
.LBB0_156:                              # %.preheader20
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_159 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	bneq r11, r9, .LBB0_163
# %bb.157:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_159
.LBB0_158:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 259 13 is_stmt 1              # parallel-rne.mlir:259:13
	add.s r1, r11, r1
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r4, 0(r1)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	beq r8, zero, .LBB0_155
.LBB0_159:                              # %scalar.ph55
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r10, r8, r13
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r4, r21, r10
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r4, zero, .LBB0_161
# %bb.160:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r10, r28, r10
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r10, zero, .LBB0_158
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r10, r28, r10
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r10, zero, .LBB0_158
.LBB0_162:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_158
.LBB0_163:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_156 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_165
.LBB0_164:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	add.s r8, r11, r22
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	bneq r1, zero, .LBB0_155
.LBB0_165:                              # %vector.body57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r14, r1, r13
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r4, r21, r14
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r4, zero, .LBB0_167
# %bb.166:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_168:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r4, zero, .LBB0_170
# %bb.169:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_165 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_171:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r4, zero, .LBB0_173
# %bb.172:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_165 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_174:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r19, zero, .LBB0_180
# %bb.175:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r24, r28, r24
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r24, zero, .LBB0_177
.LBB0_176:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_177:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	setlt.u r15, r28, r15
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r15, zero, .LBB0_181
# %bb.178:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r12, zero, .LBB0_182
.LBB0_179:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r8, zero, .LBB0_164
	j .LBB0_183
.LBB0_180:                              #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r24, r28, r24
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	beq r24, zero, .LBB0_176
	j .LBB0_177
.LBB0_181:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r12, zero, .LBB0_179
.LBB0_182:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	bneq r8, zero, .LBB0_164
.LBB0_183:                              # %vector.body57
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_164
.LBB0_184:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 235 7 is_stmt 1               # parallel-rne.mlir:235:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	addli r1, zero, 5
	bneq r12, r1, .LBB0_25
.LBB0_185:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_187
.LBB0_186:                              # %middle.block52
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 272 9 is_stmt 1               # parallel-rne.mlir:272:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_215
.LBB0_187:                              # %.preheader19
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 273 11 is_stmt 1              # parallel-rne.mlir:273:11
	bneq r11, r9, .LBB0_194
# %bb.188:                              # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 288 13 is_stmt 1              # parallel-rne.mlir:288:13
	add.s r1, r11, r1
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r4, 0(r1)
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	beq r8, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph46
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r10, r8, r13
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	setlt.u r4, r21, r10
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_192
# %bb.191:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r10, r28, r10
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r10, zero, .LBB0_189
	j .LBB0_193
.LBB0_192:                              #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r10, r28, r10
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r10, zero, .LBB0_189
.LBB0_193:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_189
.LBB0_194:                              # %vector.body48.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_196
.LBB0_195:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 273 11 is_stmt 1              # parallel-rne.mlir:273:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	add.s r8, r11, r22
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 288 13                        # parallel-rne.mlir:288:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 273 11                        # parallel-rne.mlir:273:11
	bneq r1, zero, .LBB0_186
.LBB0_196:                              # %vector.body48
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	and r14, r1, r13
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	setlt.u r4, r21, r14
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_198
# %bb.197:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_199:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_201
# %bb.200:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_196 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_202:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_204
# %bb.203:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_196 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_205:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r19, zero, .LBB0_211
# %bb.206:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r24, r28, r24
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r24, zero, .LBB0_208
.LBB0_207:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_208:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r15, r28, r15
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r15, zero, .LBB0_212
# %bb.209:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r12, zero, .LBB0_213
.LBB0_210:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, zero, .LBB0_195
	j .LBB0_214
.LBB0_211:                              #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 285 19 is_stmt 1              # parallel-rne.mlir:285:19
	setlt.u r24, r28, r24
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	beq r24, zero, .LBB0_207
	j .LBB0_208
.LBB0_212:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r12, zero, .LBB0_210
.LBB0_213:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	bneq r8, zero, .LBB0_195
.LBB0_214:                              # %vector.body48
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_195
.LBB0_215:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 264 7 is_stmt 1               # parallel-rne.mlir:264:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	bneq r12, r16, .LBB0_247
.LBB0_216:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 293 7                         # parallel-rne.mlir:293:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_218
.LBB0_217:                              # %middle.block43
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 27
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_246
.LBB0_218:                              # %.preheader18
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_221 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r16
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	bneq r11, r9, .LBB0_225
# %bb.219:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_221
.LBB0_220:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setlt.ul r8, r[19:20], r[2:3]
	.loc	1 317 13 is_stmt 1              # parallel-rne.mlir:317:13
	add.s r1, r11, r1
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r4, 0(r1)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	beq r8, zero, .LBB0_217
.LBB0_221:                              # %scalar.ph37
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[14:15], r[19:20], r[6:7]
	slli r1, r14, 2
	add.s r4, r9, r1
	loads.w r8, 0(r4)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r10, r8, r13
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r4, r21, r10
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r4, zero, .LBB0_223
# %bb.222:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r10, r28, r10
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r10, zero, .LBB0_220
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r10, r28, r10
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r10, zero, .LBB0_220
.LBB0_224:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_220
.LBB0_225:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_218 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_227
.LBB0_226:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	add.s r8, r11, r22
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	seteq.d r1, r[25:26], r[17:18]
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r10, 12(r8)
	stores.w r20, 8(r8)
	stores.w r4, 4(r8)
	stores.w r19, 0(r8)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	bneq r1, zero, .LBB0_217
.LBB0_227:                              # %vector.body39
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[14:15], r[25:26], r[6:7]
	slli r22, r14, 2
	add.s r19, r9, r22
	loads.w r1, 12(r19)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r14, r1, r13
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r4, r21, r14
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r4, zero, .LBB0_229
# %bb.228:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r1, 0
	j .LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_227 Depth=3
	lui r4, 1024
	or r10, r1, r4
.LBB0_230:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r8, 8(r19)
	and r12, r8, r13
	setlt.u r4, r21, r12
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r4, zero, .LBB0_232
# %bb.231:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_227 Depth=3
	lui r4, 1024
	or r20, r8, r4
.LBB0_233:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r23, 4(r19)
	and r15, r23, r13
	setlt.u r4, r21, r15
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r4, zero, .LBB0_235
# %bb.234:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_227 Depth=3
	lui r4, 1024
	or r4, r23, r4
.LBB0_236:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r16, 0(r19)
	and r24, r16, r13
	setlt.u r19, r21, r24
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r19, zero, .LBB0_242
# %bb.237:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r24, r28, r24
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r24, zero, .LBB0_239
.LBB0_238:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r16, 16
	andi r19, r19, 1
	add.s r16, r16, r19
	add.s r16, r16, r27
	and r19, r16, r5
.LBB0_239:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	setlt.u r15, r28, r15
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r15, zero, .LBB0_243
# %bb.240:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r28, r12
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r12, zero, .LBB0_244
.LBB0_241:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r28, r14
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r8, zero, .LBB0_226
	j .LBB0_245
.LBB0_242:                              #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r16, r19
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r24, r28, r24
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r24, zero, .LBB0_238
	j .LBB0_239
.LBB0_243:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r27
	and r4, r4, r5
	setlt.u r12, r28, r12
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r12, zero, .LBB0_241
.LBB0_244:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r8, 16
	andi r12, r12, 1
	add.s r8, r8, r12
	add.s r8, r8, r27
	and r20, r8, r5
	setlt.u r8, r28, r14
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r8, zero, .LBB0_226
.LBB0_245:                              # %vector.body39
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r1, 16
	andi r8, r8, 1
	add.s r1, r1, r8
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_226
.LBB0_246:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 293 7 is_stmt 1               # parallel-rne.mlir:293:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	beq r1, zero, .LBB0_279
# %bb.248:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_250
.LBB0_249:                              # %middle.block
                                        #   in Loop: Header=BB0_250 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[14:15], -8(r30)                # 8-byte Folded Reload
	addli r16, zero, 6
	zext_int2long r[6:7], r1
	.loc	1 330 9 is_stmt 1               # parallel-rne.mlir:330:9
	setlt.ul r1, r[14:15], r[6:7]
	addli.d r[6:7], r[14:15], 1
	beq r1, zero, .LBB0_278
.LBB0_250:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_253 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r1
	bneq r11, r9, .LBB0_257
# %bb.251:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_250 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_253
.LBB0_252:                              # %scalar.ph
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	setlt.ul r6, r[14:15], r[2:3]
	.loc	1 346 13 is_stmt 1              # parallel-rne.mlir:346:13
	add.s r1, r11, r1
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r4, 0(r1)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	beq r6, zero, .LBB0_249
.LBB0_253:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_250 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[6:7], r[14:15], r[25:26]
	slli r1, r6, 2
	add.s r4, r9, r1
	loads.w r6, 0(r4)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r7, r6, r13
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r4, r21, r7
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r4, zero, .LBB0_255
# %bb.254:                              # %scalar.ph
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r7, r28, r7
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r7, zero, .LBB0_252
	j .LBB0_256
.LBB0_255:                              #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r6, r4
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r7, r28, r7
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r7, zero, .LBB0_252
.LBB0_256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	add.s r4, r4, r27
	and r4, r4, r5
	j .LBB0_252
.LBB0_257:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_250 Depth=2
	load.d r[15:16], -16(r30)               # 8-byte Folded Reload
	j .LBB0_259
.LBB0_258:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	add.s r4, r11, r10
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	seteq.d r1, r[15:16], r[17:18]
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r8, 4(r4)
	stores.w r12, 0(r4)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	bneq r1, zero, .LBB0_249
.LBB0_259:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_250 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[6:7], r[15:16], r[25:26]
	slli r10, r6, 2
	add.s r12, r9, r10
	loads.w r1, 12(r12)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r20, r1, r13
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r4, r21, r20
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r4, zero, .LBB0_261
# %bb.260:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r1, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_259 Depth=3
	lui r4, 1024
	or r14, r1, r4
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r4, 8(r12)
	and r22, r4, r13
	setlt.u r6, r21, r22
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r6, zero, .LBB0_264
# %bb.263:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_259 Depth=3
	lui r6, 1024
	or r19, r4, r6
.LBB0_265:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r23, 4(r12)
	and r6, r23, r13
	setlt.u r7, r21, r6
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r7, zero, .LBB0_267
# %bb.266:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r23, 0
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_259 Depth=3
	lui r7, 1024
	or r8, r23, r7
.LBB0_268:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r7, 0(r12)
	and r24, r7, r13
	setlt.u r12, r21, r24
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r12, zero, .LBB0_274
# %bb.269:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r7, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r24, r28, r24
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r24, zero, .LBB0_271
.LBB0_270:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r7, 16
	andi r12, r12, 1
	add.s r7, r7, r12
	add.s r7, r7, r27
	and r12, r7, r5
.LBB0_271:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	setlt.u r6, r28, r6
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r6, zero, .LBB0_275
# %bb.272:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r28, r22
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r6, zero, .LBB0_276
.LBB0_273:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r28, r20
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r4, zero, .LBB0_258
	j .LBB0_277
.LBB0_274:                              #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r7, r12
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r24, r28, r24
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r24, zero, .LBB0_270
	j .LBB0_271
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r27
	and r8, r6, r5
	setlt.u r6, r28, r22
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r6, zero, .LBB0_273
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	add.s r4, r4, r27
	and r19, r4, r5
	setlt.u r4, r28, r20
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r4, zero, .LBB0_258
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r1, 16
	andi r4, r4, 1
	add.s r1, r1, r4
	add.s r1, r1, r27
	and r14, r1, r5
	j .LBB0_258
.LBB0_278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	mfence { sm }
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r12
	load.d r[23:24], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 352 7                         # parallel-rne.mlir:352:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.280:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	bneq r12, zero, .LBB0_7
# %bb.281:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -64(r30)                  # 4-byte Folded Reload
	addli r2, zero, 192
	addli r8, zero, 32
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	load.d r[14:15], 16(r30)
	zext_int2long r[2:3], r2
	slli r1, r1, 6
	.loc	1 359 13 is_stmt 1              # parallel-rne.mlir:359:13
	zext_int2long r[6:7], r1
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	min.ul r[2:3], r[6:7], r[2:3]
	slli r1, r1, 5
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	sext_int2long r[10:11], r1
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	addli.d r[1:2], r[2:3], 64
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	max.ul r[1:2], r[1:2], r[6:7]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	min.sl r[3:4], r[10:11], r[3:4]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sub.sl r[1:2], r[1:2], r[6:7]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r6, zero, 14
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	addli.d r[3:4], r[3:4], 32
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	sll.d r[6:7], r[23:24], r6
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.ul r[1:2], r[1:2], r[17:18]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	max.sl r[3:4], r[3:4], r[10:11]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	add.ul r[6:7], r[14:15], r[6:7]
	addli r14, zero, 64
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	sub.sl r[3:4], r[3:4], r[10:11]
	zext_int2long r[10:11], r8
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r8, zero, 12
	add.ul r[6:7], r[6:7], r[25:26]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[3:4], r[3:4], r[10:11]
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	xwait r8, 0
	lui r8, 20
	addli r10, zero, 5
	addli r11, zero, 1
	ori r8, r8, 64
	lock zero, r10
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	add.s r8, r9, r8
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r8, r14, 3
	srli r6, r9, 5
	andi r1, r1, 62
	dma_cfg r14, r2, r6, 4
	addli r2, zero, 256
	addli r6, zero, 512
	dma_cfg r6, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_6
.LBB0_282:                              # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r1, zero, 11
	addli r2, zero, 1
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	xwait r4, 0
	xwait r10, 0
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r2
	mm_cfg r7, r7, r1, 0
	addli r1, zero, 1
	mm_cfg r4, r14, r2, 2
	mm r9, r9, r3, 8
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	addli r1, zero, 5
	unlock r2
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 113 7                         # parallel-rne.mlir:113:7
	j .LBB0_19
.LBB0_283:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 114 7                         # parallel-rne.mlir:114:7
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_19
.LBB0_284:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	j .LBB0_19
.LBB0_285:                              # %._crit_edge
	.loc	1 371 5                         # parallel-rne.mlir:371:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_287
# %bb.286:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 371 5                         # parallel-rne.mlir:371:5
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
	.loc	1 372 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:372:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-34xuwty4" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
