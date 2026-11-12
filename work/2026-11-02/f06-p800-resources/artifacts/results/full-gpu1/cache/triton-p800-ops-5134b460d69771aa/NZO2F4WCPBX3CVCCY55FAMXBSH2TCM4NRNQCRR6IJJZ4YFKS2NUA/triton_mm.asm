	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-nbj_anie" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r18
	addli r30, sp, 88
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_284
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r17, zero, 5
	addli r19, zero, 1
	lui r25, 1024
	lui r4, 522240
	lui r5, 1048560
	addli r8, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	ori r23, r1, 4095
	lui r1, 7
	lui r2, 522239
	ori r27, r1, 4095
	ori r28, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	addli r1, zero, 12
	xsignal r1, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -40(r30)                 # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	loadli.w r8,  -32(r30)                  # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r8, r8, 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_284
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_59 Depth 2
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #     Child Loop BB0_121 Depth 2
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_158 Depth 3
                                        #     Child Loop BB0_186 Depth 2
                                        #       Child Loop BB0_195 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #     Child Loop BB0_217 Depth 2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_220 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_258 Depth 3
                                        #       Child Loop BB0_252 Depth 3
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r1,  32(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r2,  28(r30)
	store.d r[6:7], -40(r30)                # 8-byte Folded Spill
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r3, zero, 8
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r1, r6, r1
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r7, r1, r2
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	addli r1, zero, 256
	div.s r11, r7, r1
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r1, r11, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r2, r19, r1
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r15, r2, r3
	addli r3, r8, 0
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r2, r7, r15
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	mod.s r14, r3, r17
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	storeli.w r3, -32(r30)                  # 4-byte Folded Spill
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r1, r2, r1
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	slli r6, r14, 14
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[9:10], r1
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	lui r1, 10
	add.s r16, r6, r1
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	store.d r[9:10], -56(r30)               # 8-byte Folded Spill
	bneq r18, r19, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 13
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	sll.d r[1:2], r[9:10], r8
	load.d r[9:10], 0(r30)
	add.ul r[1:2], r[9:10], r[1:2]
	addli r9, zero, 3
	addli r10, zero, 4
	xwait r9, 0
	blt.s r10, r3, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lock zero, r17
	addli r12, zero, 2
	addli r3, zero, 6
	addli r13, zero, 64
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
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
	addli r3, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r16, zero, r13, 3
	dma_cfg r3, zero, r12, 4
	addli r3, zero, 256
	dma_cfg r3, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_10:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r3, 10
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	lock zero, r10
	addli r12, zero, 64
	addli r13, zero, 128
	addli r20, zero, 0
	dma_cfg r19, r19, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r2, zero, 2
	add.s r3, r6, r3
	dma_cfg r3, r1, r12, 3
	addli r3, zero, 2
	addli r1, zero, 256
	addli r2, zero, 6
	dma_cfg r13, r12, r3, 4
	dma_cfg r1, r13, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 2
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r8, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r16, zero, r12, 3
	dma_cfg r13, zero, r3, 4
	dma_cfg r1, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r3, 0
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 2
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r18, r1, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r1, 0
	xwait r17, 0
	lock zero, zero
	addli r10, zero, 2
	addli r20, zero, 1
	ds_cfg r1, zero, 0
	addli r1, zero, 64
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r1, zero, 13
	shuffle_batch r6, r16, r1, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 2
	addli r20, zero, 0
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r11, 8
	slli r11, r14, 13
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	lui r3, 30
	addli r12, zero, 6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r7, r1
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	add.s r7, r11, r3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.s r1, r1, r15
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r17
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	sll.d r[8:9], r[1:2], r19
	store.d r[8:9], -72(r30)                # 8-byte Folded Spill
	bneq r18, r12, .LBB0_22
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], 8(r30)
	addli r13, zero, 7
	addli r6, zero, 13
	addli r14, zero, 31
	xwait r13, 0
	loadli.w r3,  -32(r30)                  # 4-byte Folded Reload
	add.ul r[1:2], r[1:2], r[8:9]
	addli r8, zero, 3
	addli r9, zero, 4
	blt.s r9, r3, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r17
	addli r3, zero, 8
	addli r15, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
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
	addli r3, zero, 64
	dma_cfg zero, zero, r14, 10
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r3, 3
	dma_cfg r15, zero, r19, 4
	dma_cfg r15, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_17:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 30
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	addli r15, zero, 64
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r9
	ori r3, r3, 64
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r2, zero, 2
	add.s r3, r11, r3
	dma_cfg r3, r1, r15, 3
	addli r2, zero, 128
	addli r1, zero, 2048
	dma_cfg r2, r15, r19, 4
	dma_cfg r2, r1, r15, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r6, 10
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
	dma_cfg zero, zero, r14, 10
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r15, 3
	dma_cfg r2, zero, r19, 4
	dma_cfg r2, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r12, 0
