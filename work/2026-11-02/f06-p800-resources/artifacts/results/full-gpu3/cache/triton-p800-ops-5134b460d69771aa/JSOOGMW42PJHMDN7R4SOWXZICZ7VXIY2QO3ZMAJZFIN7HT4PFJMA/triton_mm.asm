	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-x46axhco" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -168
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r21
	addli r30, sp, 104
	xsignal_mode_cfg r1
	beq r21, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
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
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r4
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r4, 0
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_287
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[22:23], r1
	addli r20, zero, 2
	addli r24, zero, 5
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	lui r9, 522240
	lui r26, 1048560
	addli r13, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	addli r2, zero, 2047
	lui r1, 1048572
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 522239
	ori r19, r1, 4095
	lui r1, 7
	ori r16, r2, 4095
	ori r15, r1, 4095
	zext_int2long r[1:2], zero
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	addli r1, zero, 11
	addli r20, zero, 2
	xsignal r1, 0
	.loc	1 348 7                         # parallel-rne.mlir:348:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[22:23], -32(r30)               # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	addli.d r[22:23], r[22:23], 1
	loadli.w r13,  -20(r30)                 # 4-byte Folded Reload
	setlt.sl r1, r[22:23], r[1:2]
	addli r13, r13, 1
	beq r1, zero, .LBB0_287
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #     Child Loop BB0_162 Depth 2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_165 Depth 3
                                        #     Child Loop BB0_193 Depth 2
                                        #       Child Loop BB0_202 Depth 3
                                        #       Child Loop BB0_196 Depth 3
                                        #     Child Loop BB0_224 Depth 2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_227 Depth 3
                                        #     Child Loop BB0_255 Depth 2
                                        #       Child Loop BB0_264 Depth 3
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r1,  32(r30)
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	loadli.w r2,  28(r30)
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	addli r3, zero, 8
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r1, r22, r1
	.loc	1 53 13                         # parallel-rne.mlir:53:13
	div.s r5, r1, r2
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	addli r1, zero, 256
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r2, zero, 4
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	div.s r8, r5, r1
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	slli r1, r8, 3
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	sub.s r2, r2, r1
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	min.s r10, r2, r3
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	mod.s r2, r5, r10
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	add.s r1, r2, r1
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	setlt.u r3, r25, r1
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	zext_int2long r[6:7], r1
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	addli r1, zero, 12
	sll.d r[1:2], r[6:7], r1
	store.d r[6:7], -56(r30)                # 8-byte Folded Spill
	.loc	1 78 13                         # parallel-rne.mlir:78:13
	bneq r3, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	load.d r[11:12], -104(r30)              # 8-byte Folded Reload
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	load.d r[3:4], -96(r30)                 # 8-byte Folded Reload
	and.d r[11:12], r[1:2], r[3:4]
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	mod.s r6, r13, r20
	addli r3, zero, 96
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	storeli.w r13, -20(r30)                 # 4-byte Folded Spill
	zext_int2long r[17:18], r3
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	addli r3, zero, 8192
	store.d r[17:18], -8(r30)               # 8-byte Folded Spill
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	slli r4, r6, 14
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	or r7, r4, r3
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r21, r27, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.sl r[1:2], r[1:2], r[11:12]
	addli.d r[11:12], r[17:18], 0
	addli r17, zero, 7
	addli r18, r13, 0
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	load.d r[13:14], -56(r30)               # 8-byte Folded Reload
	addli r3, zero, 13
	xwait r25, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sra.d r[1:2], r[1:2], r17
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	sll.d r[13:14], r[13:14], r3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[11:12], r[1:2], r[11:12]
	sub.sl r[11:12], r[11:12], r[1:2]
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	load.d r[1:2], 0(r30)
	addli r11, r11, 32
	add.ul r[1:2], r[1:2], r[13:14]
	addli r13, zero, 13
	blt.s r27, r18, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r24
	addli r3, zero, 4
	addli r12, zero, 8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 11
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 12
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 14
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 15
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 16
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
	addli r12, zero, 64
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r12, 3
	addli r12, zero, 128
	dma_cfg r12, zero, r3, 4
	addli r3, zero, 32
	addli r12, zero, 512
	dma_cfg r12, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r24
