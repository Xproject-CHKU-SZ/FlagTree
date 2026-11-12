	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-iquae8s7" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r19
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r19, zero, .LBB0_2
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
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
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_286
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[12:13], r1
	lui r1, 524287
	addli r17, zero, 4
	addli r4, zero, 16
	addli r18, zero, 1
	addli r21, zero, 7
	addli r22, zero, 3
	lui r20, 522240
	lui r5, 1048560
	addli r14, zero, 0
	store.d r[2:3], -80(r30)                # 8-byte Folded Spill
	ori r25, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r26, r1, 4095
	ori r1, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r2, zero, 11
	xsignal r2, 0
	addli r2, zero, 12
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	xsignal r2, 0
	loadli.w r14,  -28(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[12:13], -40(r30)               # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[2:3], -80(r30)                 # 8-byte Folded Reload
	addli r14, r14, 1
	addli r17, zero, 4
	addli r4, zero, 16
	addli r18, zero, 1
	addli.d r[12:13], r[12:13], 1
	setlt.sl r2, r[12:13], r[2:3]
	beq r2, zero, .LBB0_286
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #     Child Loop BB0_98 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_222 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_225 Depth 3
                                        #     Child Loop BB0_254 Depth 2
                                        #       Child Loop BB0_263 Depth 3
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  32(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r3,  28(r30)
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r6, zero, 8
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	mod.s r8, r14, r17
	addli r23, r14, 0
	addli r24, zero, 6
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	storeli.w r23, -28(r30)                 # 4-byte Folded Spill
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r2, r12, r2
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r7, r2, r3
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r9, r7, r4
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r2, r9, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r3, r18, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r11, r3, r6
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	slli r6, r8, 13
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r3, r7, r11
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r2, r3, r2
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[27:28], r2
	storeli.w r2, -52(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	lui r2, 16
	add.s r14, r6, r2
	store.d r[27:28], -24(r30)              # 8-byte Folded Spill
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r19, r18, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 12
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	load.d r[15:16], 0(r30)
	xwait r22, 0
	sll.d r[2:3], r[27:28], r10
	add.ul r[15:16], r[15:16], r[2:3]
	blt.s r22, r23, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 5
	addli r23, zero, 2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	addli r2, zero, 8
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r2, 3
	addli r2, zero, 128
	dma_cfg r2, zero, r23, 4
	addli r2, zero, 32
	addli r23, zero, 256
	dma_cfg r23, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 16
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
	addli r23, zero, 64
	addli r24, zero, 32
	addli r27, zero, 256
	addli r3, zero, 5
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	lock zero, r17
	ori r2, r2, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r16, zero, 2
	add.s r2, r6, r2
	dma_cfg r2, r15, r23, 3
	addli r16, zero, 2
	addli r15, zero, 128
	addli r2, zero, 6
	dma_cfg r15, r23, r16, 4
	dma_cfg r27, r15, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r4, 10
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
	dma_cfg r14, zero, r23, 3
	dma_cfg r15, zero, r16, 4
	addli r15, zero, 2
	dma_cfg r27, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r16, 0
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r19, r3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	xwait r3, 0
	addli r15, zero, 2
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r3, zero, 0
	addli r3, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r6, r14, r2, 1
	addli r2, zero, 1
	unlock zero
	xsignal r22, 0
	storeli.w r2, -48(r30)                  # 4-byte Folded Spill
	xsignal r17, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r15, zero, 2
	storeli.w zero, -48(r30)                # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli r2, r9, 4
	addli r14, zero, 6
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	store.d r[12:13], -40(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r7, r2
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	lui r7, 24
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r2, r11
	slli r11, r8, 14
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	slli r8, r8, 15
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	add.s r7, r8, r7
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[2:3], r2
	sll.d r[2:3], r[2:3], r21
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	sll.d r[2:3], r[2:3], r18
	store.d r[2:3], -64(r30)                # 8-byte Folded Spill
	bneq r19, r14, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[9:10], r[2:3], 0
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	load.d r[2:3], 8(r30)
	xwait r21, 0
	add.ul r[9:10], r[2:3], r[9:10]
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	addli r3, zero, 12
	blt.s r22, r2, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, zero, 5
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	addli r2, zero, 8
	addli r16, zero, 128
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r2, 3
	dma_cfg r16, zero, r17, 4
	addli r16, zero, 512
	dma_cfg r16, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
.LBB0_17:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 24
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	addli r6, zero, 5
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	lock zero, r17
	ori r2, r2, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r10, zero, 2
	add.s r2, r8, r2
	addli r8, zero, 64
	dma_cfg r2, r9, r8, 3
	addli r9, zero, 128
	addli r10, zero, 512
	addli r2, zero, 8
	dma_cfg r9, r8, r17, 4
	dma_cfg r10, r10, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r4, 10
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
	dma_cfg r7, zero, r8, 3
	dma_cfg r9, zero, r17, 4
	dma_cfg r10, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r14, 0
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	j .LBB0_27
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	beq r19, r17, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 2
	addli r4, zero, 64
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	bneq r19, r21, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 9
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r14, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 128
	ds_cfg r2, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 1
	shuffle_coa r8, r7, r4, 2
	unlock zero
	xsignal r21, 0
	storeli.w r2, -44(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	j .LBB0_27
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 8
	xwait r17, 0
	addli r7, zero, 0
	addli r4, zero, 1
	addli r3, zero, 11
	addli r9, zero, 64
	addli r10, zero, 32
	xwait r2, 0
	addli r2, zero, 1
	xwait r3, 0
.LBB0_22:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r7, 14
	slli r7, r7, 8
	lock zero, r2
	mm_cfg r9, r9, r10, 0
	or r3, r3, r8
	or r7, r7, r11
	mm_cfg r17, r17, r2, 2
	mm r7, r6, r3, 8
	andi r3, r4, 1
	addli r7, zero, 1
	addli r4, zero, 0
	unlock r2
	bneq r3, zero, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -16(r30)                  # 4-byte Folded Spill
	addli r2, zero, 10
	xsignal r2, 0
	j .LBB0_27
.LBB0_24:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	bneq r19, r22, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r2, 0
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
.LBB0_27:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 113 13 is_stmt 1              # parallel-rne.mlir:113:13
	lui r2, 56
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	xfence
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	mfence { lm, sm, gm }
	.loc	1 113 13                        # parallel-rne.mlir:113:13
	add.s r14, r11, r2
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	zext_int2long r[17:18], r2
	addli r2, zero, 127
	zext_int2long r[6:7], r2
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	beq r19, zero, .LBB0_34
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 1
	beq r19, r2, .LBB0_65
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_96
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	beq r19, r22, .LBB0_127
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_158
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	addli r2, zero, 5
	beq r19, r2, .LBB0_189
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r2, zero, 6
	beq r19, r2, .LBB0_220
	j .LBB0_251
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_36
.LBB0_35:                               # %middle.block98
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r22, zero, 3
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r22
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_64
.LBB0_36:                               # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_39 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_43
# %bb.37:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_39
.LBB0_38:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	add.s r2, r14, r2
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r4, 0(r2)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r3, zero, .LBB0_35
.LBB0_39:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r3, r8, r25
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r4, r20, r3
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r4, zero, .LBB0_41
# %bb.40:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r3, r1, r3
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_38
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r3, r1, r3
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_38
.LBB0_42:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_38
.LBB0_43:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_45
.LBB0_44:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r8, r14, r23
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	bneq r3, zero, .LBB0_35
.LBB0_45:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r19, r10, r25
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r2, r20, r19
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r2, zero, .LBB0_47
# %bb.46:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_48:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r3, zero, .LBB0_50
# %bb.49:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_45 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r3, zero, .LBB0_53
# %bb.52:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_45 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r21, zero, .LBB0_56
# %bb.55:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r3, r1, r3
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r3, zero, .LBB0_57
	j .LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r3, r1, r3
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_58
.LBB0_57:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_58:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r3, r1, r8
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r3, zero, .LBB0_61
# %bb.59:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r3, zero, .LBB0_62
.LBB0_60:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_44
	j .LBB0_63
.LBB0_61:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_60
.LBB0_62:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_44
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_44
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 1
	bneq r19, r2, .LBB0_29
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_67
.LBB0_66:                               # %middle.block89
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r21, zero, 7
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[2:3], r21
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_95
.LBB0_67:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_74
# %bb.68:                               # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_70
.LBB0_69:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 174 13 is_stmt 1              # parallel-rne.mlir:174:13
	add.s r2, r14, r2
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r4, 0(r2)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r3, zero, .LBB0_66
.LBB0_70:                               # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r3, r8, r25
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r4, r20, r3
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r4, zero, .LBB0_72
# %bb.71:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r3, r1, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_69
	j .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r3, r1, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_69
.LBB0_73:                               # %scalar.ph83
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_69
.LBB0_74:                               # %vector.body85.preheader
                                        #   in Loop: Header=BB0_67 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_76
.LBB0_75:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r8, r14, r23
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	bneq r3, zero, .LBB0_66
.LBB0_76:                               # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r19, r10, r25
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r2, r20, r19
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r2, zero, .LBB0_78
# %bb.77:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_79:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r3, zero, .LBB0_81
# %bb.80:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_76 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_82:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r3, zero, .LBB0_84
# %bb.83:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_76 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_85:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r21, zero, .LBB0_91
# %bb.86:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r3, r1, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_88
.LBB0_87:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_88:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r3, r1, r8
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r3, zero, .LBB0_92
# %bb.89:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r3, zero, .LBB0_93
.LBB0_90:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_75
	j .LBB0_94
.LBB0_91:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r3, r1, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r3, zero, .LBB0_87
	j .LBB0_88
.LBB0_92:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_90
.LBB0_93:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_75
.LBB0_94:                               # %vector.body85
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_75
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7 is_stmt 1               # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	loadli.w r2,  -48(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_30
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_98
.LBB0_97:                               # %middle.block80
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r2
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_126
.LBB0_98:                               # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_101 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_105
# %bb.99:                               # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_101
.LBB0_100:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 203 13 is_stmt 1              # parallel-rne.mlir:203:13
	add.s r2, r14, r2
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r4, 0(r2)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r3, zero, .LBB0_97
.LBB0_101:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r3, r8, r25
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r4, r20, r3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r4, zero, .LBB0_103
# %bb.102:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r3, r1, r3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_100
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r3, r1, r3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_100
.LBB0_104:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_100
.LBB0_105:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_107
.LBB0_106:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	add.s r8, r14, r23
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	bneq r3, zero, .LBB0_97
.LBB0_107:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r19, r10, r25
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r2, r20, r19
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_110:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r3, zero, .LBB0_112
# %bb.111:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_113:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r3, zero, .LBB0_115
# %bb.114:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_116:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r21, zero, .LBB0_122
# %bb.117:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r3, r1, r3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_119
.LBB0_118:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_119:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r3, r1, r8
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r3, zero, .LBB0_123
# %bb.120:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r3, zero, .LBB0_124
.LBB0_121:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_106
	j .LBB0_125
.LBB0_122:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r3, r1, r3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r3, zero, .LBB0_118
	j .LBB0_119
.LBB0_123:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_121
.LBB0_124:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_106
.LBB0_125:                              # %vector.body76
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_106
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	bneq r19, r22, .LBB0_31
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_129
.LBB0_128:                              # %middle.block71
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r2
	.loc	1 216 9 is_stmt 1               # parallel-rne.mlir:216:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_157
.LBB0_129:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_136
# %bb.130:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_132
.LBB0_131:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 232 13 is_stmt 1              # parallel-rne.mlir:232:13
	add.s r2, r14, r2
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r4, 0(r2)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	beq r3, zero, .LBB0_128
.LBB0_132:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r3, r8, r25
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r4, r20, r3
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r4, zero, .LBB0_134
# %bb.133:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r3, r1, r3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_131
	j .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r3, r1, r3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_131
.LBB0_135:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_131
.LBB0_136:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_138
.LBB0_137:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	add.s r8, r14, r23
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	bneq r3, zero, .LBB0_128
.LBB0_138:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r19, r10, r25
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r2, r20, r19
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r2, zero, .LBB0_140
# %bb.139:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_138 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_141:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r3, zero, .LBB0_143
# %bb.142:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_138 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_144:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r3, zero, .LBB0_146
# %bb.145:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_138 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_147:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r21, zero, .LBB0_153
# %bb.148:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r3, r1, r3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_150
.LBB0_149:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_150:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	setlt.u r3, r1, r8
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r3, zero, .LBB0_154
# %bb.151:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r3, zero, .LBB0_155
.LBB0_152:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_137
	j .LBB0_156
.LBB0_153:                              #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r3, r1, r3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r3, zero, .LBB0_149
	j .LBB0_150
.LBB0_154:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_152
.LBB0_155:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_137
.LBB0_156:                              # %vector.body67
                                        #   in Loop: Header=BB0_138 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_137
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 208 7 is_stmt 1               # parallel-rne.mlir:208:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_32
.LBB0_158:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_160
.LBB0_159:                              # %middle.block62
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r2
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_188
.LBB0_160:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_163 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_167
# %bb.161:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_163
.LBB0_162:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r2, r14, r2
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r4, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	beq r3, zero, .LBB0_159
.LBB0_163:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r3, r8, r25
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r4, r20, r3
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r4, zero, .LBB0_165
# %bb.164:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r3, r1, r3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r3, zero, .LBB0_162
	j .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r3, r1, r3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r3, zero, .LBB0_162
.LBB0_166:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_162
.LBB0_167:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_169
.LBB0_168:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r8, r14, r23
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	bneq r3, zero, .LBB0_159
.LBB0_169:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r19, r10, r25
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r2, r20, r19
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r2, zero, .LBB0_171
# %bb.170:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_172:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r3, zero, .LBB0_174
# %bb.173:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_175:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r3, zero, .LBB0_177
# %bb.176:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_178:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r21, zero, .LBB0_184
# %bb.179:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r3, r1, r3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r3, zero, .LBB0_181
.LBB0_180:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_181:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r3, r1, r8
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r3, zero, .LBB0_185
# %bb.182:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r3, zero, .LBB0_186
.LBB0_183:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r3, zero, .LBB0_168
	j .LBB0_187
.LBB0_184:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r3, r1, r3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r3, zero, .LBB0_180
	j .LBB0_181
.LBB0_185:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r3, zero, .LBB0_183
.LBB0_186:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r3, zero, .LBB0_168
.LBB0_187:                              # %vector.body58
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 237 7 is_stmt 1               # parallel-rne.mlir:237:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	addli r2, zero, 5
	bneq r19, r2, .LBB0_33
.LBB0_189:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_191
.LBB0_190:                              # %middle.block53
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r2
	.loc	1 274 9 is_stmt 1               # parallel-rne.mlir:274:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_219
.LBB0_191:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_198
# %bb.192:                              # %scalar.ph47.preheader
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_194
.LBB0_193:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 290 13 is_stmt 1              # parallel-rne.mlir:290:13
	add.s r2, r14, r2
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r4, 0(r2)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	beq r3, zero, .LBB0_190
.LBB0_194:                              # %scalar.ph47
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r3, r8, r25
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r4, r20, r3
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r3, r1, r3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_193
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r3, r1, r3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_193
.LBB0_197:                              # %scalar.ph47
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_193
.LBB0_198:                              # %vector.body49.preheader
                                        #   in Loop: Header=BB0_191 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_200
.LBB0_199:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	add.s r8, r14, r23
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	bneq r3, zero, .LBB0_190
.LBB0_200:                              # %vector.body49
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r19, r10, r25
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r2, r20, r19
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r2, zero, .LBB0_202
# %bb.201:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_200 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_203:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r3, zero, .LBB0_205
# %bb.204:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_200 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_206:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r3, zero, .LBB0_208
# %bb.207:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_200 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_209:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r21, zero, .LBB0_215
# %bb.210:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r3, r1, r3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_212
.LBB0_211:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_212:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	setlt.u r3, r1, r8
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r3, zero, .LBB0_216
# %bb.213:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r3, zero, .LBB0_217
.LBB0_214:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_199
	j .LBB0_218
.LBB0_215:                              #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r3, r1, r3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r3, zero, .LBB0_211
	j .LBB0_212
.LBB0_216:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_214
.LBB0_217:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_199
.LBB0_218:                              # %vector.body49
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_199
.LBB0_219:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r2, zero, 6
	bneq r19, r2, .LBB0_251
.LBB0_220:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_222
.LBB0_221:                              # %middle.block44
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 27
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r2
	.loc	1 303 9 is_stmt 1               # parallel-rne.mlir:303:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_250
.LBB0_222:                              # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_225 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[15:16], r[3:4], r21
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	bneq r14, r11, .LBB0_229
# %bb.223:                              # %scalar.ph38.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_225
.LBB0_224:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	setlt.ul r3, r[12:13], r[6:7]
	.loc	1 319 13 is_stmt 1              # parallel-rne.mlir:319:13
	add.s r2, r14, r2
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	addli.d r[12:13], r[12:13], 1
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r4, 0(r2)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	beq r3, zero, .LBB0_221
.LBB0_225:                              # %scalar.ph38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[2:3], r[12:13], r[15:16]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r8, 0(r3)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r3, r8, r25
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r4, r20, r3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r4, zero, .LBB0_227
# %bb.226:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r8, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r3, r1, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_224
	j .LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r8, r4
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r3, r1, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_224
.LBB0_228:                              # %scalar.ph38
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r8, 16
	andi r3, r3, 1
	add.s r3, r8, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_224
.LBB0_229:                              # %vector.body40.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_231
.LBB0_230:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	add.s r8, r14, r23
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	seteq.d r3, r[27:28], r[17:18]
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r2, 12(r8)
	stores.w r13, 8(r8)
	stores.w r4, 4(r8)
	stores.w r21, 0(r8)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	bneq r3, zero, .LBB0_221
.LBB0_231:                              # %vector.body40
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[2:3], r[27:28], r[15:16]
	slli r23, r2, 2
	add.s r21, r11, r23
	loads.w r10, 12(r21)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r19, r10, r25
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r2, r20, r19
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r2, zero, .LBB0_233
# %bb.232:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r10, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	lui r2, 1024
	or r2, r10, r2
.LBB0_234:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r22, 8(r21)
	and r12, r22, r25
	setlt.u r3, r20, r12
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r3, zero, .LBB0_236
# %bb.235:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	lui r3, 1024
	or r13, r22, r3
.LBB0_237:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r24, 4(r21)
	and r8, r24, r25
	setlt.u r3, r20, r8
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r3, zero, .LBB0_239
# %bb.238:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_231 Depth=3
	lui r3, 1024
	or r4, r24, r3
.LBB0_240:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r9, 0(r21)
	and r3, r9, r25
	setlt.u r21, r20, r3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r21, zero, .LBB0_246
# %bb.241:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r3, r1, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_243
.LBB0_242:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r26
	and r21, r3, r5
.LBB0_243:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	setlt.u r3, r1, r8
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r3, zero, .LBB0_247
# %bb.244:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r3, zero, .LBB0_248
.LBB0_245:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r19
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_230
	j .LBB0_249
.LBB0_246:                              #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r9, r21
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r3, r1, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r3, zero, .LBB0_242
	j .LBB0_243
.LBB0_247:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r4, r3, r5
	setlt.u r3, r1, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_245
.LBB0_248:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r26
	and r13, r3, r5
	setlt.u r3, r1, r19
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_230
.LBB0_249:                              # %vector.body40
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r26
	and r2, r2, r5
	j .LBB0_230
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 295 7 is_stmt 1               # parallel-rne.mlir:295:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[2:3], zero
	.loc	1 324 7 is_stmt 1               # parallel-rne.mlir:324:7
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_283
# %bb.252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_254
.LBB0_253:                              # %middle.block
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r21, zero, 7
	zext_int2long r[2:3], r2
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_282
.LBB0_254:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_263 Depth 3
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	sll.d r[27:28], r[3:4], r2
	bneq r14, r11, .LBB0_261
# %bb.255:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_257
.LBB0_256:                              # %scalar.ph
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 348 13 is_stmt 1              # parallel-rne.mlir:348:13
	add.s r2, r14, r2
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r4, 0(r2)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r3, zero, .LBB0_253
.LBB0_257:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[2:3], r[8:9], r[27:28]
	slli r2, r2, 2
	add.s r3, r11, r2
	loads.w r10, 0(r3)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r3, r10, r25
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r4, r20, r3
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r4, zero, .LBB0_259
# %bb.258:                              # %scalar.ph
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r3, r1, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_256
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r3, r1, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_256
.LBB0_260:                              # %scalar.ph
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r26
	and r4, r3, r5
	j .LBB0_256
.LBB0_261:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_254 Depth=2
	load.d r[8:9], -16(r30)                 # 8-byte Folded Reload
	j .LBB0_263
.LBB0_262:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r2, r14, r2
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	seteq.d r3, r[8:9], r[17:18]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r19, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	bneq r3, zero, .LBB0_253
.LBB0_263:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[2:3], r[8:9], r[27:28]
	slli r2, r2, 2
	add.s r12, r11, r2
	loads.w r10, 12(r12)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r13, r10, r25
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r3, r20, r13
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r3, zero, .LBB0_265
# %bb.264:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	lui r3, 1024
	or r19, r10, r3
.LBB0_266:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r4, 8(r12)
	and r23, r4, r25
	setlt.u r3, r20, r23
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r3, zero, .LBB0_268
# %bb.267:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r4, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_263 Depth=3
	lui r3, 1024
	or r21, r4, r3
.LBB0_269:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r24, 4(r12)
	and r15, r24, r25
	setlt.u r3, r20, r15
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r3, zero, .LBB0_271
# %bb.270:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_263 Depth=3
	lui r3, 1024
	or r22, r24, r3
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	loads.w r16, 0(r12)
	and r3, r16, r25
	setlt.u r12, r20, r3
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r12, zero, .LBB0_278
# %bb.273:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r16, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r3, r1, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_275
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r16, 16
	andi r3, r3, 1
	add.s r3, r16, r3
	add.s r3, r3, r26
	and r12, r3, r5
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	setlt.u r3, r1, r15
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r3, zero, .LBB0_279
# %bb.276:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r23
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r3, zero, .LBB0_280
.LBB0_277:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r1, r13
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_262
	j .LBB0_281
.LBB0_278:                              #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r16, r12
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r3, r1, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r3, zero, .LBB0_274
	j .LBB0_275
.LBB0_279:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r26
	and r22, r3, r5
	setlt.u r3, r1, r23
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_277
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r26
	and r21, r3, r5
	setlt.u r3, r1, r13
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_262
.LBB0_281:                              # %vector.body
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r26
	and r19, r3, r5
	j .LBB0_262
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 324 7 is_stmt 1               # parallel-rne.mlir:324:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r19
	addli r22, zero, 3
	load.d r[27:28], -24(r30)               # 8-byte Folded Reload
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	beq r19, r22, .LBB0_5
# %bb.284:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r14,  -28(r30)                 # 4-byte Folded Reload
	addli r4, zero, 12
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	bneq r19, zero, .LBB0_6
# %bb.285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -52(r30)                  # 4-byte Folded Reload
	.loc	1 358 13 is_stmt 1              # parallel-rne.mlir:358:13
	load.d r[12:13], -16(r30)               # 8-byte Folded Reload
	addli r10, zero, 32
	slli r2, r2, 7
	slli r3, r3, 5
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	zext_int2long r[6:7], r2
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	sext_int2long r[2:3], r3
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.ul r[8:9], r[6:7], r[17:18]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	min.sl r[12:13], r[2:3], r[12:13]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	addli.d r[8:9], r[8:9], 128
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	addli.d r[12:13], r[12:13], 32
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.ul r[8:9], r[8:9], r[6:7]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	max.sl r[12:13], r[12:13], r[2:3]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r8, zero, 14
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sub.sl r[2:3], r[12:13], r[2:3]
	zext_int2long r[12:13], r10
	addli r10, r14, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[14:15], 16(r30)
	sll.d r[8:9], r[27:28], r8
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[2:3], r[2:3], r[12:13]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[12:13], -64(r30)               # 8-byte Folded Reload
	xwait r4, 0
	lui r4, 56
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[6:7], r[6:7], r[17:18]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	add.ul r[8:9], r[14:15], r[8:9]
	ori r4, r4, 64
	addli r14, r10, 0
	addli r10, r6, 31
	slli r6, r6, 1
	addli r7, zero, 128
	add.ul r[8:9], r[8:9], r[12:13]
	addli r13, zero, 5
	addli r12, zero, 1
	add.s r4, r11, r4
	addli r11, zero, 64
	lock zero, r13
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r4, r11, 3
	srli r4, r10, 5
	dma_cfg r11, r7, r4, 4
	andi r4, r6, 62
	addli r6, zero, 512
	dma_cfg r6, r6, r2, 5
	addli r2, zero, 13
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r2, 0
	j .LBB0_6
.LBB0_286:                              # %._crit_edge
	.loc	1 373 5                         # parallel-rne.mlir:373:5
	xsignal zero, 0
	bneq r19, zero, .LBB0_288
# %bb.287:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 373 5                         # parallel-rne.mlir:373:5
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
	.loc	1 374 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:374:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-iquae8s7" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