.LBB0_18:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 40
	.loc	1 118 7 is_stmt 1               # parallel-rne.mlir:118:7
	xfence
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r16, r11, r1
	.loc	1 120 7 is_stmt 1               # parallel-rne.mlir:120:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 31
	sync_core
	zext_int2long r[14:15], r1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	beq r18, zero, .LBB0_26
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	beq r18, r19, .LBB0_57
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	bneq r20, zero, .LBB0_88
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_119
	j .LBB0_150
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 13
	addli r2, zero, 3
	addli r3, zero, 4
	addli r8, zero, 7
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	beq r18, r2, .LBB0_282
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	beq r18, r3, .LBB0_281
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r18, r8, .LBB0_283
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r12, 0
	addli r2, zero, 32
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r10, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r11, r7, r1, 2
	addli r1, zero, 1
	unlock zero
	xsignal r8, 0
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	xsignal r1, 0
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	j .LBB0_18
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w r20, -24(r30)                 # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_28
.LBB0_27:                               # %middle.block97
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_56
.LBB0_28:                               # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r17
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	bneq r16, r11, .LBB0_35
# %bb.29:                               # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_31
.LBB0_30:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	add.s r3, r16, r3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r8, 0(r3)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r6, zero, .LBB0_27
.LBB0_31:                               # %scalar.ph91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r9, 0(r6)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r6, r9, r23
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r7, r4, r6
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r7, zero, .LBB0_33
# %bb.32:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r28, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_30
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r25
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r28, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_30
.LBB0_34:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r27
	and r8, r6, r5
	j .LBB0_30
.LBB0_35:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB0_28 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_37
.LBB0_36:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	addli r1, zero, 32
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	addli.d r[21:22], r[21:22], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r20, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	bneq r1, zero, .LBB0_27
.LBB0_37:                               # %vector.body93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[1:2], r[21:22], r[18:19]
	slli r9, r1, 2
	add.s r3, r11, r9
	loads.w r12, 12(r3)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r2, r12, r23
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r1, r4, r2
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r1, zero, .LBB0_39
# %bb.38:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_37 Depth=3
	or r10, r12, r25
.LBB0_40:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	loads.w r1, 8(r3)
	and r26, r1, r23
	setlt.u r6, r4, r26
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_42
# %bb.41:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_37 Depth=3
	or r13, r1, r25
.LBB0_43:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	loads.w r24, 4(r3)
	and r17, r24, r23
	setlt.u r6, r4, r17
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_45
# %bb.44:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r24, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_37 Depth=3
	or r20, r24, r25
.LBB0_46:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	loads.w r3, 0(r3)
	and r6, r3, r23
	setlt.u r7, r4, r6
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r7, zero, .LBB0_48
# %bb.47:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r3, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r28, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_49
	j .LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r3, r25
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r28, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_50
.LBB0_49:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r27
	and r8, r3, r5
.LBB0_50:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	setlt.u r3, r28, r17
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r3, zero, .LBB0_53
# %bb.51:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r26
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r3, zero, .LBB0_54
.LBB0_52:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_36
	j .LBB0_55
.LBB0_53:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r27
	and r20, r3, r5
	setlt.u r3, r28, r26
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_52
.LBB0_54:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r1, zero, .LBB0_36
.LBB0_55:                               # %vector.body93
                                        #   in Loop: Header=BB0_37 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_36
.LBB0_56:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	addli r19, zero, 1
	loadli.w r20,  -24(r30)                 # 4-byte Folded Reload
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	bneq r18, r19, .LBB0_20
.LBB0_57:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	storeli.w r20, -24(r30)                 # 4-byte Folded Spill
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_59
.LBB0_58:                               # %middle.block88
                                        #   in Loop: Header=BB0_59 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_87