.LBB0_13:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 4
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	addli r3, zero, 8256
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
	addli r14, zero, 64
	lock zero, r12
	or r3, r4, r3
	dma_cfg r27, r27, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r14, 3
	addli r2, zero, 128
	addli r1, zero, 256
	addli r3, zero, 512
	dma_cfg r2, r14, r12, 4
	dma_cfg r3, r1, r11, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r24
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r17, 10
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
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r14, 3
	dma_cfg r2, zero, r12, 4
	dma_cfg r3, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r24
	xsignal r20, 0
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	.loc	1 93 7 is_stmt 1                # parallel-rne.mlir:93:7
	j .LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r21, r20, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r20, 0
	xwait r24, 0
	lock zero, zero
	addli r1, zero, 128
	addli r2, zero, 32
	ds_cfg r20, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r4, r7, r1, 1
	addli r1, zero, 1
	unlock zero
	xsignal r25, 0
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -44(r30)                # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	slli r1, r8, 8
	.loc	1 103 13 is_stmt 1              # parallel-rne.mlir:103:13
	lui r3, 10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r13, r6, 12
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	store.d r[22:23], -32(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r5, r1
	.loc	1 103 13 is_stmt 1              # parallel-rne.mlir:103:13
	add.s r5, r4, r3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r1, r1, r10
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r24
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	sll.d r[6:7], r[1:2], r27
	store.d r[6:7], -72(r30)                # 8-byte Folded Spill
	bneq r21, r28, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[6:7]
	addli r6, zero, 7
	xwait r6, 0
	loadli.w r3,  -20(r30)                  # 4-byte Folded Reload
	blt.s r27, r3, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	lock zero, r24
	addli r3, zero, 4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
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
	addli r3, zero, 64
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r27, 4
	dma_cfg r3, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r24
.LBB0_20:                               # %.thread14
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r7, zero, 64
	ori r3, r3, 64
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	add.s r3, r4, r3
	addli r4, zero, 4
	lock zero, r4
	dma_cfg r27, r27, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r7, 3
	addli r2, zero, 128
	addli r1, zero, 2048
	dma_cfg r2, r7, r27, 4
	dma_cfg r2, r1, r2, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r24
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
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
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r7, 3
	dma_cfg r2, zero, r27, 4
	dma_cfg r2, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r24
	xsignal r28, 0
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 4
	beq r21, r1, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	bneq r21, r1, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 9
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r28, 0
	addli r3, zero, 32
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r4, r5, r2, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 1
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	addli r1, zero, 8
	xsignal r1, 0
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	j .LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 4
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	addli r2, zero, 11
	addli r5, zero, 1
	addli r3, zero, 32
	xwait r1, 0
	addli r1, zero, 8
	xwait r1, 0
	xwait r2, 0
	addli r2, zero, 128
	lock zero, r5
	mm_cfg r3, r2, r3, 0
	mm_cfg r1, r5, r5, 2
	addli r1, zero, 1
	mm r13, r4, r4, 8
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r5
	xsignal r24, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_28
.LBB0_25:                               # %.thread15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	bneq r21, r25, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r1, 0
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 13 is_stmt 1              # parallel-rne.mlir:114:13
	lui r1, 18
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	xfence
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	mfence { lm, sm, gm }
	.loc	1 114 13                        # parallel-rne.mlir:114:13
	add.s r20, r13, r1
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	addli r1, zero, 255
	csr_set csr5, r1
	addli r1, zero, 32
	sync_core
	zext_int2long r[4:5], r1
	addli r1, zero, 31
	zext_int2long r[22:23], r1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	beq r21, zero, .LBB0_36
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	beq r21, r27, .LBB0_67
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_98
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	beq r21, r25, .LBB0_129
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_160
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	beq r21, r24, .LBB0_191
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	beq r21, r28, .LBB0_222
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_253
	j .LBB0_284
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_38
.LBB0_37:                               # %middle.block97
                                        #   in Loop: Header=BB0_38 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r25, zero, 3
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r25
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_66
.LBB0_38:                               # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	bneq r20, r13, .LBB0_45
# %bb.39:                               # %scalar.ph91.preheader
                                        #   in Loop: Header=BB0_38 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_41
.LBB0_40:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	add.s r3, r20, r3
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r8, 0(r3)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r10, zero, .LBB0_37
.LBB0_41:                               # %scalar.ph91
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r11, r10, r19
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r8, r9, r11
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r8, zero, .LBB0_43
# %bb.42:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r11, r16, r11
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r11, zero, .LBB0_40
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r11, r16, r11
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r11, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph91
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_40
.LBB0_45:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB0_38 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_47
.LBB0_46:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	addli.d r[27:28], r[27:28], 4
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r3, r20, r8
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	seteq.d r2, r[27:28], r[4:5]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r14, 12(r3)
	stores.w r1, 8(r3)
	stores.w r12, 4(r3)
	stores.w r25, 0(r3)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	bneq r2, zero, .LBB0_37
.LBB0_47:                               # %vector.body93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r21, 12(r25)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r2, r21, r19
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r1, r9, r2
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r1, zero, .LBB0_49
# %bb.48:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r21, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	lui r1, 1024
	or r14, r21, r1
.LBB0_50:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r18, 8(r25)
	and r17, r18, r19
	setlt.u r1, r9, r17
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r1, zero, .LBB0_52
# %bb.51:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_47 Depth=3
	lui r1, 1024
	or r1, r18, r1
.LBB0_53:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r3, 4(r25)
	and r10, r3, r19
	setlt.u r11, r9, r10
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r11, zero, .LBB0_55
# %bb.54:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r3, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_47 Depth=3
	lui r11, 1024
	or r12, r3, r11
.LBB0_56:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r25, zero, .LBB0_58
# %bb.57:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r24, r16, r24
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r24, zero, .LBB0_59
	j .LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r24, r16, r24
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r24, zero, .LBB0_60
.LBB0_59:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_60:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r10, r16, r10
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r10, zero, .LBB0_63
# %bb.61:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r16, r17
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r3, zero, .LBB0_64
.LBB0_62:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r16, r2
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r2, zero, .LBB0_46
	j .LBB0_65
.LBB0_63:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r3, 16
	andi r10, r10, 1
	add.s r3, r3, r10
	add.s r3, r3, r15
	and r12, r3, r26
	setlt.u r3, r16, r17
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r3, zero, .LBB0_62
.LBB0_64:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r15
	and r1, r1, r26
	setlt.u r2, r16, r2
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r2, zero, .LBB0_46
.LBB0_65:                               # %vector.body93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r15
	and r14, r2, r26
	j .LBB0_46
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	mfence { sm }
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	bneq r21, r27, .LBB0_30
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_69
.LBB0_68:                               # %middle.block88
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 157 9 is_stmt 1               # parallel-rne.mlir:157:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_97
.LBB0_69:                               # %.preheader21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	bneq r20, r13, .LBB0_76
# %bb.70:                               # %scalar.ph82.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_72
.LBB0_71:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 173 13 is_stmt 1              # parallel-rne.mlir:173:13
	add.s r3, r20, r3
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r8, 0(r3)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	beq r10, zero, .LBB0_68
.LBB0_72:                               # %scalar.ph82
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r11, r10, r19
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r8, r9, r11
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r8, zero, .LBB0_74
# %bb.73:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r11, r16, r11
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r11, zero, .LBB0_71
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r11, r16, r11
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r11, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph82
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_71
.LBB0_76:                               # %vector.body84.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_78
.LBB0_77:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 158 11 is_stmt 1              # parallel-rne.mlir:158:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	add.s r2, r20, r8
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 173 13                        # parallel-rne.mlir:173:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 158 11                        # parallel-rne.mlir:158:11
	bneq r1, zero, .LBB0_68
.LBB0_78:                               # %vector.body84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	and r2, r14, r19
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	setlt.u r1, r9, r2
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r1, zero, .LBB0_80
# %bb.79:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_81:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r3, zero, .LBB0_83
# %bb.82:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_78 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_84:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r3, zero, .LBB0_86
# %bb.85:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_78 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_87:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	bneq r25, zero, .LBB0_93
# %bb.88:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r24, r16, r24
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r24, zero, .LBB0_90
.LBB0_89:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_90:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r10, r16, r10
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r10, zero, .LBB0_94
# %bb.91:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r10, zero, .LBB0_95
.LBB0_92:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_77
	j .LBB0_96
.LBB0_93:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 170 19 is_stmt 1              # parallel-rne.mlir:170:19
	setlt.u r24, r16, r24
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	beq r24, zero, .LBB0_89
	j .LBB0_90
.LBB0_94:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r10, zero, .LBB0_92
.LBB0_95:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r1, zero, .LBB0_77
.LBB0_96:                               # %vector.body84
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_77
.LBB0_97:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_31
.LBB0_98:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_100
.LBB0_99:                               # %middle.block79
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 11
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_128
.LBB0_100:                              # %.preheader20
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	bneq r20, r13, .LBB0_107
# %bb.101:                              # %scalar.ph73.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_103
.LBB0_102:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 201 13 is_stmt 1              # parallel-rne.mlir:201:13
	add.s r3, r20, r3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r8, 0(r3)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r10, zero, .LBB0_99
.LBB0_103:                              # %scalar.ph73
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r11, r10, r19
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r8, r9, r11
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r8, zero, .LBB0_105
# %bb.104:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r11, r16, r11
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r11, zero, .LBB0_102
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r11, r16, r11
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r11, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph73
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_102
.LBB0_107:                              # %vector.body75.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_109
.LBB0_108:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	add.s r2, r20, r8
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 201 13                        # parallel-rne.mlir:201:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r1, zero, .LBB0_99
.LBB0_109:                              # %vector.body75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	and r2, r14, r19
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	setlt.u r1, r9, r2
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r1, zero, .LBB0_111
# %bb.110:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_112:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r3, zero, .LBB0_114
# %bb.113:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_109 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_115:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r3, zero, .LBB0_117
# %bb.116:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_109 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_118:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	bneq r25, zero, .LBB0_124
# %bb.119:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r24, r16, r24
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r24, zero, .LBB0_121
.LBB0_120:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_121:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	setlt.u r10, r16, r10
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r10, zero, .LBB0_125
# %bb.122:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r10, zero, .LBB0_126
.LBB0_123:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r1, zero, .LBB0_108
	j .LBB0_127
.LBB0_124:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 198 19 is_stmt 1              # parallel-rne.mlir:198:19
	setlt.u r24, r16, r24
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	beq r24, zero, .LBB0_120
	j .LBB0_121
.LBB0_125:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r10, zero, .LBB0_123
.LBB0_126:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r1, zero, .LBB0_108
.LBB0_127:                              # %vector.body75
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_108
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { sm }
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	bneq r21, r25, .LBB0_32
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_131
.LBB0_130:                              # %middle.block70
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 213 9 is_stmt 1               # parallel-rne.mlir:213:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_159
.LBB0_131:                              # %.preheader19
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	bneq r20, r13, .LBB0_138
# %bb.132:                              # %scalar.ph64.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_134
.LBB0_133:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 229 13 is_stmt 1              # parallel-rne.mlir:229:13
	add.s r3, r20, r3
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r8, 0(r3)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	beq r10, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph64
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r11, r10, r19
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r8, r9, r11
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r8, zero, .LBB0_136
# %bb.135:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r11, r16, r11
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r11, zero, .LBB0_133
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r11, r16, r11
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r11, zero, .LBB0_133
.LBB0_137:                              # %scalar.ph64
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_133
.LBB0_138:                              # %vector.body66.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_140
.LBB0_139:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 214 11 is_stmt 1              # parallel-rne.mlir:214:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r2, r20, r8
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 214 11                        # parallel-rne.mlir:214:11
	bneq r1, zero, .LBB0_130
.LBB0_140:                              # %vector.body66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r2, r14, r19
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	setlt.u r1, r9, r2
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r1, zero, .LBB0_142
# %bb.141:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_140 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_143:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r3, zero, .LBB0_145
# %bb.144:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_140 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_146:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r3, zero, .LBB0_148
# %bb.147:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_140 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_149:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	bneq r25, zero, .LBB0_155
# %bb.150:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r24, r16, r24
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r24, zero, .LBB0_152
.LBB0_151:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_152:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	setlt.u r10, r16, r10
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r10, zero, .LBB0_156
# %bb.153:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r10, zero, .LBB0_157
.LBB0_154:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r1, zero, .LBB0_139
	j .LBB0_158
.LBB0_155:                              #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 226 19 is_stmt 1              # parallel-rne.mlir:226:19
	setlt.u r24, r16, r24
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r24, zero, .LBB0_151
	j .LBB0_152
.LBB0_156:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r10, zero, .LBB0_154
.LBB0_157:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r1, zero, .LBB0_139
.LBB0_158:                              # %vector.body66
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_139
.LBB0_159:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 206 7                         # parallel-rne.mlir:206:7
	mfence { sm }
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_33
.LBB0_160:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_162
.LBB0_161:                              # %middle.block61
                                        #   in Loop: Header=BB0_162 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 19
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 241 9 is_stmt 1               # parallel-rne.mlir:241:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_190
.LBB0_162:                              # %.preheader18
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_165 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 242 11 is_stmt 1              # parallel-rne.mlir:242:11
	bneq r20, r13, .LBB0_169
# %bb.163:                              # %scalar.ph55.preheader
                                        #   in Loop: Header=BB0_162 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_165
.LBB0_164:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 257 13 is_stmt 1              # parallel-rne.mlir:257:13
	add.s r3, r20, r3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 257 13                        # parallel-rne.mlir:257:13
	stores.w r8, 0(r3)
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	beq r10, zero, .LBB0_161
.LBB0_165:                              # %scalar.ph55
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r11, r10, r19
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	setlt.u r8, r9, r11
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_167
# %bb.166:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r11, r16, r11
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r11, zero, .LBB0_164
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r11, r16, r11
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r11, zero, .LBB0_164
.LBB0_168:                              # %scalar.ph55
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_164
.LBB0_169:                              # %vector.body57.preheader
                                        #   in Loop: Header=BB0_162 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_171
.LBB0_170:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 242 11 is_stmt 1              # parallel-rne.mlir:242:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 257 13                        # parallel-rne.mlir:257:13
	add.s r2, r20, r8
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 257 13                        # parallel-rne.mlir:257:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	bneq r1, zero, .LBB0_161
.LBB0_171:                              # %vector.body57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r2, r14, r19
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	setlt.u r1, r9, r2
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r1, zero, .LBB0_173
# %bb.172:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_174:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r3, zero, .LBB0_176
# %bb.175:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_171 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_177:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r3, zero, .LBB0_179
# %bb.178:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_171 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_180:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r25, zero, .LBB0_186
# %bb.181:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r24, r16, r24
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r24, zero, .LBB0_183
.LBB0_182:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_183:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	setlt.u r10, r16, r10
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	beq r10, zero, .LBB0_187
# %bb.184:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	beq r10, zero, .LBB0_188
.LBB0_185:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r1, zero, .LBB0_170
	j .LBB0_189
.LBB0_186:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 254 19 is_stmt 1              # parallel-rne.mlir:254:19
	setlt.u r24, r16, r24
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	beq r24, zero, .LBB0_182
	j .LBB0_183
.LBB0_187:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r10, zero, .LBB0_185
.LBB0_188:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r1, zero, .LBB0_170
.LBB0_189:                              # %vector.body57
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_170
.LBB0_190:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	mfence { sm }
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	bneq r21, r24, .LBB0_34
.LBB0_191:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_193
.LBB0_192:                              # %middle.block52
                                        #   in Loop: Header=BB0_193 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 269 9 is_stmt 1               # parallel-rne.mlir:269:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_221
.LBB0_193:                              # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_202 Depth 3
                                        #       Child Loop BB0_196 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 270 11 is_stmt 1              # parallel-rne.mlir:270:11
	bneq r20, r13, .LBB0_200
# %bb.194:                              # %scalar.ph46.preheader
                                        #   in Loop: Header=BB0_193 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_196
.LBB0_195:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 285 13 is_stmt 1              # parallel-rne.mlir:285:13
	add.s r3, r20, r3
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r8, 0(r3)
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	beq r10, zero, .LBB0_192
.LBB0_196:                              # %scalar.ph46
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_193 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r11, r10, r19
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	setlt.u r8, r9, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_198
# %bb.197:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r11, r16, r11
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r11, zero, .LBB0_195
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r11, r16, r11
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r11, zero, .LBB0_195
.LBB0_199:                              # %scalar.ph46
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_195
.LBB0_200:                              # %vector.body48.preheader
                                        #   in Loop: Header=BB0_193 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_202
.LBB0_201:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 270 11 is_stmt 1              # parallel-rne.mlir:270:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	add.s r2, r20, r8
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	bneq r1, zero, .LBB0_192
.LBB0_202:                              # %vector.body48
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_193 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r2, r14, r19
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	setlt.u r1, r9, r2
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_204
# %bb.203:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_205:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_207
# %bb.206:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_202 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_208:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_210
# %bb.209:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_202 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_211:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r25, zero, .LBB0_217
# %bb.212:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r24, r16, r24
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r24, zero, .LBB0_214
.LBB0_213:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_214:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	setlt.u r10, r16, r10
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r10, zero, .LBB0_218
# %bb.215:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r10, zero, .LBB0_219
.LBB0_216:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r1, zero, .LBB0_201
	j .LBB0_220
.LBB0_217:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r24, r16, r24
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r24, zero, .LBB0_213
	j .LBB0_214
.LBB0_218:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r10, zero, .LBB0_216
.LBB0_219:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r1, zero, .LBB0_201
.LBB0_220:                              # %vector.body48
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_201
.LBB0_221:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 262 7                         # parallel-rne.mlir:262:7
	mfence { sm }
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	bneq r21, r28, .LBB0_35
.LBB0_222:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_224
.LBB0_223:                              # %middle.block43
                                        #   in Loop: Header=BB0_224 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 27
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 297 9 is_stmt 1               # parallel-rne.mlir:297:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_252
.LBB0_224:                              # %.preheader16
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_227 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 298 11 is_stmt 1              # parallel-rne.mlir:298:11
	bneq r20, r13, .LBB0_231
# %bb.225:                              # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_224 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_227
.LBB0_226:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 313 13 is_stmt 1              # parallel-rne.mlir:313:13
	add.s r3, r20, r3
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r8, 0(r3)
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	beq r10, zero, .LBB0_223
.LBB0_227:                              # %scalar.ph37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r11, r10, r19
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	setlt.u r8, r9, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r8, zero, .LBB0_229
# %bb.228:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r11, r16, r11
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r11, zero, .LBB0_226
	j .LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r11, r16, r11
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r11, zero, .LBB0_226
.LBB0_230:                              # %scalar.ph37
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_226
.LBB0_231:                              # %vector.body39.preheader
                                        #   in Loop: Header=BB0_224 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_233
.LBB0_232:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 298 11 is_stmt 1              # parallel-rne.mlir:298:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	add.s r2, r20, r8
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 298 11                        # parallel-rne.mlir:298:11
	bneq r1, zero, .LBB0_223
.LBB0_233:                              # %vector.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r2, r14, r19
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	setlt.u r1, r9, r2
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_235
# %bb.234:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_233 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_236:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_238
# %bb.237:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_233 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_239:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_241
# %bb.240:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_233 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_242:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r25, zero, .LBB0_248
# %bb.243:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r24, r16, r24
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r24, zero, .LBB0_245
.LBB0_244:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_245:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	setlt.u r10, r16, r10
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r10, zero, .LBB0_249
# %bb.246:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r10, zero, .LBB0_250
.LBB0_247:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r1, zero, .LBB0_232
	j .LBB0_251
.LBB0_248:                              #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 310 19 is_stmt 1              # parallel-rne.mlir:310:19
	setlt.u r24, r16, r24
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r24, zero, .LBB0_244
	j .LBB0_245
.LBB0_249:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r10, zero, .LBB0_247
.LBB0_250:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r1, zero, .LBB0_232
.LBB0_251:                              # %vector.body39
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_232
.LBB0_252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	mfence { sm }
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	beq r1, zero, .LBB0_284
.LBB0_253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_255
.LBB0_254:                              # %middle.block
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[2:3], -16(r30)                 # 8-byte Folded Reload
	addli r24, zero, 5
	.loc	1 325 9 is_stmt 1               # parallel-rne.mlir:325:9
	setlt.ul r1, r[2:3], r[22:23]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_283
.LBB0_255:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_264 Depth 3
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[6:7], r[2:3], r24
	store.d r[2:3], -16(r30)                # 8-byte Folded Spill
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	bneq r20, r13, .LBB0_262
# %bb.256:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_258
.LBB0_257:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	setlt.ul r10, r[1:2], r[22:23]
	.loc	1 341 13 is_stmt 1              # parallel-rne.mlir:341:13
	add.s r3, r20, r3
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	stores.w r8, 0(r3)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	beq r10, zero, .LBB0_254
.LBB0_258:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[10:11], r[1:2], r[6:7]
	slli r3, r10, 2
	add.s r8, r13, r3
	loads.w r10, 0(r8)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r11, r10, r19
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	setlt.u r8, r9, r11
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r8, zero, .LBB0_260
# %bb.259:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r11, r16, r11
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r11, zero, .LBB0_257
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r10, r8
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r11, r16, r11
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r11, zero, .LBB0_257
.LBB0_261:                              # %scalar.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r15
	and r8, r8, r26
	j .LBB0_257
.LBB0_262:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_255 Depth=2
	zext_int2long r[27:28], zero
	j .LBB0_264
.LBB0_263:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	add.s r2, r20, r8
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	seteq.d r1, r[27:28], r[4:5]
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	stores.w r18, 8(r2)
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	stores.w r21, 12(r2)
	stores.w r3, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	bneq r1, zero, .LBB0_254
.LBB0_264:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[1:2], r[27:28], r[6:7]
	slli r8, r1, 2
	add.s r25, r13, r8
	loads.w r14, 12(r25)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r2, r14, r19
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	setlt.u r1, r9, r2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r1, zero, .LBB0_266
# %bb.265:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r14, 0
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	lui r1, 1024
	or r21, r14, r1
.LBB0_267:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	loads.w r1, 8(r25)
	and r17, r1, r19
	setlt.u r3, r9, r17
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r3, zero, .LBB0_269
# %bb.268:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_264 Depth=3
	lui r3, 1024
	or r18, r1, r3
.LBB0_270:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	loads.w r12, 4(r25)
	and r10, r12, r19
	setlt.u r3, r9, r10
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r3, zero, .LBB0_272
# %bb.271:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r12, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_264 Depth=3
	lui r3, 1024
	or r3, r12, r3
.LBB0_273:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	loads.w r11, 0(r25)
	and r24, r11, r19
	setlt.u r25, r9, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r25, zero, .LBB0_279
# %bb.274:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r24, r16, r24
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r24, zero, .LBB0_276
.LBB0_275:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r24, r11, 16
	andi r24, r24, 1
	add.s r11, r11, r24
	add.s r11, r11, r15
	and r25, r11, r26
.LBB0_276:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	setlt.u r10, r16, r10
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	beq r10, zero, .LBB0_280
# %bb.277:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r16, r17
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	beq r10, zero, .LBB0_281
.LBB0_278:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r2
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r1, zero, .LBB0_263
	j .LBB0_282
.LBB0_279:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r11, r25
	.loc	1 338 19 is_stmt 1              # parallel-rne.mlir:338:19
	setlt.u r24, r16, r24
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	beq r24, zero, .LBB0_275
	j .LBB0_276
.LBB0_280:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r15
	and r3, r3, r26
	setlt.u r10, r16, r17
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r10, zero, .LBB0_278
.LBB0_281:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r15
	and r18, r1, r26
	setlt.u r1, r16, r2
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r1, zero, .LBB0_263
.LBB0_282:                              # %vector.body
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r15
	and r21, r1, r26
	j .LBB0_263
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	addli r25, zero, 3
	addli r27, zero, 1
	addli r28, zero, 6
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	mfence { sm }
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	beq r21, r25, .LBB0_5
# %bb.285:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[22:23], -32(r30)               # 8-byte Folded Reload
	addli r20, zero, 2
	.loc	1 364 7 is_stmt 1               # parallel-rne.mlir:364:7
	bneq r21, zero, .LBB0_6
# %bb.286:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	addli r2, zero, 992
	zext_int2long r[2:3], r2
	slli r1, r1, 5
	.loc	1 354 13 is_stmt 1              # parallel-rne.mlir:354:13
	zext_int2long r[6:7], r1
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	min.ul r[2:3], r[6:7], r[2:3]
	slli r1, r1, 5
	.loc	1 349 13                        # parallel-rne.mlir:349:13
	sext_int2long r[10:11], r1
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	addli.d r[1:2], r[2:3], 32
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r3, zero, 16
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	min.sl r[17:18], r[10:11], r[17:18]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	max.ul r[1:2], r[1:2], r[6:7]
	.loc	1 351 13                        # parallel-rne.mlir:351:13
	addli.d r[17:18], r[17:18], 32
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	sub.sl r[1:2], r[1:2], r[6:7]
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	max.sl r[6:7], r[17:18], r[10:11]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	load.d r[17:18], -56(r30)               # 8-byte Folded Reload
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	min.ul r[1:2], r[1:2], r[4:5]
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	sub.sl r[6:7], r[6:7], r[10:11]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	load.d r[10:11], 16(r30)
	addli r8, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	sll.d r[17:18], r[17:18], r3
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	min.sl r[3:4], r[6:7], r[4:5]
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r7, zero, 12
	load.d r[5:6], -72(r30)                 # 8-byte Folded Reload
	andi r1, r1, 62
	add.ul r[10:11], r[10:11], r[17:18]
	xwait r7, 0
	lui r7, 18
	lock zero, r24
	add.ul r[5:6], r[10:11], r[5:6]
	dma_cfg r27, r27, zero, 0
	addli r10, zero, 64
	ori r7, r7, 64
	dma_cfg zero, r27, zero, 1
	dma_cfg r6, zero, zero, 2
	add.s r7, r13, r7
	dma_cfg r5, r7, r10, 3
	srli r5, r8, 5
	dma_cfg r10, r2, r5, 4
	addli r5, zero, 2048
	dma_cfg r5, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r24
	xsignal r1, 0
	j .LBB0_6
.LBB0_287:                              # %._crit_edge
	.loc	1 366 5                         # parallel-rne.mlir:366:5
	xsignal zero, 0
	bneq r21, zero, .LBB0_289
# %bb.288:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 366 5                         # parallel-rne.mlir:366:5
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
.LBB0_289:
	.loc	1 367 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:367:5
	addli sp, sp, 104
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
	.long	168                             # 0xa8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-x46axhco" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
