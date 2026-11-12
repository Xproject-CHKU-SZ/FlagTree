	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-co3zvm3g" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -296
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r15
	addli r30, sp, 232
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
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
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 5
	addli r2, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -60(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -144(r30)
	ori r5, r5, 4095
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r5, -56(r30)
	storeli.w r5, -52(r30)
	storeli.w r5, -48(r30)
	storeli.w r5, -44(r30)
	storeli.w r5, -40(r30)
	storeli.w r5, -36(r30)
	storeli.w r5, -32(r30)
	storeli.w r5, -28(r30)
	storeli.w r5, -24(r30)
	storeli.w r5, -20(r30)
	storeli.w r5, -16(r30)
	storeli.w r5, -12(r30)
	storeli.w r5, -8(r30)
	storeli.w r5, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r5, -140(r30)
	storeli.w r5, -136(r30)
	storeli.w r5, -132(r30)
	storeli.w r5, -128(r30)
	storeli.w r5, -124(r30)
	storeli.w r5, -120(r30)
	storeli.w r5, -116(r30)
	storeli.w r5, -112(r30)
	storeli.w r5, -108(r30)
	storeli.w r5, -104(r30)
	storeli.w r5, -100(r30)
	storeli.w r5, -96(r30)
	storeli.w r5, -92(r30)
	storeli.w r5, -88(r30)
	storeli.w r5, -84(r30)
	storeli.w r5, -80(r30)
	storeli.w r5, -76(r30)
	storeli.w r5, -72(r30)
	storeli.w r5, -68(r30)
	storeli.w r5, -64(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
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
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	sext_int2long r[4:5], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r10, zero, 0
	addli r22, zero, 0
	addli r18, zero, 64
	addli r19, zero, 8
	addli r21, zero, 4
	lui r20, 522240
	addli r24, zero, 23
	storeli.w zero, -192(r30)               # 4-byte Folded Spill
	ori r17, r1, 4095
	lui r1, 127
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	store.d r[2:3], -232(r30)               # 8-byte Folded Spill
	lui r16, 1048448
	ori r1, r1, 4095
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 522239
	ori r6, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -200(r30)                # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[1:2], -232(r30)                # 8-byte Folded Reload
	addli r24, zero, 23
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_171 Depth 2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r11, r10, 0
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	bneq r15, r21, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  32(r30)
	store.d r[4:5], -200(r30)               # 8-byte Folded Spill
	loadli.w r9,  -192(r30)                 # 4-byte Folded Reload
	addli r1, zero, 0
	addli r2, zero, 0
	div.s r3, r4, r3
	loadli.w r4,  28(r30)
	mod.s r7, r9, r21
	addli r9, r9, 1
	storeli.w r9, -192(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r4
	div.s r4, r3, r18
	slli r5, r4, 3
	slli r4, r4, 6
	sub.s r8, r19, r5
	sub.s r4, r3, r4
	min.s r8, r8, r19
	mod.s r3, r3, r8
	div.s r4, r4, r8
	slli r8, r7, 15
	addli r7, zero, 16
	add.s r3, r5, r3
	lui r5, 32
	zext_int2long r[9:10], r4
	slli r4, r4, 7
	zext_int2long r[18:19], r3
	add.s r14, r8, r5
	slli r3, r3, 6
	addli r5, zero, 7
	storeli.w r4, -224(r30)                 # 4-byte Folded Spill
	storeli.w r3, -220(r30)                 # 4-byte Folded Spill
	store.d r[18:19], -208(r30)             # 8-byte Folded Spill
	sll.d r[18:19], r[18:19], r7
	sll.d r[3:4], r[9:10], r5
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r7, zero, 1
	sll.d r[9:10], r[3:4], r7
	and.d r[3:4], r[18:19], r[16:17]
	store.d r[18:19], -160(r30)             # 8-byte Folded Spill
	store.d r[3:4], -168(r30)               # 8-byte Folded Spill
	load.d r[3:4], 8(r30)
	store.d r[9:10], -216(r30)              # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[9:10]
	store.d r[3:4], -184(r30)               # 8-byte Folded Spill
	addli r4, r11, 0
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 64
	addli r7, zero, 4
	addli r28, zero, 512
	addli r12, zero, 5
	addli r11, zero, 2
	ori r4, r4, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r7
	dma_cfg r10, r10, zero, 0
	add.s r3, r3, r4
	addli r4, zero, 64
	dma_cfg zero, r19, zero, 2
	dma_cfg r3, r18, r4, 3
	addli r19, zero, 128
	addli r3, zero, 2048
	addli r18, zero, 64
	dma_cfg r19, r4, r7, 4
	dma_cfg r28, r3, r9, 5
	addli r3, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r27, 10
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
	addli r3, zero, 24
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r4, 3
	addli r21, zero, 4
	dma_cfg r19, zero, r21, 4
	dma_cfg r28, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r10, r23, 0
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r11, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r3,  -144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r4,  -60(r30)
	addli r19, zero, 8
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r3, r3, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r4, r4, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r3, -144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r4, -60(r30)
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r2, r2, 1
	bneq r2, r19, .LBB0_27
	j .LBB0_34
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[11:12], r2
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	load.d r[18:19], -160(r30)              # 8-byte Folded Reload
	loadli.w r3,  -172(r30)                 # 4-byte Folded Reload
	load.d r[27:28], -168(r30)              # 8-byte Folded Reload
	addli r26, zero, 8
	addli r25, zero, 64
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	sll.d r[9:10], r[11:12], r5
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[18:19], r[9:10], r[18:19]
	zext_int2long r[9:10], r3
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r3, r[9:10], r[18:19]
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r3, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r3, zero, 13
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r5, zero, 24
	addli r7, zero, 448
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r3, r4, r3
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r5, r22, r5
	zext_int2long r[9:10], r7
	addli r22, r22, 1
	store.d r[9:10], -152(r30)              # 8-byte Folded Spill
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r10, r4, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r9, r5, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r3, r3, 15
	lui r5, 64
	add.s r21, r3, r5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r5, zero, 2
	beq r15, r5, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, r10, 0
	addli r5, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r15, r5, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 1024
	sub.sl r[9:10], r[18:19], r[27:28]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[18:19], r[18:19], r5
	addli r25, zero, 3
	addli r5, zero, 7
	addli r27, zero, 12
	zext_int2long r[11:12], r7
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[9:10], r[9:10], r[11:12]
	load.d r[11:12], -152(r30)              # 8-byte Folded Reload
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	xwait r25, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[11:12], r[9:10], r[11:12]
	sub.sl r[9:10], r[11:12], r[9:10]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[11:12], 0(r30)
	addli r9, r9, 64
	addli r10, zero, 1
	add.ul r[18:19], r[11:12], r[18:19]
	blt.s r27, r4, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r4, zero, 2
	addli r7, zero, 4
	addli r12, zero, 128
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r27, 10
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
	addli r4, zero, 24
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r4, 3
	dma_cfg r12, zero, r7, 4
	addli r7, zero, 512
	dma_cfg r7, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r4, zero, 5
	addli r18, zero, 64
	addli r5, zero, 7
	xwait r3, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 128
	ds_cfg r3, zero, 0
	addli r3, zero, 64
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 3
	shuffle_batch r9, r21, r4, 1
	addli r21, zero, 4
	unlock zero
	xsignal r3, 0
	xsignal r21, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r3,  -144(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r4,  -60(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r5, zero, 20
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r7, zero, 14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r5, r3, r5
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r7, r4, r7
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r3, r3, 1
	storeli.w r3, -144(r30)
	slli r10, r5, 16
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r3, r7, 16
	addli r5, r4, 1
	lui r7, 168
	storeli.w r5, -60(r30)
	add.s r21, r3, r7
	addli r5, zero, 7
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r15, r5, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r7, zero, 6
	bneq r15, r7, .LBB0_28
# %bb.22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 18
	addli r19, zero, 3
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	sll.d r[9:10], r[11:12], r18
	load.d r[11:12], -184(r30)              # 8-byte Folded Reload
	xwait r5, 0
	add.ul r[9:10], r[11:12], r[9:10]
	addli r12, zero, 13
	blt.s r12, r4, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r18, zero, 5
	addli r11, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r4, zero, 2
	addli r7, zero, 6
	addli r27, zero, 18
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 4
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 128
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r25, 3
	dma_cfg r7, zero, r4, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	addli r18, zero, 18
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 168
	addli r7, zero, 4
	addli r11, zero, 1
	addli r25, zero, 512
	ori r4, r4, 64
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r7
	dma_cfg r11, r11, zero, 0
	add.s r3, r3, r4
	addli r4, zero, 64
	dma_cfg zero, r10, zero, 2
	dma_cfg r3, r9, r4, 3
	addli r10, zero, 128
	addli r3, zero, 2048
	addli r9, zero, 5
	dma_cfg r10, r4, r7, 4
	dma_cfg r25, r3, r10, 5
	addli r3, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 64
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r4, 3
	addli r21, zero, 4
	dma_cfg r10, zero, r21, 4
	dma_cfg r25, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r7, 0
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	addli r3, zero, 6
	addli r19, zero, 8
	addli r18, zero, 64
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	addli r3, zero, 2
	lock zero, zero
	ds_cfg r3, zero, 0
	addli r3, zero, 128
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r10, r21, r3, 2
	addli r21, zero, 4
	unlock zero
	xsignal r5, 0
	xsignal r19, 0
.LBB0_26:                               # %.thread20
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, r23, 0
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r2, r2, 1
	beq r2, r19, .LBB0_34
.LBB0_27:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r1, r1, 1
	addli r4, r10, 0
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r21, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r15, r21, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 8
	addli r18, zero, 64
	addli r3, zero, 1
	addli r4, zero, 1
	addli r5, zero, 0
	addli r11, zero, 128
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r21, 0
	xwait r19, 0
	beq r1, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r5, 15
	slli r5, r5, 8
	lock zero, r3
	mm_cfg r18, r11, r18, 0
	or r7, r7, r10
	or r5, r5, r14
	mm_cfg r19, r21, r3, 2
	mm_acc r5, r9, r7, 8
	andi r7, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r7, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r5, 15
	slli r5, r5, 8
	lock zero, r3
	mm_cfg r18, r11, r18, 0
	or r7, r7, r10
	or r5, r5, r14
	mm_cfg r19, r21, r3, 2
	mm r5, r9, r7, 8
	andi r7, r4, 1
	addli r5, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r7, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 5
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r2, r2, 1
	addli r5, zero, 7
	addli r10, r23, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r2, r19, .LBB0_27
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r2, r2, 1
	addli r18, zero, 64
	addli r19, zero, 8
	addli r10, r23, 0
	bneq r2, r19, .LBB0_27
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r15, r21, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -184(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	addli r1, zero, 3
	bneq r15, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r1, -184(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -184(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 128
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	zext_int2long r[23:24], r1
	addli r1, zero, 127
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r2
	sync_core
	storeli.w r22, -168(r30)                # 4-byte Folded Spill
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	storeli.w r10, -188(r30)                # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	beq r15, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r3, zero, 2
	beq r15, r3, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 1
	bneq r15, r3, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[9:10], r19
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block111
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 15
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r8, r14, .LBB0_51
# %bb.45:                               # %scalar.ph105.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph105
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r7, r8, r9
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r10, 0(r7)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r5, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r7, r5, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r10, r20, r7
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r10, zero, .LBB0_49
# %bb.48:                               # %scalar.ph105
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r7, r6, r7
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r7, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r7, r6, r7
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r7, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph105
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_46
.LBB0_51:                               # %vector.body107.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r4, r8, r15
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r3, zero, .LBB0_43
.LBB0_53:                               # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r3, r28, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r4, r20, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r4, zero, .LBB0_55
# %bb.54:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_56:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r5, zero, .LBB0_58
# %bb.57:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_59:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r5, zero, .LBB0_61
# %bb.60:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_62:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r11, zero, .LBB0_64
# %bb.63:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r7, r6, r7
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r7, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r7, r6, r7
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r7, zero, .LBB0_66
.LBB0_65:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_66:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r5, r6, r26
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r5, zero, .LBB0_69
# %bb.67:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r4, zero, .LBB0_70
.LBB0_68:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_68
.LBB0_70:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_52
.LBB0_71:                               # %vector.body107
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block129
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 7
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r8, r14, .LBB0_81
# %bb.75:                               # %scalar.ph123.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph123
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r7, r8, r9
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r10, 0(r7)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r5, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph123
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r7, r5, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r10, r20, r7
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r10, zero, .LBB0_79
# %bb.78:                               # %scalar.ph123
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r7, r6, r7
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r7, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r7, r6, r7
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r7, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph123
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_76
.LBB0_81:                               # %vector.body125.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r4, r8, r15
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r28, 12(r4)
	stores.w r12, 8(r4)
	stores.w r25, 4(r4)
	stores.w r5, 0(r4)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r3, zero, .LBB0_73
.LBB0_83:                               # %vector.body125
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r19, 12(r11)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r3, r19, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r4, r20, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_85
# %bb.84:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r4, 1024
	or r28, r19, r4
.LBB0_86:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r18, 8(r11)
	and r4, r18, r13
	setlt.u r5, r20, r4
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_88
# %bb.87:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r5, 1024
	or r12, r18, r5
.LBB0_89:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_91
# %bb.90:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_92:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r11, 0(r11)
	and r7, r11, r13
	setlt.u r5, r20, r7
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r5, zero, .LBB0_94
# %bb.93:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r11, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r7, r6, r7
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r7, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r11, r5
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r7, r6, r7
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r7, zero, .LBB0_96
.LBB0_95:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r17
	and r5, r5, r7
.LBB0_96:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r7, r6, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r7, zero, .LBB0_99
# %bb.97:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r4, zero, .LBB0_100
.LBB0_98:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r27, 16
	lui r11, 1048560
	andi r7, r7, 1
	add.s r7, r27, r7
	add.s r7, r7, r17
	and r25, r7, r11
	setlt.u r4, r6, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_98
.LBB0_100:                              # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r18, 16
	lui r7, 1048560
	andi r4, r4, 1
	add.s r4, r18, r4
	add.s r4, r4, r17
	and r12, r4, r7
	setlt.u r3, r6, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_82
.LBB0_101:                              # %vector.body125
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r17
	and r28, r3, r4
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r15
	addli r18, zero, 64
	addli r19, zero, 8
	addli r21, zero, 4
	loadli.w r22,  -168(r30)                # 4-byte Folded Reload
	loadli.w r10,  -188(r30)                # 4-byte Folded Reload
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r3, zero, 2
	bneq r15, r3, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r3
	j .LBB0_105
.LBB0_104:                              # %middle.block120
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 23
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	bneq r8, r14, .LBB0_112
# %bb.106:                              # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph114
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 217 13 is_stmt 1              # parallel-rne.mlir:217:13
	add.s r7, r8, r9
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r10, 0(r7)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r5, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r7, r5, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r10, r20, r7
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r10, zero, .LBB0_110
# %bb.109:                              # %scalar.ph114
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r7, r6, r7
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r7, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r7, r6, r7
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r7, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph114
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_107
.LBB0_112:                              # %vector.body116.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r4, r8, r15
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r3, zero, .LBB0_104
.LBB0_114:                              # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r3, r28, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r4, r20, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_116
# %bb.115:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_117:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r5, zero, .LBB0_119
# %bb.118:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_120:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r5, zero, .LBB0_122
# %bb.121:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_123:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r11, zero, .LBB0_125
# %bb.124:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r7, r6, r7
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r7, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r7, r6, r7
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r7, zero, .LBB0_127
.LBB0_126:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_127:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r5, r6, r26
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r5, zero, .LBB0_130
# %bb.128:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r4, zero, .LBB0_131
.LBB0_129:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_129
.LBB0_131:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_113
.LBB0_132:                              # %vector.body116
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r15
	addli r18, zero, 64
	addli r19, zero, 8
	addli r21, zero, 4
	loadli.w r22,  -168(r30)                # 4-byte Folded Reload
	loadli.w r10,  -188(r30)                # 4-byte Folded Reload
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	loadli.w r3,  -184(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	beq r15, r21, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	beq r15, r5, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 6
	beq r15, r3, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	bneq r15, r3, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 40
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r3
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 47
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	bneq r8, r14, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 304 13 is_stmt 1              # parallel-rne.mlir:304:13
	add.s r7, r8, r9
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r10, 0(r7)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r5, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r7, r5, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r10, r20, r7
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r10, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r7, r6, r7
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r7, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r7, r6, r7
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r7, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r4, r8, r15
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r3, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r3, r28, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r4, r20, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r4, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r5, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r11, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r7, r6, r7
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r7, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r5, r6, r26
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r5, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r4, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r7, r6, r7
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r7, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 24
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r3
	j .LBB0_171
.LBB0_170:                              # %middle.block102
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	bneq r8, r14, .LBB0_178
# %bb.172:                              # %scalar.ph96.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph96
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r7, r8, r9
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r10, 0(r7)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r5, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r7, r5, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r10, r20, r7
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r10, zero, .LBB0_176
# %bb.175:                              # %scalar.ph96
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r7, r6, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r7, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r7, r6, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r7, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph96
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_173
.LBB0_178:                              # %vector.body98.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r4, r8, r15
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r3, zero, .LBB0_170
.LBB0_180:                              # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r3, r28, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r4, r20, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r4, zero, .LBB0_182
# %bb.181:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_183:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_185
# %bb.184:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_186:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_188
# %bb.187:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_189:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r11, zero, .LBB0_195
# %bb.190:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r7, r6, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r7, zero, .LBB0_192
.LBB0_191:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_192:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r5, r6, r26
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r5, zero, .LBB0_196
# %bb.193:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r4, zero, .LBB0_197
.LBB0_194:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r7, r6, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r7, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_194
.LBB0_197:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_179
.LBB0_198:                              # %vector.body98
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r15
	addli r18, zero, 64
	addli r19, zero, 8
	addli r21, zero, 4
	loadli.w r22,  -168(r30)                # 4-byte Folded Reload
	loadli.w r10,  -188(r30)                # 4-byte Folded Reload
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	bneq r15, r21, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 32
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r3
	j .LBB0_202
.LBB0_201:                              # %middle.block93
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 39
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	bneq r8, r14, .LBB0_209
# %bb.203:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 275 13 is_stmt 1              # parallel-rne.mlir:275:13
	add.s r7, r8, r9
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r10, 0(r7)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r5, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r7, r5, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r10, r20, r7
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r10, zero, .LBB0_207
# %bb.206:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r7, r6, r7
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r7, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r7, r6, r7
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r7, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_204
.LBB0_209:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r4, r8, r15
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r3, zero, .LBB0_201
.LBB0_211:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r3, r28, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r4, r20, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_213
# %bb.212:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_214:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_216
# %bb.215:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_217:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r5, zero, .LBB0_219
# %bb.218:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_220:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r11, zero, .LBB0_226
# %bb.221:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r7, r6, r7
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r7, zero, .LBB0_223
.LBB0_222:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_223:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r5, r6, r26
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r5, zero, .LBB0_227
# %bb.224:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r4, zero, .LBB0_228
.LBB0_225:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r3, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r7, r6, r7
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r7, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_225
.LBB0_228:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r3, zero, .LBB0_210
.LBB0_229:                              # %vector.body89
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7 is_stmt 1               # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r15
	addli r18, zero, 64
	addli r19, zero, 8
	addli r21, zero, 4
	loadli.w r22,  -168(r30)                # 4-byte Folded Reload
	loadli.w r10,  -188(r30)                # 4-byte Folded Reload
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	bneq r15, r5, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 56
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r3
	j .LBB0_233
.LBB0_232:                              # %middle.block84
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 63
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	bneq r8, r14, .LBB0_240
# %bb.234:                              # %scalar.ph78.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	add.s r7, r8, r9
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r10, 0(r7)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r5, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r7, r5, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r10, r20, r7
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r10, zero, .LBB0_238
# %bb.237:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r7, r6, r7
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r7, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r7, r6, r7
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r7, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_235
.LBB0_240:                              # %vector.body80.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r4, r8, r15
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	bneq r3, zero, .LBB0_232
.LBB0_242:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r3, r28, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r4, r20, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_244
# %bb.243:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_245:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_247
# %bb.246:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_248:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r5, zero, .LBB0_250
# %bb.249:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_251:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_253
# %bb.252:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r7, r6, r7
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r7, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r7, r6, r7
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r7, zero, .LBB0_255
.LBB0_254:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_255:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r5, r6, r26
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r5, zero, .LBB0_258
# %bb.256:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r4, zero, .LBB0_259
.LBB0_257:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r3, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_257
.LBB0_259:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r3, zero, .LBB0_241
.LBB0_260:                              # %vector.body80
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 48
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r3
	j .LBB0_263
.LBB0_262:                              # %middle.block75
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 55
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	setlt.ul r3, r[9:10], r[3:4]
	addli.d r[4:5], r[9:10], 1
	addli.d r[9:10], r[4:5], 0
	addli r5, zero, 7
	beq r3, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[9:10], r5
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	bneq r8, r14, .LBB0_270
# %bb.264:                              # %scalar.ph69.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setlt.ul r5, r[3:4], r[1:2]
	.loc	1 333 13 is_stmt 1              # parallel-rne.mlir:333:13
	add.s r7, r8, r9
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r10, 0(r7)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r5, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[9:10], r[3:4], r[21:22]
	slli r9, r9, 2
	add.s r5, r14, r9
	loads.w r5, 0(r5)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r7, r5, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r10, r20, r7
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r10, zero, .LBB0_268
# %bb.267:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r5, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r7, r6, r7
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r7, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r5, r10
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r7, r6, r7
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r7, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r10, r5, r7
	j .LBB0_265
.LBB0_270:                              # %vector.body71.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r4, r8, r15
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	seteq.d r3, r[9:10], r[23:24]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r19, 12(r4)
	stores.w r18, 8(r4)
	stores.w r25, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	bneq r3, zero, .LBB0_262
.LBB0_272:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[3:4], r[9:10], r[21:22]
	slli r15, r3, 2
	add.s r11, r14, r15
	loads.w r28, 12(r11)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r3, r28, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r4, r20, r3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r4, zero, .LBB0_274
# %bb.273:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_275:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r12, 8(r11)
	and r4, r12, r13
	setlt.u r5, r20, r4
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_277
# %bb.276:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r5, 1024
	or r18, r12, r5
.LBB0_278:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r27, 4(r11)
	and r26, r27, r13
	setlt.u r5, r20, r26
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r5, zero, .LBB0_280
# %bb.279:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r5, 1024
	or r25, r27, r5
.LBB0_281:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r5, 0(r11)
	and r7, r5, r13
	setlt.u r11, r20, r7
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r11, zero, .LBB0_283
# %bb.282:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r7, r6, r7
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r7, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r5, r11
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r7, r6, r7
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r7, zero, .LBB0_285
.LBB0_284:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r5, 16
	andi r7, r7, 1
	add.s r5, r5, r7
	lui r7, 1048560
	add.s r5, r5, r17
	and r11, r5, r7
.LBB0_285:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r5, r6, r26
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r5, zero, .LBB0_288
# %bb.286:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r6, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r4, zero, .LBB0_289
.LBB0_287:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r6, r3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r3, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r27, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r27, r5
	add.s r5, r5, r17
	and r25, r5, r7
	setlt.u r4, r6, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_287
.LBB0_289:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r18, r4, r5
	setlt.u r3, r6, r3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r3, zero, .LBB0_271
.LBB0_290:                              # %vector.body71
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r19, r3, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split57
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r15
	addli r18, zero, 64
	addli r19, zero, 8
	addli r21, zero, 4
	loadli.w r22,  -168(r30)                # 4-byte Folded Reload
	loadli.w r10,  -188(r30)                # 4-byte Folded Reload
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 7                         # parallel-rne.mlir:367:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	loadli.w r1,  -184(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 12
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	bneq r15, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r7,  -220(r30)                 # 4-byte Folded Reload
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	load.d r[11:12], -152(r30)              # 8-byte Folded Reload
	addli r25, r10, 0
	addli r14, zero, 5
	zext_int2long r[3:4], r3
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	zext_int2long r[1:2], r1
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sext_int2long r[9:10], r7
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r7, zero, 17
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[3:4], r[1:2], r[3:4]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[11:12], r[9:10], r[11:12]
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	addli.d r[3:4], r[3:4], 128
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[11:12], r[11:12], 64
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.sl r[3:4], r[11:12], r[9:10]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[11:12], -208(r30)              # 8-byte Folded Reload
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sub.sl r[3:4], r[3:4], r[9:10]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[9:10], 16(r30)
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[1:2], r[1:2], r[23:24]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[23:24], -216(r30)              # 8-byte Folded Reload
	xwait r5, 0
	lock zero, r14
	ori r5, r8, 64
	sll.d r[11:12], r[11:12], r7
	addli r7, zero, 1
	add.ul r[9:10], r[9:10], r[11:12]
	dma_cfg r7, r7, zero, 0
	zext_int2long r[11:12], r18
	dma_cfg zero, r7, zero, 1
	add.ul r[9:10], r[9:10], r[23:24]
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.sl r[3:4], r[3:4], r[11:12]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r5, r18, 3
	addli r5, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	addli r10, r25, 0
	srli r5, r5, 5
	andi r1, r1, 62
	dma_cfg r18, r2, r5, 4
	addli r2, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 387 5                         # parallel-rne.mlir:387:5
	xsignal zero, 0
	bneq r15, zero, .LBB0_297
# %bb.296:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 387 5                         # parallel-rne.mlir:387:5
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
.LBB0_297:
	.loc	1 388 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:388:5
	addli sp, sp, 232
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
	.long	296                             # 0x128
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-co3zvm3g" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