.LBB0_59:                               # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_62 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[2:3], r17
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	bneq r16, r11, .LBB0_66
# %bb.60:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_62
.LBB0_61:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 174 13 is_stmt 1              # parallel-rne.mlir:174:13
	add.s r3, r16, r3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r8, 0(r3)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r6, zero, .LBB0_58
.LBB0_62:                               # %scalar.ph82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[6:7], r[1:2], r[18:19]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r9, 0(r6)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r6, r9, r23
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r7, r4, r6
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r7, zero, .LBB0_64
# %bb.63:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r6, r28, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_61
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r25
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r6, r28, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_61
.LBB0_65:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_62 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r27
	and r8, r6, r5
	j .LBB0_61
.LBB0_66:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_68
.LBB0_67:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	addli r1, zero, 32
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[21:22], r[21:22], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r24, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	bneq r1, zero, .LBB0_58
.LBB0_68:                               # %vector.body84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[1:2], r[21:22], r[18:19]
	slli r9, r1, 2
	add.s r3, r11, r9
	loads.w r12, 12(r3)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r2, r12, r23
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r1, r4, r2
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_70
# %bb.69:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r10, r12, r25
.LBB0_71:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	loads.w r1, 8(r3)
	and r26, r1, r23
	setlt.u r6, r4, r26
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r6, zero, .LBB0_73
# %bb.72:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r13, r1, r25
.LBB0_74:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	loads.w r20, 4(r3)
	and r17, r20, r23
	setlt.u r6, r4, r17
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r6, zero, .LBB0_76
# %bb.75:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r20, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r24, r20, r25
.LBB0_77:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	loads.w r3, 0(r3)
	and r6, r3, r23
	setlt.u r7, r4, r6
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r7, zero, .LBB0_83
# %bb.78:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r3, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r6, r28, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r6, zero, .LBB0_80
.LBB0_79:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r27
	and r8, r3, r5
.LBB0_80:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r3, r28, r17
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r3, zero, .LBB0_84
# %bb.81:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r26
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r3, zero, .LBB0_85
.LBB0_82:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r1, zero, .LBB0_67
	j .LBB0_86
.LBB0_83:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r3, r25
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r6, r28, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r6, zero, .LBB0_79
	j .LBB0_80
.LBB0_84:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r20, 16
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r27
	and r24, r3, r5
	setlt.u r3, r28, r26
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r3, zero, .LBB0_82
.LBB0_85:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r1, zero, .LBB0_67
.LBB0_86:                               # %vector.body84
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7 is_stmt 1               # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r18
	addli r19, zero, 1
	loadli.w r20,  -24(r30)                 # 4-byte Folded Reload
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	beq r20, zero, .LBB0_21
.LBB0_88:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_90
.LBB0_89:                               # %middle.block79
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_118
.LBB0_90:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[17:18], r[2:3], r17
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	bneq r16, r11, .LBB0_97
# %bb.91:                               # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_93
.LBB0_92:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 203 13 is_stmt 1              # parallel-rne.mlir:203:13
	add.s r3, r16, r3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r8, 0(r3)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r6, zero, .LBB0_89
.LBB0_93:                               # %scalar.ph73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[6:7], r[1:2], r[17:18]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r9, 0(r6)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r6, r9, r23
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r7, r4, r6
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r7, zero, .LBB0_95
# %bb.94:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r6, r28, r6
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_92
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r25
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r6, r28, r6
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_92
.LBB0_96:                               # %scalar.ph73
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r27
	and r8, r6, r5
	j .LBB0_92
.LBB0_97:                               # %vector.body75.preheader
                                        #   in Loop: Header=BB0_90 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_99
.LBB0_98:                               # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	addli r1, zero, 32
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[21:22], r[21:22], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r19, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	bneq r1, zero, .LBB0_89
.LBB0_99:                               # %vector.body75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[1:2], r[21:22], r[17:18]
	slli r9, r1, 2
	add.s r3, r11, r9
	loads.w r12, 12(r3)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r2, r12, r23
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r1, r4, r2
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r1, zero, .LBB0_101
# %bb.100:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_99 Depth=3
	or r10, r12, r25
.LBB0_102:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	loads.w r1, 8(r3)
	and r24, r1, r23
	setlt.u r6, r4, r24
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r6, zero, .LBB0_104
# %bb.103:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_99 Depth=3
	or r13, r1, r25
.LBB0_105:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	loads.w r20, 4(r3)
	and r26, r20, r23
	setlt.u r6, r4, r26
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r6, zero, .LBB0_107
# %bb.106:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_99 Depth=3
	or r19, r20, r25
.LBB0_108:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	loads.w r3, 0(r3)
	and r6, r3, r23
	setlt.u r7, r4, r6
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r7, zero, .LBB0_114
# %bb.109:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r3, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r6, r28, r6
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r6, zero, .LBB0_111
.LBB0_110:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r27
	and r8, r3, r5
.LBB0_111:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	setlt.u r3, r28, r26
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r3, zero, .LBB0_115
# %bb.112:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r24
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r3, zero, .LBB0_116
.LBB0_113:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r1, zero, .LBB0_98
	j .LBB0_117
.LBB0_114:                              #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r3, r25
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r6, r28, r6
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r6, zero, .LBB0_110
	j .LBB0_111
.LBB0_115:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r20, 16
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r27
	and r19, r3, r5
	setlt.u r3, r28, r24
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r3, zero, .LBB0_113
.LBB0_116:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r1, zero, .LBB0_98
.LBB0_117:                              # %vector.body75
                                        #   in Loop: Header=BB0_99 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_98
.LBB0_118:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r19, zero, 1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_150
.LBB0_119:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_121
.LBB0_120:                              # %middle.block70
                                        #   in Loop: Header=BB0_121 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[2:3], -8(r30)                  # 8-byte Folded Reload
	addli r17, zero, 5
	.loc	1 216 9 is_stmt 1               # parallel-rne.mlir:216:9
	setlt.ul r1, r[2:3], r[14:15]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_149
.LBB0_121:                              # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_124 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[17:18], r[2:3], r17
	store.d r[2:3], -8(r30)                 # 8-byte Folded Spill
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	bneq r16, r11, .LBB0_128
# %bb.122:                              # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_121 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_124
.LBB0_123:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 232 13 is_stmt 1              # parallel-rne.mlir:232:13
	add.s r3, r16, r3
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r8, 0(r3)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	beq r6, zero, .LBB0_120
.LBB0_124:                              # %scalar.ph64
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[6:7], r[1:2], r[17:18]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r9, 0(r6)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r6, r9, r23
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r7, r4, r6
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r7, zero, .LBB0_126
# %bb.125:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r6, r28, r6
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_123
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r9, r25
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r6, r28, r6
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_123
.LBB0_127:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r27
	and r8, r6, r5
	j .LBB0_123
.LBB0_128:                              # %vector.body66.preheader
                                        #   in Loop: Header=BB0_121 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_130
.LBB0_129:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	addli r1, zero, 32
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	addli.d r[21:22], r[21:22], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r19, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	bneq r1, zero, .LBB0_120
.LBB0_130:                              # %vector.body66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[1:2], r[21:22], r[17:18]
	slli r9, r1, 2
	add.s r3, r11, r9
	loads.w r12, 12(r3)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r2, r12, r23
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r1, r4, r2
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r1, zero, .LBB0_132
# %bb.131:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_130 Depth=3
	or r10, r12, r25
.LBB0_133:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	loads.w r1, 8(r3)
	and r24, r1, r23
	setlt.u r6, r4, r24
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r6, zero, .LBB0_135
# %bb.134:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_130 Depth=3
	or r13, r1, r25
.LBB0_136:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	loads.w r20, 4(r3)
	and r26, r20, r23
	setlt.u r6, r4, r26
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r6, zero, .LBB0_138
# %bb.137:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_130 Depth=3
	or r19, r20, r25
.LBB0_139:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	loads.w r3, 0(r3)
	and r6, r3, r23
	setlt.u r7, r4, r6
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r7, zero, .LBB0_145
# %bb.140:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r3, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r6, r28, r6
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r6, zero, .LBB0_142
.LBB0_141:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r27
	and r8, r3, r5
.LBB0_142:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	setlt.u r3, r28, r26
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r3, zero, .LBB0_146
# %bb.143:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r24
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r3, zero, .LBB0_147
.LBB0_144:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r1, zero, .LBB0_129
	j .LBB0_148
.LBB0_145:                              #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r3, r25
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r6, r28, r6
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r6, zero, .LBB0_141
	j .LBB0_142
.LBB0_146:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r20, 16
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r27
	and r19, r3, r5
	setlt.u r3, r28, r24
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r3, zero, .LBB0_144
.LBB0_147:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r1, zero, .LBB0_129
.LBB0_148:                              # %vector.body66
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_129
.LBB0_149:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r18
	addli r19, zero, 1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	mfence { sm }
.LBB0_150:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	zext_int2long r[1:2], r1
	.loc	1 237 7 is_stmt 1               # parallel-rne.mlir:237:7
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	loadli.w r1,  -16(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_153
# %bb.151:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	beq r18, r17, .LBB0_184
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r1, zero, 6
	beq r18, r1, .LBB0_215
	j .LBB0_246
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	xfence
	mfence { lm, sm, gm }
	load.d r[2:3], -8(r30)                  # 8-byte Folded Reload
	j .LBB0_155
.LBB0_154:                              # %middle.block61
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_183
.LBB0_155:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[2:3], r17
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	bneq r16, r11, .LBB0_162
# %bb.156:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_158
.LBB0_157:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setlt.ul r7, r[1:2], r[14:15]
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r3, r16, r3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r6, 0(r3)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	beq r7, zero, .LBB0_154
.LBB0_158:                              # %scalar.ph55
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[6:7], r[1:2], r[19:20]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r7, 0(r6)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r8, r7, r23
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r6, r4, r8
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r6, zero, .LBB0_160
# %bb.159:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r8, r28, r8
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r8, zero, .LBB0_157
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r7, r25
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r8, r28, r8
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r8, zero, .LBB0_157
.LBB0_161:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r27
	and r6, r6, r5
	j .LBB0_157
.LBB0_162:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_155 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_164
.LBB0_163:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	addli r1, zero, 32
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[21:22], r[21:22], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r3, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	bneq r1, zero, .LBB0_154
.LBB0_164:                              # %vector.body57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[1:2], r[21:22], r[19:20]
	slli r9, r1, 2
	add.s r8, r11, r9
	loads.w r12, 12(r8)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r2, r12, r23
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r1, r4, r2
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r1, zero, .LBB0_166
# %bb.165:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_164 Depth=3
	or r10, r12, r25
.LBB0_167:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r1, 8(r8)
	and r26, r1, r23
	setlt.u r3, r4, r26
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r3, zero, .LBB0_169
# %bb.168:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_164 Depth=3
	or r13, r1, r25
.LBB0_170:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r24, 4(r8)
	and r6, r24, r23
	setlt.u r3, r4, r6
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_164 Depth=3
	or r3, r24, r25
.LBB0_173:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r7, 0(r8)
	and r17, r7, r23
	setlt.u r8, r4, r17
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r8, zero, .LBB0_179
# %bb.174:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r7, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r17, r28, r17
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r17, zero, .LBB0_176
.LBB0_175:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r27
	and r8, r7, r5
.LBB0_176:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	setlt.u r6, r28, r6
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r6, zero, .LBB0_180
# %bb.177:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r28, r26
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r6, zero, .LBB0_181
.LBB0_178:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_163
	j .LBB0_182
.LBB0_179:                              #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r25
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r17, r28, r17
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r17, zero, .LBB0_175
	j .LBB0_176
.LBB0_180:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r27
	and r3, r3, r5
	setlt.u r6, r28, r26
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_178
.LBB0_181:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r1, 16
	andi r6, r6, 1
	add.s r1, r1, r6
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_163
.LBB0_182:                              # %vector.body57
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_163
.LBB0_183:                              #   in Loop: Header=BB0_7 Depth=1
	addli r19, zero, 1
	.loc	1 237 7 is_stmt 1               # parallel-rne.mlir:237:7
	mfence { sm }
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	bneq r18, r17, .LBB0_152
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_186
.LBB0_185:                              # %middle.block52
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 274 9 is_stmt 1               # parallel-rne.mlir:274:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_214
.LBB0_186:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_195 Depth 3
                                        #       Child Loop BB0_189 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[2:3], r17
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	bneq r16, r11, .LBB0_193
# %bb.187:                              # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_189
.LBB0_188:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	setlt.ul r7, r[1:2], r[14:15]
	.loc	1 290 13 is_stmt 1              # parallel-rne.mlir:290:13
	add.s r3, r16, r3
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r6, 0(r3)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	beq r7, zero, .LBB0_185
.LBB0_189:                              # %scalar.ph46
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[6:7], r[1:2], r[19:20]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r7, 0(r6)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r8, r7, r23
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r6, r4, r8
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r6, zero, .LBB0_191
# %bb.190:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r8, r28, r8
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r8, zero, .LBB0_188
	j .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r7, r25
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r8, r28, r8
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r8, zero, .LBB0_188
.LBB0_192:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r27
	and r6, r6, r5
	j .LBB0_188
.LBB0_193:                              # %vector.body48.preheader
                                        #   in Loop: Header=BB0_186 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_195
.LBB0_194:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli.d r[21:22], r[21:22], 4
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r24, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	bneq r1, zero, .LBB0_185
.LBB0_195:                              # %vector.body48
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[1:2], r[21:22], r[19:20]
	slli r9, r1, 2
	add.s r8, r11, r9
	loads.w r12, 12(r8)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r2, r12, r23
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r1, r4, r2
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_197
# %bb.196:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_195 Depth=3
	or r10, r12, r25
.LBB0_198:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	loads.w r1, 8(r8)
	and r26, r1, r23
	setlt.u r3, r4, r26
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r3, zero, .LBB0_200
# %bb.199:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_195 Depth=3
	or r13, r1, r25
.LBB0_201:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	loads.w r3, 4(r8)
	and r6, r3, r23
	setlt.u r7, r4, r6
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r7, zero, .LBB0_203
# %bb.202:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r3, 0
	j .LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_195 Depth=3
	or r24, r3, r25
.LBB0_204:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	loads.w r7, 0(r8)
	and r17, r7, r23
	setlt.u r8, r4, r17
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r8, zero, .LBB0_210
# %bb.205:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r7, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r17, r28, r17
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r17, zero, .LBB0_207
.LBB0_206:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r27
	and r8, r7, r5
.LBB0_207:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	setlt.u r6, r28, r6
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r6, zero, .LBB0_211
# %bb.208:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r26
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r3, zero, .LBB0_212
.LBB0_209:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r1, zero, .LBB0_194
	j .LBB0_213
.LBB0_210:                              #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r25
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r17, r28, r17
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r17, zero, .LBB0_206
	j .LBB0_207
.LBB0_211:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r27
	and r24, r3, r5
	setlt.u r3, r28, r26
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r3, zero, .LBB0_209
.LBB0_212:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r1, zero, .LBB0_194
.LBB0_213:                              # %vector.body48
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_194
.LBB0_214:                              #   in Loop: Header=BB0_7 Depth=1
	addli r19, zero, 1
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	mfence { sm }
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r1, zero, 6
	bneq r18, r1, .LBB0_246
.LBB0_215:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_217
.LBB0_216:                              # %middle.block43
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 303 9 is_stmt 1               # parallel-rne.mlir:303:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_245
.LBB0_217:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_220 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[2:3], r17
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	bneq r16, r11, .LBB0_224
# %bb.218:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_220
.LBB0_219:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	setlt.ul r7, r[1:2], r[14:15]
	.loc	1 319 13 is_stmt 1              # parallel-rne.mlir:319:13
	add.s r3, r16, r3
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r6, 0(r3)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	beq r7, zero, .LBB0_216
.LBB0_220:                              # %scalar.ph37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[6:7], r[1:2], r[19:20]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r7, 0(r6)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r8, r7, r23
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r6, r4, r8
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r6, zero, .LBB0_222
# %bb.221:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r8, r28, r8
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r8, zero, .LBB0_219
	j .LBB0_223
.LBB0_222:                              #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r7, r25
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r8, r28, r8
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r8, zero, .LBB0_219
.LBB0_223:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r27
	and r6, r6, r5
	j .LBB0_219
.LBB0_224:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	zext_int2long r[21:22], zero
	j .LBB0_226
.LBB0_225:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli.d r[21:22], r[21:22], 4
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	add.s r2, r16, r9
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r24, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	bneq r1, zero, .LBB0_216
.LBB0_226:                              # %vector.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[1:2], r[21:22], r[19:20]
	slli r9, r1, 2
	add.s r8, r11, r9
	loads.w r12, 12(r8)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r2, r12, r23
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r1, r4, r2
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r1, zero, .LBB0_228
# %bb.227:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	or r10, r12, r25
.LBB0_229:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r1, 8(r8)
	and r26, r1, r23
	setlt.u r3, r4, r26
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r3, zero, .LBB0_231
# %bb.230:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r1, 0
	j .LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_226 Depth=3
	or r13, r1, r25
.LBB0_232:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r3, 4(r8)
	and r6, r3, r23
	setlt.u r7, r4, r6
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r7, zero, .LBB0_234
# %bb.233:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r3, 0
	j .LBB0_235
.LBB0_234:                              #   in Loop: Header=BB0_226 Depth=3
	or r24, r3, r25
.LBB0_235:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r7, 0(r8)
	and r17, r7, r23
	setlt.u r8, r4, r17
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r8, zero, .LBB0_241
# %bb.236:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r7, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r17, r28, r17
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r17, zero, .LBB0_238
.LBB0_237:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r27
	and r8, r7, r5
.LBB0_238:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	setlt.u r6, r28, r6
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r6, zero, .LBB0_242
# %bb.239:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r3, zero, .LBB0_243
.LBB0_240:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r28, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_225
	j .LBB0_244
.LBB0_241:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r7, r25
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r17, r28, r17
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r17, zero, .LBB0_237
	j .LBB0_238
.LBB0_242:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r3, 16
	andi r6, r6, 1
	add.s r3, r3, r6
	add.s r3, r3, r27
	and r24, r3, r5
	setlt.u r3, r28, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_240
.LBB0_243:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r27
	and r13, r1, r5
	setlt.u r1, r28, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_225
.LBB0_244:                              # %vector.body39
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r27
	and r10, r1, r5
	j .LBB0_225
.LBB0_245:                              #   in Loop: Header=BB0_7 Depth=1
	addli r19, zero, 1
	.loc	1 295 7 is_stmt 1               # parallel-rne.mlir:295:7
	mfence { sm }
.LBB0_246:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 324 7 is_stmt 1               # parallel-rne.mlir:324:7
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_278
# %bb.247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_249
.LBB0_248:                              # %middle.block
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r17, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_277
.LBB0_249:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_258 Depth 3
                                        #       Child Loop BB0_252 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	bneq r16, r11, .LBB0_256
# %bb.250:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_252
.LBB0_251:                              # %scalar.ph
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	setlt.ul r7, r[1:2], r[14:15]
	.loc	1 348 13 is_stmt 1              # parallel-rne.mlir:348:13
	add.s r3, r16, r3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r6, 0(r3)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r7, zero, .LBB0_248
.LBB0_252:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[6:7], r[1:2], r[21:22]
	slli r3, r6, 2
	add.s r6, r11, r3
	loads.w r7, 0(r6)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r8, r7, r23
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r6, r4, r8
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_254
# %bb.253:                              # %scalar.ph
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r8, r28, r8
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_251
	j .LBB0_255
.LBB0_254:                              #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r7, r25
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r8, r28, r8
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_251
.LBB0_255:                              # %scalar.ph
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r27
	and r6, r6, r5
	j .LBB0_251
.LBB0_256:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_249 Depth=2
	load.d r[6:7], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_258
.LBB0_257:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	load.d r[12:13], -8(r30)                # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 4
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r10, r16, r26
	stores.w r2, 12(r10)
	stores.w r8, 8(r10)
	stores.w r1, 4(r10)
	stores.w r9, 0(r10)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	seteq.d r3, r[6:7], r[12:13]
	bneq r3, zero, .LBB0_248
.LBB0_258:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[1:2], r[6:7], r[21:22]
	slli r26, r1, 2
	add.s r9, r11, r26
	loads.w r12, 12(r9)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r13, r12, r23
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r1, r4, r13
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r1, zero, .LBB0_260
# %bb.259:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_258 Depth=3
	or r2, r12, r25
.LBB0_261:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	loads.w r24, 8(r9)
	and r10, r24, r23
	setlt.u r1, r4, r10
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r1, zero, .LBB0_263
# %bb.262:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r24, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_258 Depth=3
	or r8, r24, r25
.LBB0_264:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	loads.w r3, 4(r9)
	and r19, r3, r23
	setlt.u r1, r4, r19
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r1, zero, .LBB0_266
# %bb.265:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_258 Depth=3
	or r1, r3, r25
.LBB0_267:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	loads.w r20, 0(r9)
	and r17, r20, r23
	setlt.u r9, r4, r17
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r9, zero, .LBB0_273
# %bb.268:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r20, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r17, r28, r17
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r17, zero, .LBB0_270
.LBB0_269:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r27
	and r9, r9, r5
.LBB0_270:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	setlt.u r17, r28, r19
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r17, zero, .LBB0_274
# %bb.271:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r10
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r3, zero, .LBB0_275
.LBB0_272:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r28, r13
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_257
	j .LBB0_276
.LBB0_273:                              #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r20, r25
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r17, r28, r17
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r17, zero, .LBB0_269
	j .LBB0_270
.LBB0_274:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r27
	and r1, r1, r5
	setlt.u r3, r28, r10
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_272
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r27
	and r8, r3, r5
	setlt.u r3, r28, r13
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_257
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r27
	and r2, r2, r5
	j .LBB0_257
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	addli r19, zero, 1
	.loc	1 324 7 is_stmt 1               # parallel-rne.mlir:324:7
	mfence { sm }
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.279:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 13
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	bneq r18, zero, .LBB0_6
# %bb.280:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	addli r2, zero, 992
	.loc	1 358 13 is_stmt 1              # parallel-rne.mlir:358:13
	load.d r[12:13], -24(r30)               # 8-byte Folded Reload
	addli r20, zero, 64
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[15:16], 16(r30)
	zext_int2long r[2:3], r2
	slli r1, r1, 5
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	zext_int2long r[6:7], r1
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.ul r[2:3], r[6:7], r[2:3]
	slli r1, r1, 6
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	sext_int2long r[8:9], r1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	addli.d r[1:2], r[2:3], 32
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r3, zero, 17
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	min.sl r[12:13], r[8:9], r[12:13]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.ul r[1:2], r[1:2], r[6:7]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	addli.d r[12:13], r[12:13], 64
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sub.sl r[1:2], r[1:2], r[6:7]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	max.sl r[6:7], r[12:13], r[8:9]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	load.d r[12:13], -8(r30)                # 8-byte Folded Reload
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[8:9], -56(r30)                 # 8-byte Folded Reload
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[1:2], r[1:2], r[12:13]
	zext_int2long r[12:13], r20
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	sll.d r[8:9], r[8:9], r3
	addli r3, zero, 12
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[6:7], r[6:7], r[12:13]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[12:13], -72(r30)               # 8-byte Folded Reload
	addli r10, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	xwait r3, 0
	lui r3, 40
	add.ul r[8:9], r[15:16], r[8:9]
	lock zero, r17
	andi r1, r1, 62
	dma_cfg r19, r19, zero, 0
	ori r3, r3, 64
	add.ul r[8:9], r[8:9], r[12:13]
	dma_cfg zero, r19, zero, 1
	add.s r3, r11, r3
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r3, r20, 3
	srli r3, r10, 5
	dma_cfg r20, r2, r3, 4
	addli r3, zero, 2048
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r14, 0
	j .LBB0_6
.LBB0_281:                              # %.thread34
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 110 7                         # parallel-rne.mlir:110:7
	addli r1, zero, 8
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	xwait r3, 0
	addli r7, zero, 1
	addli r2, zero, 32
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 64
	lock zero, r7
	mm_cfg r2, r1, r1, 0
	addli r1, zero, 1
	mm_cfg r3, r7, r7, 2
	mm r11, r6, r11, 8
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r7
	xsignal r17, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	j .LBB0_18
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	storeli.w r2, -28(r30)                  # 4-byte Folded Spill
	xwait r1, 0
	j .LBB0_18
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -28(r30)                # 4-byte Folded Spill
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	storeli.w zero, -16(r30)                # 4-byte Folded Spill
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	j .LBB0_18
.LBB0_284:                              # %._crit_edge
	.loc	1 373 5                         # parallel-rne.mlir:373:5
	xsignal zero, 0
	bneq r18, zero, .LBB0_286
# %bb.285:
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
.LBB0_286:
	.loc	1 374 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:374:5
	addli sp, sp, 88
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
	.long	152                             # 0x98
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-nbj_anie" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
