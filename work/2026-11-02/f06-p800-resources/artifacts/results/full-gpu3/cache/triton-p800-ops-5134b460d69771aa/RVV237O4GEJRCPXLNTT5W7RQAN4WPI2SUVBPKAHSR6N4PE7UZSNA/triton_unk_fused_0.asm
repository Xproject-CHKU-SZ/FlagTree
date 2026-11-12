	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-qtos2m9v" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -504
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r20
	addli r30, sp, 440
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 5
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
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
	addli r2, zero, 9
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
	addli r1, zero, 7
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
	addli r2, zero, 18
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
	addli r1, zero, 16
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r3, 1
	loadli.w r4,  40(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -24(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -48(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -108(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -272(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r4, r1, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r2, -1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -268(r30)
	storeli.w r3, -264(r30)
	storeli.w r3, -260(r30)
	storeli.w r3, -256(r30)
	storeli.w r3, -252(r30)
	storeli.w r3, -248(r30)
	storeli.w r3, -244(r30)
	storeli.w r3, -240(r30)
	storeli.w r3, -236(r30)
	storeli.w r3, -232(r30)
	storeli.w r3, -228(r30)
	storeli.w r3, -224(r30)
	storeli.w r3, -220(r30)
	storeli.w r3, -216(r30)
	storeli.w r3, -212(r30)
	storeli.w r3, -208(r30)
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	storeli.w r3, -192(r30)
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	storeli.w r3, -180(r30)
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	storeli.w r3, -160(r30)
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r2, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r2, r2, r4
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	ble.s r2, r1, .LBB0_451
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 44 11 is_stmt 1               # parallel-rne.mlir:44:11
	sext_int2long r[11:12], r1
	lui r1, 15
	addli r26, zero, 64
	addli r9, zero, 4
	addli r13, zero, 5
	lui r21, 1024
	lui r7, 522240
	lui r8, 1048560
	addli r14, zero, 0
	storeli.w zero, -280(r30)               # 4-byte Folded Spill
	storeli.w zero, -276(r30)               # 4-byte Folded Spill
	store.d r[2:3], -432(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	addli r3, zero, 13
	lui r1, 1048448
	store.d r[1:2], -440(r30)               # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r17, r2, 4095
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r6, r1, 4095
	lui r1, 7
	ori r16, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r1, zero, 16
	xsignal r1, 0
	load.d r[11:12], -384(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	load.d r[1:2], -432(r30)                # 8-byte Folded Reload
	addli.d r[11:12], r[11:12], 1
	loadli.w r14,  -388(r30)                # 4-byte Folded Reload
	addli r9, zero, 4
	addli r13, zero, 5
	addli r3, zero, 13
	setlt.sl r1, r[11:12], r[1:2]
	beq r1, zero, .LBB0_451
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_67 Depth 3
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #     Child Loop BB0_115 Depth 2
                                        #       Child Loop BB0_117 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #     Child Loop BB0_165 Depth 2
                                        #       Child Loop BB0_167 Depth 3
                                        #     Child Loop BB0_190 Depth 2
                                        #       Child Loop BB0_192 Depth 3
                                        #     Child Loop BB0_215 Depth 2
                                        #       Child Loop BB0_217 Depth 3
                                        #     Child Loop BB0_245 Depth 2
                                        #     Child Loop BB0_258 Depth 2
                                        #       Child Loop BB0_260 Depth 3
                                        #     Child Loop BB0_282 Depth 2
                                        #       Child Loop BB0_284 Depth 3
                                        #     Child Loop BB0_306 Depth 2
                                        #       Child Loop BB0_308 Depth 3
                                        #     Child Loop BB0_330 Depth 2
                                        #       Child Loop BB0_332 Depth 3
                                        #     Child Loop BB0_354 Depth 2
                                        #       Child Loop BB0_356 Depth 3
                                        #     Child Loop BB0_378 Depth 2
                                        #       Child Loop BB0_380 Depth 3
                                        #     Child Loop BB0_402 Depth 2
                                        #       Child Loop BB0_404 Depth 3
                                        #     Child Loop BB0_426 Depth 2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r20, r9, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	addli r10, zero, 8
	store.d r[11:12], -384(r30)             # 8-byte Folded Spill
	addli r22, zero, 128
	addli r1, zero, 0
	addli r2, zero, 0
	addli r28, zero, 4
	div.s r3, r11, r3
	div.s r3, r3, r4
	div.s r4, r3, r26
	slli r5, r4, 3
	slli r4, r4, 6
	sub.s r9, r9, r5
	min.s r9, r9, r10
	mod.s r10, r3, r9
	sub.s r3, r3, r4
	mod.s r4, r14, r13
	addli r14, r14, 1
	div.s r3, r3, r9
	storeli.w r14, -388(r30)                # 4-byte Folded Spill
	add.s r5, r5, r10
	slli r15, r4, 16
	zext_int2long r[9:10], r3
	slli r3, r3, 7
	zext_int2long r[11:12], r5
	storeli.w r3, -400(r30)                 # 4-byte Folded Spill
	slli r3, r5, 7
	addli r5, zero, 17
	store.d r[11:12], -416(r30)             # 8-byte Folded Spill
	storeli.w r3, -420(r30)                 # 4-byte Folded Spill
	addli r3, zero, 7
	sll.d r[3:4], r[9:10], r3
	sll.d r[10:11], r[11:12], r5
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	addli r5, zero, 1
	sll.d r[12:13], r[3:4], r5
	load.d r[3:4], -440(r30)                # 8-byte Folded Reload
	store.d r[12:13], -408(r30)             # 8-byte Folded Spill
	and.d r[3:4], r[10:11], r[3:4]
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	load.d r[3:4], 8(r30)
	add.ul r[3:4], r[3:4], r[12:13]
	store.d r[3:4], -304(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 80
	addli r18, zero, 2
	addli r22, zero, 128
	addli r12, zero, 4
	ori r4, r4, 64
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	add.s r3, r3, r4
	addli r4, zero, 4
	lock zero, r4
	addli r4, zero, 5
	dma_cfg r23, r23, zero, 0
	dma_cfg zero, r25, zero, 2
	dma_cfg r3, r24, r26, 3
	addli r3, zero, 2048
	addli r24, zero, 256
	dma_cfg r22, r26, r18, 4
	dma_cfg r24, r3, r14, 5
	addli r3, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
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
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r23, r23, zero, 0
	dma_cfg r23, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r22, zero, r18, 4
	dma_cfg r24, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r18, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -272(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -108(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r4, r4, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r3, -272(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r4, -108(r30)
.LBB0_12:                               # %.thread34
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r2, r2, 1
	addli r3, zero, 16
	beq r2, r3, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r22, zero, 128
	addli r28, zero, 4
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r1, r1, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[24:25], r2
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	addli r3, zero, 6
	loadli.w r4,  -280(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[24:25], r3
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[12:13], r[12:13], r[10:11]
	zext_int2long r[26:27], r3
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r3, r[26:27], r[12:13]
	load.d r[26:27], -296(r30)              # 8-byte Folded Reload
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r3, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[26:27], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r9,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r3, zero, 14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r5, zero, 24
	addli r14, zero, 384
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r3, r4, r3
	zext_int2long r[18:19], r14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r5, r9, r5
	addli r9, r9, 1
	store.d r[18:19], -288(r30)             # 8-byte Folded Spill
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r18
	storeli.w r9, -276(r30)                 # 4-byte Folded Spill
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r9, r4, 1
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	storeli.w r9, -280(r30)                 # 4-byte Folded Spill
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r9, zero, 2
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r3, r3, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r14, r5, 15
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	lui r5, 80
	add.s r5, r3, r5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r18, r9, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r18, r23, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, zero, 1024
	sub.sl r[24:25], r[12:13], r[26:27]
	load.d r[18:19], -288(r30)              # 8-byte Folded Reload
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[12:13], r[12:13], r23
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	zext_int2long r[26:27], r14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[24:25], r[24:25], r[26:27]
	min.sl r[26:27], r[24:25], r[18:19]
	sub.sl r[26:27], r[26:27], r[24:25]
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	load.d r[24:25], 0(r30)
	addli r14, r26, 128
	addli r27, zero, 3
	addli r26, zero, 64
	add.ul r[24:25], r[24:25], r[12:13]
	addli r13, zero, 13
	xwait r27, 0
	blt.s r13, r4, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r18, zero, 2
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r4, zero, 6
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
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
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r23, r23, zero, 0
	dma_cfg r23, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r4, zero, r18, 4
	addli r18, zero, 256
	dma_cfg r18, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r3, zero, 5
	addli r26, zero, 64
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r9
	addli r12, zero, 4
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	xwait r4, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r4, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 3
	shuffle_batch r14, r5, r26, 1
	unlock zero
	xsignal r3, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -272(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -108(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r5, zero, 40
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r9, zero, 14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r5, r3, r5
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r9, r4, r9
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	storeli.w r3, -272(r30)
	slli r3, r5, 15
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r13, r9, 15
	lui r5, 192
	addli r9, r4, 1
	storeli.w r9, -108(r30)
	add.s r5, r13, r5
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r9, zero, 7
	beq r18, r9, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r26, zero, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r9, zero, 6
	bneq r18, r9, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r23, zero, 17
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[18:19], -304(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r9
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	sll.d r[24:25], r[24:25], r23
	xwait r14, 0
	add.ul r[24:25], r[18:19], r[24:25]
	addli r18, zero, 13
	blt.s r18, r4, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r27, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r3, zero, 2
	addli r4, zero, 6
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 3
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 4
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r14, 10
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
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r23, 10
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
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r22, zero, r3, 4
	addli r3, zero, 512
	dma_cfg r3, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 192
	addli r4, zero, 4
	addli r12, zero, 4
	addli r22, zero, 128
	ori r3, r3, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r4
	addli r4, zero, 5
	add.s r3, r13, r3
	addli r13, zero, 1
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r25, zero, 2
	dma_cfg r3, r24, r26, 3
	addli r25, zero, 512
	addli r3, zero, 2048
	addli r24, zero, 6
	dma_cfg r22, r26, r12, 4
	dma_cfg r25, r3, r26, 5
	addli r3, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 3
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r14, 10
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
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r23, 10
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
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r22, zero, r12, 4
	dma_cfg r25, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r24, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 6
	addli r26, zero, 64
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r9
	addli r12, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 128
	ds_cfg r4, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r3, r5, r26, 2
	addli r3, zero, 7
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r18, r13, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 8
	xwait r13, 0
	addli r18, zero, 128
	addli r5, zero, 1
	addli r9, zero, 0
	xwait r4, 0
	addli r4, zero, 1
	beq r1, zero, .LBB0_30
.LBB0_29:                               # %.preheader55
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r9, 14
	slli r9, r9, 8
	lock zero, r4
	mm_cfg r26, r26, r18, 0
	or r12, r12, r3
	or r9, r9, r15
	mm_cfg r13, r13, r4, 2
	mm_acc r9, r14, r12, 8
	andi r12, r5, 1
	addli r9, zero, 1
	addli r5, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_29
	j .LBB0_31
.LBB0_30:                               # %.preheader54
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r9, 14
	slli r9, r9, 8
	lock zero, r4
	mm_cfg r26, r26, r18, 0
	or r12, r12, r3
	or r9, r9, r15
	mm_cfg r13, r13, r4, 2
	mm r9, r14, r12, 8
	andi r12, r5, 1
	addli r9, zero, 1
	addli r5, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_30
.LBB0_31:                               # %.thread34.thread79
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 5
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r2, r2, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r3, zero, 16
	bneq r2, r3, .LBB0_13
	j .LBB0_34
.LBB0_32:                               # %.thread34.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, r2, 1
	addli r3, zero, 16
	bneq r2, r3, .LBB0_13
	j .LBB0_35
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r9, r12, .LBB0_35
.LBB0_34:                               # %.thread81
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_35:                               # %.thread78
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	loadli.w r12,  -48(r30)
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r1,  -24(r30)
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	addli r2, r12, 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	addli r3, r1, 1
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	storeli.w r2, -48(r30)
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	addli r2, zero, 3
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	storeli.w r3, -24(r30)
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	bneq r20, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r2, zero, 16
	xwait r2, 0
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	xfence
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r3, zero, 255
	addli r11, zero, 7
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	mfence { lm, sm, gm }
	mod.s r1, r1, r2
	addli r2, zero, 128
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	csr_set csr5, r3
	zext_int2long r[24:25], r2
	lui r2, 304
	ori r2, r2, 2560
	slli r1, r1, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r14, r1, r2
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	store.d r[1:2], -368(r30)               # 8-byte Folded Spill
	sync_core
	storeli.w r12, -376(r30)                # 4-byte Folded Spill
	.loc	1 151 7 is_stmt 1               # parallel-rne.mlir:151:7
	bneq r20, zero, .LBB0_62
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_40
.LBB0_39:                               # %middle.block231
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_61
.LBB0_40:                               # %.preheader53
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[22:23], -304(r30)              # 8-byte Folded Reload
	sll.d r[19:20], r[2:3], r11
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	j .LBB0_42
.LBB0_41:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r3, r14, r5
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setneq.d r2, r[22:23], r[24:25]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r27, 12(r3)
	stores.w r13, 8(r3)
	stores.w r9, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r2, zero, .LBB0_39
.LBB0_42:                               # %vector.body227
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[1:2], r[22:23], r[19:20]
	slli r5, r1, 2
	add.s r1, r15, r5
	loads.w r26, 12(r1)
	loads.w r4, 0(r1)
	loads.w r18, 4(r1)
	loads.w r28, 8(r1)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r3, r26, r6
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r1, r7, r3
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_44
# %bb.43:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r26, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	or r27, r26, r21
.LBB0_45:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	and r12, r28, r6
	setlt.u r1, r7, r12
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_47
# %bb.46:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=3
	or r13, r28, r21
.LBB0_48:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	and r2, r18, r6
	setlt.u r1, r7, r2
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_50
# %bb.49:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_42 Depth=3
	or r9, r18, r21
.LBB0_51:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	and r10, r4, r6
	setlt.u r1, r7, r10
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_53
# %bb.52:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r4, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r10, r17, r10
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r10, zero, .LBB0_54
	j .LBB0_55
.LBB0_53:                               #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r4, r21
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r10, r17, r10
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r10, zero, .LBB0_55
.LBB0_54:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r16
	and r1, r1, r8
.LBB0_55:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r2, r17, r2
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r2, zero, .LBB0_58
# %bb.56:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r2, zero, .LBB0_59
.LBB0_57:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r2, zero, .LBB0_41
	j .LBB0_60
.LBB0_58:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r16
	and r9, r2, r8
	setlt.u r2, r17, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r2, zero, .LBB0_57
.LBB0_59:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r13, r2, r8
	setlt.u r2, r17, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r2, zero, .LBB0_41
.LBB0_60:                               # %vector.body227
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r16
	and r27, r2, r8
	j .LBB0_41
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 151 7 is_stmt 1               # parallel-rne.mlir:151:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	store.d r[1:2], -296(r30)               # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r20, r1, .LBB0_87
# %bb.63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_65
.LBB0_64:                               # %middle.block222
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_86
.LBB0_65:                               # %.preheader52
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_67 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_67
.LBB0_66:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	add.s r2, r14, r5
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setneq.d r1, r[19:20], r[24:25]
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r23, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r1, zero, .LBB0_64
.LBB0_67:                               # %vector.body218
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[19:20], r[10:11]
	slli r5, r1, 2
	add.s r1, r15, r5
	loads.w r22, 12(r1)
	loads.w r27, 0(r1)
	loads.w r9, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r3, r22, r6
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r1, r7, r3
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_69
# %bb.68:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=3
	or r23, r22, r21
.LBB0_70:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	and r12, r26, r6
	setlt.u r1, r7, r12
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_72
# %bb.71:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_67 Depth=3
	or r13, r26, r21
.LBB0_73:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	and r28, r9, r6
	setlt.u r1, r7, r28
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_75
# %bb.74:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_67 Depth=3
	or r18, r9, r21
.LBB0_76:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	and r1, r27, r6
	setlt.u r2, r7, r1
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r2, zero, .LBB0_78
# %bb.77:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r1, r17, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_79
	j .LBB0_80
.LBB0_78:                               #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r1, r17, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_80
.LBB0_79:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r4, r1, r8
.LBB0_80:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	setlt.u r1, r17, r28
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_83
# %bb.81:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_84
.LBB0_82:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_66
	j .LBB0_85
.LBB0_83:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r18, r1, r8
	setlt.u r1, r17, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_82
.LBB0_84:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r13, r1, r8
	setlt.u r1, r17, r3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_66
.LBB0_85:                               # %vector.body218
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r16
	and r23, r1, r8
	j .LBB0_66
.LBB0_86:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_87:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 47
	zext_int2long r[1:2], r1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	addli r1, zero, 2
	bneq r20, r1, .LBB0_112
# %bb.88:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_90
.LBB0_89:                               # %middle.block213
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 214 9 is_stmt 1               # parallel-rne.mlir:214:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_111
.LBB0_90:                               # %.preheader51
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_92
.LBB0_91:                               # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	add.s r2, r14, r5
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	setneq.d r1, r[19:20], r[24:25]
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r23, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	beq r1, zero, .LBB0_89
.LBB0_92:                               # %vector.body209
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[1:2], r[19:20], r[10:11]
	slli r5, r1, 2
	add.s r1, r15, r5
	loads.w r22, 12(r1)
	loads.w r27, 0(r1)
	loads.w r9, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r3, r22, r6
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r1, r7, r3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r1, zero, .LBB0_94
# %bb.93:                               # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_92 Depth=3
	or r23, r22, r21
.LBB0_95:                               # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	and r12, r26, r6
	setlt.u r1, r7, r12
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r1, zero, .LBB0_97
# %bb.96:                               # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_92 Depth=3
	or r13, r26, r21
.LBB0_98:                               # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	and r28, r9, r6
	setlt.u r1, r7, r28
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r1, zero, .LBB0_100
# %bb.99:                               # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_92 Depth=3
	or r18, r9, r21
.LBB0_101:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	and r1, r27, r6
	setlt.u r2, r7, r1
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r2, zero, .LBB0_103
# %bb.102:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r1, r17, r1
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r1, zero, .LBB0_104
	j .LBB0_105
.LBB0_103:                              #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r1, r17, r1
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_105
.LBB0_104:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r4, r1, r8
.LBB0_105:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	setlt.u r1, r17, r28
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r1, zero, .LBB0_108
# %bb.106:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r1, zero, .LBB0_109
.LBB0_107:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_91
	j .LBB0_110
.LBB0_108:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r18, r1, r8
	setlt.u r1, r17, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_107
.LBB0_109:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r13, r1, r8
	setlt.u r1, r17, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_91
.LBB0_110:                              # %vector.body209
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r16
	and r23, r1, r8
	j .LBB0_91
.LBB0_111:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_112:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	.loc	1 235 7 is_stmt 1               # parallel-rne.mlir:235:7
	store.d r[1:2], -312(r30)               # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r20, r1, .LBB0_137
# %bb.113:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_115
.LBB0_114:                              # %middle.block204
                                        #   in Loop: Header=BB0_115 Depth=2
	.loc	1 242 9 is_stmt 1               # parallel-rne.mlir:242:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[3:4], -320(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_136
.LBB0_115:                              # %.preheader50
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_117 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -320(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_117
.LBB0_116:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	add.s r2, r14, r5
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	setneq.d r1, r[19:20], r[24:25]
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	stores.w r23, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	beq r1, zero, .LBB0_114
.LBB0_117:                              # %vector.body200
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[1:2], r[19:20], r[10:11]
	slli r5, r1, 2
	add.s r1, r15, r5
	loads.w r22, 12(r1)
	loads.w r27, 0(r1)
	loads.w r9, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	and r3, r22, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	setlt.u r1, r7, r3
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_117 Depth=3
	or r23, r22, r21
.LBB0_120:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	and r12, r26, r6
	setlt.u r1, r7, r12
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_122
# %bb.121:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_117 Depth=3
	or r13, r26, r21
.LBB0_123:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	and r28, r9, r6
	setlt.u r1, r7, r28
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_125
# %bb.124:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_117 Depth=3
	or r18, r9, r21
.LBB0_126:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	and r1, r27, r6
	setlt.u r2, r7, r1
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r2, zero, .LBB0_128
# %bb.127:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r1, r17, r1
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r1, zero, .LBB0_129
	j .LBB0_130
.LBB0_128:                              #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r1, r17, r1
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_130
.LBB0_129:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r4, r1, r8
.LBB0_130:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	setlt.u r1, r17, r28
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r1, zero, .LBB0_133
# %bb.131:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r12
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r1, zero, .LBB0_134
.LBB0_132:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_116
	j .LBB0_135
.LBB0_133:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r18, r1, r8
	setlt.u r1, r17, r12
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_132
.LBB0_134:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r13, r1, r8
	setlt.u r1, r17, r3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_116
.LBB0_135:                              # %vector.body200
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r16
	and r23, r1, r8
	j .LBB0_116
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 235 7 is_stmt 1               # parallel-rne.mlir:235:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_137:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 79
	zext_int2long r[1:2], r1
	.loc	1 263 7 is_stmt 1               # parallel-rne.mlir:263:7
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	addli r1, zero, 4
	bneq r20, r1, .LBB0_162
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[2:3], r26
	mfence { lm, sm, gm }
	j .LBB0_140
.LBB0_139:                              # %middle.block195
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 270 9                         # parallel-rne.mlir:270:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[3:4], -328(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_161
.LBB0_140:                              # %.preheader49
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -328(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_142
.LBB0_141:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 271 11 is_stmt 1              # parallel-rne.mlir:271:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	add.s r2, r14, r5
	.loc	1 271 11                        # parallel-rne.mlir:271:11
	setneq.d r1, r[19:20], r[24:25]
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	stores.w r23, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 271 11                        # parallel-rne.mlir:271:11
	beq r1, zero, .LBB0_139
.LBB0_142:                              # %vector.body191
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	add.ul r[1:2], r[19:20], r[10:11]
	slli r5, r1, 2
	add.s r1, r15, r5
	loads.w r22, 12(r1)
	loads.w r27, 0(r1)
	loads.w r9, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	and r3, r22, r6
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	setlt.u r1, r7, r3
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r1, zero, .LBB0_144
# %bb.143:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	or r23, r22, r21
.LBB0_145:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	and r12, r26, r6
	setlt.u r1, r7, r12
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r1, zero, .LBB0_147
# %bb.146:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_142 Depth=3
	or r13, r26, r21
.LBB0_148:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	and r28, r9, r6
	setlt.u r1, r7, r28
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r1, zero, .LBB0_150
# %bb.149:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_142 Depth=3
	or r18, r9, r21
.LBB0_151:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	and r1, r27, r6
	setlt.u r2, r7, r1
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r2, zero, .LBB0_153
# %bb.152:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 283 19 is_stmt 1              # parallel-rne.mlir:283:19
	setlt.u r1, r17, r1
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r1, zero, .LBB0_154
	j .LBB0_155
.LBB0_153:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 283 19 is_stmt 1              # parallel-rne.mlir:283:19
	setlt.u r1, r17, r1
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_155
.LBB0_154:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r4, r1, r8
.LBB0_155:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	setlt.u r1, r17, r28
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r1, zero, .LBB0_158
# %bb.156:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r12
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r1, zero, .LBB0_159
.LBB0_157:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_141
	j .LBB0_160
.LBB0_158:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r18, r1, r8
	setlt.u r1, r17, r12
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_157
.LBB0_159:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r13, r1, r8
	setlt.u r1, r17, r3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_141
.LBB0_160:                              # %vector.body191
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r16
	and r23, r1, r8
	j .LBB0_141
.LBB0_161:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 263 7 is_stmt 1               # parallel-rne.mlir:263:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_162:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 95
	zext_int2long r[1:2], r1
	.loc	1 291 7 is_stmt 1               # parallel-rne.mlir:291:7
	store.d r[1:2], -328(r30)               # 8-byte Folded Spill
	addli r1, zero, 5
	bneq r20, r1, .LBB0_187
# %bb.163:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 291 7                         # parallel-rne.mlir:291:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_165
.LBB0_164:                              # %middle.block186
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 298 9 is_stmt 1               # parallel-rne.mlir:298:9
	load.d r[1:2], -328(r30)                # 8-byte Folded Reload
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_186
.LBB0_165:                              # %.preheader48
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_167 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	j .LBB0_167
.LBB0_166:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 299 11 is_stmt 1              # parallel-rne.mlir:299:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 314 13                        # parallel-rne.mlir:314:13
	add.s r2, r14, r5
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	setneq.d r1, r[10:11], r[24:25]
	.loc	1 314 13                        # parallel-rne.mlir:314:13
	stores.w r23, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	beq r1, zero, .LBB0_164
.LBB0_167:                              # %vector.body182
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.ul r[1:2], r[10:11], r[19:20]
	slli r5, r1, 2
	add.s r1, r15, r5
	loads.w r22, 12(r1)
	loads.w r27, 0(r1)
	loads.w r9, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r3, r22, r6
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	setlt.u r1, r7, r3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_169
# %bb.168:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=3
	or r23, r22, r21
.LBB0_170:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	and r12, r26, r6
	setlt.u r1, r7, r12
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_172
# %bb.171:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_167 Depth=3
	or r13, r26, r21
.LBB0_173:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	and r28, r9, r6
	setlt.u r1, r7, r28
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_175
# %bb.174:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_167 Depth=3
	or r18, r9, r21
.LBB0_176:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	and r1, r27, r6
	setlt.u r2, r7, r1
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r2, zero, .LBB0_178
# %bb.177:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 311 19 is_stmt 1              # parallel-rne.mlir:311:19
	setlt.u r1, r17, r1
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r1, zero, .LBB0_179
	j .LBB0_180
.LBB0_178:                              #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 311 19 is_stmt 1              # parallel-rne.mlir:311:19
	setlt.u r1, r17, r1
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_180
.LBB0_179:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r4, r1, r8
.LBB0_180:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	setlt.u r1, r17, r28
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r1, zero, .LBB0_183
# %bb.181:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r1, zero, .LBB0_184
.LBB0_182:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_166
	j .LBB0_185
.LBB0_183:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r18, r1, r8
	setlt.u r1, r17, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_182
.LBB0_184:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r13, r1, r8
	setlt.u r1, r17, r3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_166
.LBB0_185:                              # %vector.body182
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r16
	and r23, r1, r8
	j .LBB0_166
.LBB0_186:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 291 7 is_stmt 1               # parallel-rne.mlir:291:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_187:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 111
	zext_int2long r[1:2], r1
	.loc	1 319 7 is_stmt 1               # parallel-rne.mlir:319:7
	store.d r[1:2], -336(r30)               # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r20, r1, .LBB0_212
# %bb.188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 96
	.loc	1 319 7                         # parallel-rne.mlir:319:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_190
.LBB0_189:                              # %middle.block177
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 326 9 is_stmt 1               # parallel-rne.mlir:326:9
	load.d r[1:2], -336(r30)                # 8-byte Folded Reload
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_211
.LBB0_190:                              # %.preheader47
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_192 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[22:23], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -344(r30)               # 8-byte Folded Spill
	j .LBB0_192
.LBB0_191:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 327 11 is_stmt 1              # parallel-rne.mlir:327:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	add.s r1, r14, r1
	.loc	1 327 11                        # parallel-rne.mlir:327:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	stores.w r5, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 327 11                        # parallel-rne.mlir:327:11
	beq r2, zero, .LBB0_189
.LBB0_192:                              # %vector.body173
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	add.ul r[1:2], r[10:11], r[22:23]
	slli r1, r1, 2
	add.s r3, r15, r1
	loads.w r2, 12(r3)
	loads.w r27, 0(r3)
	loads.w r9, 4(r3)
	loads.w r26, 8(r3)
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	and r3, r2, r6
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	setlt.u r4, r7, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r4, zero, .LBB0_194
# %bb.193:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_195
.LBB0_194:                              #   in Loop: Header=BB0_192 Depth=3
	or r5, r2, r21
.LBB0_195:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	and r12, r26, r6
	setlt.u r4, r7, r12
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r4, zero, .LBB0_197
# %bb.196:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_192 Depth=3
	or r13, r26, r21
.LBB0_198:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r4, zero, .LBB0_200
# %bb.199:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_192 Depth=3
	or r18, r9, r21
.LBB0_201:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	and r19, r27, r6
	setlt.u r4, r7, r19
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r4, zero, .LBB0_203
# %bb.202:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 339 19 is_stmt 1              # parallel-rne.mlir:339:19
	setlt.u r19, r17, r19
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	beq r19, zero, .LBB0_204
	j .LBB0_205
.LBB0_203:                              #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 339 19 is_stmt 1              # parallel-rne.mlir:339:19
	setlt.u r19, r17, r19
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r19, zero, .LBB0_205
.LBB0_204:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r27, 16
	andi r4, r4, 1
	add.s r4, r27, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_205:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	setlt.u r19, r17, r28
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	beq r19, zero, .LBB0_208
# %bb.206:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	beq r9, zero, .LBB0_209
.LBB0_207:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r17, r3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r3, zero, .LBB0_191
	j .LBB0_210
.LBB0_208:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r9, zero, .LBB0_207
.LBB0_209:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r26, 16
	andi r9, r9, 1
	add.s r9, r26, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r3, r17, r3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r3, zero, .LBB0_191
.LBB0_210:                              # %vector.body173
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r5, r2, r8
	j .LBB0_191
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 319 7 is_stmt 1               # parallel-rne.mlir:319:7
	mfence { sm }
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 127
	zext_int2long r[1:2], r1
	.loc	1 347 7 is_stmt 1               # parallel-rne.mlir:347:7
	store.d r[1:2], -344(r30)               # 8-byte Folded Spill
	bneq r20, r11, .LBB0_237
# %bb.213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_215
.LBB0_214:                              # %middle.block168
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 354 9 is_stmt 1               # parallel-rne.mlir:354:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_236
.LBB0_215:                              # %.preheader46
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_217 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[26:27], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -360(r30)               # 8-byte Folded Spill
	j .LBB0_217
.LBB0_216:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 355 11 is_stmt 1              # parallel-rne.mlir:355:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	add.s r1, r14, r1
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	stores.w r5, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	beq r2, zero, .LBB0_214
.LBB0_217:                              # %vector.body164
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.ul r[1:2], r[10:11], r[26:27]
	slli r1, r1, 2
	add.s r3, r15, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r3, r2, r6
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	setlt.u r4, r7, r3
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_219
# %bb.218:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_217 Depth=3
	or r5, r2, r21
.LBB0_220:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_222
# %bb.221:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_223
.LBB0_222:                              #   in Loop: Header=BB0_217 Depth=3
	or r13, r22, r21
.LBB0_223:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_225
# %bb.224:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_217 Depth=3
	or r18, r9, r21
.LBB0_226:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	and r19, r23, r6
	setlt.u r4, r7, r19
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_228
# %bb.227:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 367 19 is_stmt 1              # parallel-rne.mlir:367:19
	setlt.u r19, r17, r19
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r19, zero, .LBB0_229
	j .LBB0_230
.LBB0_228:                              #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 367 19 is_stmt 1              # parallel-rne.mlir:367:19
	setlt.u r19, r17, r19
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r19, zero, .LBB0_230
.LBB0_229:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_230:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	setlt.u r19, r17, r28
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r19, zero, .LBB0_233
# %bb.231:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r9, zero, .LBB0_234
.LBB0_232:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r17, r3
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r3, zero, .LBB0_216
	j .LBB0_235
.LBB0_233:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r9, zero, .LBB0_232
.LBB0_234:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r3, r17, r3
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r3, zero, .LBB0_216
.LBB0_235:                              # %vector.body164
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r5, r2, r8
	j .LBB0_216
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 347 7 is_stmt 1               # parallel-rne.mlir:347:7
	mfence { sm }
	addli r26, zero, 64
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
.LBB0_237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 128
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	min.ul r[1:2], r[1:2], r[24:25]
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	store.d r[1:2], -400(r30)               # 8-byte Folded Spill
	addli r1, zero, 255
	addli r2, zero, 3
	csr_set csr5, r1
	sync_core
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	bneq r20, r2, .LBB0_239
# %bb.238:                              # %.thread36.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 11
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	addli r1, zero, 14
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	xsignal r3, 0
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	xsignal r1, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	addli r1, zero, 15
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	xwait r3, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	xwait r1, 0
	addli r1, zero, 1
	j .LBB0_248
.LBB0_239:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 5
	lui r3, 304
	addli r13, zero, 3
	addli r4, zero, 18
	mod.s r1, r12, r2
	slli r1, r1, 9
	add.s r5, r1, r3
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	addli r3, zero, 1
	bneq r20, r3, .LBB0_243
# %bb.240:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[9:10], -408(r30)               # 8-byte Folded Reload
	load.d r[2:3], 16(r30)
	addli r18, zero, 18
	xwait r4, 0
	add.ul r[2:3], r[2:3], r[9:10]
	addli r9, zero, 4
	blt.s r9, r12, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 5
	addli r12, zero, 1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r4, zero, 2
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r11, 10
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
	addli r4, zero, 19
	dma_cfg zero, zero, r18, 10
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r4, zero, r9, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
.LBB0_242:                              # %.thread36.thread38
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	lock zero, r9
	lui r4, 304
	dma_cfg r10, r10, zero, 0
	ori r4, r4, 64
	dma_cfg zero, r3, zero, 2
	load.d r[12:13], -400(r30)              # 8-byte Folded Reload
	add.s r1, r1, r4
	dma_cfg r1, r2, r26, 3
	addli r3, zero, 256
	addli r4, r12, 31
	slli r2, r12, 1
	addli r12, zero, 128
	addli r13, zero, 512
	srli r1, r4, 5
	andi r2, r2, 62
	addli r4, zero, 5
	dma_cfg r12, r26, r1, 4
	dma_cfg r13, r3, r10, 5
	addli r3, zero, 2
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 3
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r11, 10
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
	dma_cfg zero, zero, r18, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r26, 3
	dma_cfg r12, zero, r1, 4
	addli r1, zero, 1
	dma_cfg r13, zero, r1, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	addli r2, zero, 3
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r3, 0
	.loc	1 382 7 is_stmt 1               # parallel-rne.mlir:382:7
	j .LBB0_248
.LBB0_243:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 17
	.loc	1 380 7 is_stmt 1               # parallel-rne.mlir:380:7
	bneq r20, r2, .LBB0_247
# %bb.244:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 2
	xwait r3, 0
	lui r3, 16
	lock zero, r2
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, r2, zero, 0
	addli r2, zero, 127
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 1
	ew_cfg r2, zero, zero, 3
.LBB0_245:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r14, r1
	addli r1, r1, 512
	dsmadd r2, r2, r5, 0
	bneq r1, r3, .LBB0_245
# %bb.246:                              # %.thread36
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 15
	xsignal r1, 0
	xsignal r4, 0
.LBB0_247:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1
	addli r2, zero, 3
.LBB0_248:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	xfence
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r3, zero, 255
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	mfence { lm, sm, gm }
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	csr_set csr5, r3
	sync_core
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	beq r20, zero, .LBB0_256
# %bb.249:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 416 7                         # parallel-rne.mlir:416:7
	beq r20, r1, .LBB0_280
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 2
	beq r20, r1, .LBB0_304
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	beq r20, r2, .LBB0_328
.LBB0_252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	addli r1, zero, 4
	beq r20, r1, .LBB0_352
.LBB0_253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 528 7                         # parallel-rne.mlir:528:7
	addli r1, zero, 5
	beq r20, r1, .LBB0_376
.LBB0_254:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	addli r1, zero, 6
	beq r20, r1, .LBB0_400
.LBB0_255:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	beq r20, r11, .LBB0_424
	j .LBB0_448
.LBB0_256:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], -376(r30)               # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_258
.LBB0_257:                              # %middle.block159
                                        #   in Loop: Header=BB0_258 Depth=2
	.loc	1 395 9                         # parallel-rne.mlir:395:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_279
.LBB0_258:                              # %.preheader45
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_260 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[26:27], -376(r30)              # 8-byte Folded Reload
	store.d r[2:3], -360(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_260
.LBB0_259:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 396 11 is_stmt 1              # parallel-rne.mlir:396:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 411 13                        # parallel-rne.mlir:411:13
	add.s r4, r15, r5
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	setneq.d r2, r[26:27], r[24:25]
	.loc	1 411 13                        # parallel-rne.mlir:411:13
	stores.w r3, 12(r4)
	stores.w r22, 8(r4)
	stores.w r18, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	beq r2, zero, .LBB0_257
.LBB0_260:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_258 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	add.ul r[1:2], r[26:27], r[10:11]
	slli r5, r1, 2
	add.s r1, r14, r5
	loads.w r28, 12(r1)
	loads.w r4, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	and r13, r28, r6
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	setlt.u r1, r7, r13
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_262
# %bb.261:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r28, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_260 Depth=3
	or r3, r28, r21
.LBB0_263:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	and r12, r23, r6
	setlt.u r1, r7, r12
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_265
# %bb.264:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_260 Depth=3
	or r22, r23, r21
.LBB0_266:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	and r2, r9, r6
	setlt.u r1, r7, r2
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_268
# %bb.267:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_260 Depth=3
	or r18, r9, r21
.LBB0_269:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	and r19, r4, r6
	setlt.u r1, r7, r19
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_271
# %bb.270:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r4, 0
	.loc	1 408 19 is_stmt 1              # parallel-rne.mlir:408:19
	setlt.u r19, r17, r19
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	beq r19, zero, .LBB0_272
	j .LBB0_273
.LBB0_271:                              #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r4, r21
	.loc	1 408 19 is_stmt 1              # parallel-rne.mlir:408:19
	setlt.u r19, r17, r19
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r19, zero, .LBB0_273
.LBB0_272:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r16
	and r1, r1, r8
.LBB0_273:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	setlt.u r2, r17, r2
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	beq r2, zero, .LBB0_276
# %bb.274:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r12
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	beq r2, zero, .LBB0_277
.LBB0_275:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r13
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r2, zero, .LBB0_259
	j .LBB0_278
.LBB0_276:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r16
	and r18, r2, r8
	setlt.u r2, r17, r12
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r2, zero, .LBB0_275
.LBB0_277:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r16
	and r22, r2, r8
	setlt.u r2, r17, r13
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r2, zero, .LBB0_259
.LBB0_278:                              # %vector.body155
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_259
.LBB0_279:                              #   in Loop: Header=BB0_7 Depth=1
	addli r26, zero, 64
	addli r1, zero, 1
	addli r2, zero, 3
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	mfence { sm }
	.loc	1 416 7                         # parallel-rne.mlir:416:7
	bneq r20, r1, .LBB0_250
.LBB0_280:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 416 7                         # parallel-rne.mlir:416:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_282
.LBB0_281:                              # %middle.block150
                                        #   in Loop: Header=BB0_282 Depth=2
	.loc	1 423 9 is_stmt 1               # parallel-rne.mlir:423:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_303
.LBB0_282:                              # %.preheader44
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_284 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[26:27], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -360(r30)               # 8-byte Folded Spill
	j .LBB0_284
.LBB0_283:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 424 11 is_stmt 1              # parallel-rne.mlir:424:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	add.s r1, r15, r1
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	stores.w r3, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	beq r2, zero, .LBB0_281
.LBB0_284:                              # %vector.body146
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.ul r[1:2], r[10:11], r[26:27]
	slli r1, r1, 2
	add.s r3, r14, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r5, r2, r6
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	setlt.u r3, r7, r5
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r3, zero, .LBB0_286
# %bb.285:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_284 Depth=3
	or r3, r2, r21
.LBB0_287:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r4, zero, .LBB0_289
# %bb.288:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_284 Depth=3
	or r13, r22, r21
.LBB0_290:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r4, zero, .LBB0_292
# %bb.291:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_284 Depth=3
	or r18, r9, r21
.LBB0_293:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	and r19, r23, r6
	setlt.u r4, r7, r19
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r4, zero, .LBB0_295
# %bb.294:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r19, r17, r19
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r19, zero, .LBB0_296
	j .LBB0_297
.LBB0_295:                              #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r19, r17, r19
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r19, zero, .LBB0_297
.LBB0_296:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_297:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	setlt.u r19, r17, r28
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r19, zero, .LBB0_300
# %bb.298:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r9, zero, .LBB0_301
.LBB0_299:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r17, r5
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r5, zero, .LBB0_283
	j .LBB0_302
.LBB0_300:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r9, zero, .LBB0_299
.LBB0_301:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r5, r17, r5
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r5, zero, .LBB0_283
.LBB0_302:                              # %vector.body146
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_283
.LBB0_303:                              #   in Loop: Header=BB0_7 Depth=1
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 416 7 is_stmt 1               # parallel-rne.mlir:416:7
	mfence { sm }
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 2
	bneq r20, r1, .LBB0_251
.LBB0_304:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_306
.LBB0_305:                              # %middle.block141
                                        #   in Loop: Header=BB0_306 Depth=2
	.loc	1 451 9 is_stmt 1               # parallel-rne.mlir:451:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_327
.LBB0_306:                              # %.preheader43
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[26:27], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	j .LBB0_308
.LBB0_307:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 452 11 is_stmt 1              # parallel-rne.mlir:452:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 467 13                        # parallel-rne.mlir:467:13
	add.s r1, r15, r1
	.loc	1 452 11                        # parallel-rne.mlir:452:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 467 13                        # parallel-rne.mlir:467:13
	stores.w r3, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 452 11                        # parallel-rne.mlir:452:11
	beq r2, zero, .LBB0_305
.LBB0_308:                              # %vector.body137
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	add.ul r[1:2], r[10:11], r[26:27]
	slli r1, r1, 2
	add.s r3, r14, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	and r5, r2, r6
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	setlt.u r3, r7, r5
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r3, zero, .LBB0_310
# %bb.309:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_308 Depth=3
	or r3, r2, r21
.LBB0_311:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r4, zero, .LBB0_313
# %bb.312:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_308 Depth=3
	or r13, r22, r21
.LBB0_314:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r4, zero, .LBB0_316
# %bb.315:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_308 Depth=3
	or r18, r9, r21
.LBB0_317:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	and r19, r23, r6
	setlt.u r4, r7, r19
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r4, zero, .LBB0_319
# %bb.318:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 464 19 is_stmt 1              # parallel-rne.mlir:464:19
	setlt.u r19, r17, r19
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	beq r19, zero, .LBB0_320
	j .LBB0_321
.LBB0_319:                              #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 464 19 is_stmt 1              # parallel-rne.mlir:464:19
	setlt.u r19, r17, r19
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r19, zero, .LBB0_321
.LBB0_320:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_321:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	setlt.u r19, r17, r28
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	beq r19, zero, .LBB0_324
# %bb.322:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	beq r9, zero, .LBB0_325
.LBB0_323:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r17, r5
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r5, zero, .LBB0_307
	j .LBB0_326
.LBB0_324:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r9, zero, .LBB0_323
.LBB0_325:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r5, r17, r5
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r5, zero, .LBB0_307
.LBB0_326:                              # %vector.body137
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_307
.LBB0_327:                              #   in Loop: Header=BB0_7 Depth=1
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 444 7 is_stmt 1               # parallel-rne.mlir:444:7
	mfence { sm }
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	bneq r20, r2, .LBB0_252
.LBB0_328:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_330
.LBB0_329:                              # %middle.block132
                                        #   in Loop: Header=BB0_330 Depth=2
	.loc	1 479 9 is_stmt 1               # parallel-rne.mlir:479:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_351
.LBB0_330:                              # %.preheader42
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_332 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[26:27], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	j .LBB0_332
.LBB0_331:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 480 11 is_stmt 1              # parallel-rne.mlir:480:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r1, r15, r1
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r3, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	beq r2, zero, .LBB0_329
.LBB0_332:                              # %vector.body128
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_330 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	add.ul r[1:2], r[10:11], r[26:27]
	slli r1, r1, 2
	add.s r3, r14, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	and r5, r2, r6
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	setlt.u r3, r7, r5
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r3, zero, .LBB0_334
# %bb.333:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_332 Depth=3
	or r3, r2, r21
.LBB0_335:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r4, zero, .LBB0_337
# %bb.336:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_332 Depth=3
	or r13, r22, r21
.LBB0_338:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r4, zero, .LBB0_340
# %bb.339:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_341
.LBB0_340:                              #   in Loop: Header=BB0_332 Depth=3
	or r18, r9, r21
.LBB0_341:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	and r19, r23, r6
	setlt.u r4, r7, r19
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r4, zero, .LBB0_343
# %bb.342:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 492 19 is_stmt 1              # parallel-rne.mlir:492:19
	setlt.u r19, r17, r19
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	beq r19, zero, .LBB0_344
	j .LBB0_345
.LBB0_343:                              #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 492 19 is_stmt 1              # parallel-rne.mlir:492:19
	setlt.u r19, r17, r19
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r19, zero, .LBB0_345
.LBB0_344:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_345:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	setlt.u r19, r17, r28
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	beq r19, zero, .LBB0_348
# %bb.346:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	beq r9, zero, .LBB0_349
.LBB0_347:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r17, r5
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r5, zero, .LBB0_331
	j .LBB0_350
.LBB0_348:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r9, zero, .LBB0_347
.LBB0_349:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r5, r17, r5
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r5, zero, .LBB0_331
.LBB0_350:                              # %vector.body128
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_331
.LBB0_351:                              #   in Loop: Header=BB0_7 Depth=1
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 472 7 is_stmt 1               # parallel-rne.mlir:472:7
	mfence { sm }
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	addli r1, zero, 4
	bneq r20, r1, .LBB0_253
.LBB0_352:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[2:3], r26
	mfence { lm, sm, gm }
	j .LBB0_354
.LBB0_353:                              # %middle.block123
                                        #   in Loop: Header=BB0_354 Depth=2
	.loc	1 507 9                         # parallel-rne.mlir:507:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_375
.LBB0_354:                              # %.preheader41
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[26:27], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	j .LBB0_356
.LBB0_355:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 508 11 is_stmt 1              # parallel-rne.mlir:508:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 523 13                        # parallel-rne.mlir:523:13
	add.s r1, r15, r1
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 523 13                        # parallel-rne.mlir:523:13
	stores.w r3, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	beq r2, zero, .LBB0_353
.LBB0_356:                              # %vector.body119
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	add.ul r[1:2], r[10:11], r[26:27]
	slli r1, r1, 2
	add.s r3, r14, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	and r5, r2, r6
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	setlt.u r3, r7, r5
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r3, zero, .LBB0_358
# %bb.357:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_356 Depth=3
	or r3, r2, r21
.LBB0_359:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r4, zero, .LBB0_361
# %bb.360:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_356 Depth=3
	or r13, r22, r21
.LBB0_362:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r4, zero, .LBB0_364
# %bb.363:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_365
.LBB0_364:                              #   in Loop: Header=BB0_356 Depth=3
	or r18, r9, r21
.LBB0_365:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	and r19, r23, r6
	setlt.u r4, r7, r19
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r4, zero, .LBB0_367
# %bb.366:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 520 19 is_stmt 1              # parallel-rne.mlir:520:19
	setlt.u r19, r17, r19
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	beq r19, zero, .LBB0_368
	j .LBB0_369
.LBB0_367:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 520 19 is_stmt 1              # parallel-rne.mlir:520:19
	setlt.u r19, r17, r19
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r19, zero, .LBB0_369
.LBB0_368:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_369:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	setlt.u r19, r17, r28
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	beq r19, zero, .LBB0_372
# %bb.370:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	beq r9, zero, .LBB0_373
.LBB0_371:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r17, r5
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r5, zero, .LBB0_355
	j .LBB0_374
.LBB0_372:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r9, zero, .LBB0_371
.LBB0_373:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r5, r17, r5
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r5, zero, .LBB0_355
.LBB0_374:                              # %vector.body119
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_355
.LBB0_375:                              #   in Loop: Header=BB0_7 Depth=1
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 500 7 is_stmt 1               # parallel-rne.mlir:500:7
	mfence { sm }
	.loc	1 528 7                         # parallel-rne.mlir:528:7
	addli r1, zero, 5
	bneq r20, r1, .LBB0_254
.LBB0_376:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 528 7                         # parallel-rne.mlir:528:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_378
.LBB0_377:                              # %middle.block114
                                        #   in Loop: Header=BB0_378 Depth=2
	.loc	1 535 9 is_stmt 1               # parallel-rne.mlir:535:9
	load.d r[1:2], -328(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_399
.LBB0_378:                              # %.preheader40
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_380 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[26:27], r[2:3], r11
	zext_int2long r[10:11], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	j .LBB0_380
.LBB0_379:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 536 11 is_stmt 1              # parallel-rne.mlir:536:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r1, r15, r1
	.loc	1 536 11                        # parallel-rne.mlir:536:11
	setneq.d r2, r[10:11], r[24:25]
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r3, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 536 11                        # parallel-rne.mlir:536:11
	beq r2, zero, .LBB0_377
.LBB0_380:                              # %vector.body110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_378 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	add.ul r[1:2], r[10:11], r[26:27]
	slli r1, r1, 2
	add.s r3, r14, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	and r5, r2, r6
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	setlt.u r3, r7, r5
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r3, zero, .LBB0_382
# %bb.381:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_380 Depth=3
	or r3, r2, r21
.LBB0_383:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r4, zero, .LBB0_385
# %bb.384:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_380 Depth=3
	or r13, r22, r21
.LBB0_386:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r4, zero, .LBB0_388
# %bb.387:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_380 Depth=3
	or r18, r9, r21
.LBB0_389:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	and r19, r23, r6
	setlt.u r4, r7, r19
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r4, zero, .LBB0_391
# %bb.390:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 548 19 is_stmt 1              # parallel-rne.mlir:548:19
	setlt.u r19, r17, r19
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r19, zero, .LBB0_392
	j .LBB0_393
.LBB0_391:                              #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 548 19 is_stmt 1              # parallel-rne.mlir:548:19
	setlt.u r19, r17, r19
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r19, zero, .LBB0_393
.LBB0_392:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_393:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	setlt.u r19, r17, r28
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r19, zero, .LBB0_396
# %bb.394:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r9, zero, .LBB0_397
.LBB0_395:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r17, r5
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r5, zero, .LBB0_379
	j .LBB0_398
.LBB0_396:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r9, zero, .LBB0_395
.LBB0_397:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r5, r17, r5
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r5, zero, .LBB0_379
.LBB0_398:                              # %vector.body110
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_379
.LBB0_399:                              #   in Loop: Header=BB0_7 Depth=1
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 528 7 is_stmt 1               # parallel-rne.mlir:528:7
	mfence { sm }
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	addli r1, zero, 6
	bneq r20, r1, .LBB0_255
.LBB0_400:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 96
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_402
.LBB0_401:                              # %middle.block105
                                        #   in Loop: Header=BB0_402 Depth=2
	.loc	1 563 9 is_stmt 1               # parallel-rne.mlir:563:9
	load.d r[1:2], -336(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_423
.LBB0_402:                              # %.preheader39
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[19:20], r[2:3], r11
	zext_int2long r[26:27], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	j .LBB0_404
.LBB0_403:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 564 11 is_stmt 1              # parallel-rne.mlir:564:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	add.s r1, r15, r1
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	setneq.d r2, r[26:27], r[24:25]
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	stores.w r3, 12(r1)
	stores.w r13, 8(r1)
	stores.w r18, 4(r1)
	stores.w r4, 0(r1)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	beq r2, zero, .LBB0_401
.LBB0_404:                              # %vector.body101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_402 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.ul r[1:2], r[26:27], r[19:20]
	slli r1, r1, 2
	add.s r3, r14, r1
	loads.w r2, 12(r3)
	loads.w r23, 0(r3)
	loads.w r9, 4(r3)
	loads.w r22, 8(r3)
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	and r5, r2, r6
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	setlt.u r3, r7, r5
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r3, zero, .LBB0_406
# %bb.405:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	or r3, r2, r21
.LBB0_407:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	and r12, r22, r6
	setlt.u r4, r7, r12
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r4, zero, .LBB0_409
# %bb.408:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r22, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_404 Depth=3
	or r13, r22, r21
.LBB0_410:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	and r28, r9, r6
	setlt.u r4, r7, r28
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r4, zero, .LBB0_412
# %bb.411:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_404 Depth=3
	or r18, r9, r21
.LBB0_413:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	and r10, r23, r6
	setlt.u r4, r7, r10
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r4, zero, .LBB0_415
# %bb.414:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r23, 0
	.loc	1 576 19 is_stmt 1              # parallel-rne.mlir:576:19
	setlt.u r10, r17, r10
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	beq r10, zero, .LBB0_416
	j .LBB0_417
.LBB0_415:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r23, r21
	.loc	1 576 19 is_stmt 1              # parallel-rne.mlir:576:19
	setlt.u r10, r17, r10
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r10, zero, .LBB0_417
.LBB0_416:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r16
	and r4, r4, r8
.LBB0_417:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	setlt.u r10, r17, r28
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	beq r10, zero, .LBB0_420
# %bb.418:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r17, r12
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	beq r9, zero, .LBB0_421
.LBB0_419:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r17, r5
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r5, zero, .LBB0_403
	j .LBB0_422
.LBB0_420:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r9, 16
	andi r10, r10, 1
	add.s r9, r9, r10
	add.s r9, r9, r16
	and r18, r9, r8
	setlt.u r9, r17, r12
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r9, zero, .LBB0_419
.LBB0_421:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r16
	and r13, r9, r8
	setlt.u r5, r17, r5
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r5, zero, .LBB0_403
.LBB0_422:                              # %vector.body101
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r16
	and r3, r2, r8
	j .LBB0_403
.LBB0_423:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	mfence { sm }
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	bneq r20, r11, .LBB0_448
.LBB0_424:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_426
.LBB0_425:                              # %middle.block
                                        #   in Loop: Header=BB0_426 Depth=2
	.loc	1 591 9 is_stmt 1               # parallel-rne.mlir:591:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_447
.LBB0_426:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_428
.LBB0_427:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 592 11 is_stmt 1              # parallel-rne.mlir:592:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	add.s r2, r15, r5
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	setneq.d r1, r[19:20], r[24:25]
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	stores.w r3, 12(r2)
	stores.w r22, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	beq r1, zero, .LBB0_425
.LBB0_428:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.ul r[1:2], r[19:20], r[10:11]
	slli r5, r1, 2
	add.s r1, r14, r5
	loads.w r26, 12(r1)
	loads.w r27, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	and r13, r26, r6
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	setlt.u r1, r7, r13
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r1, zero, .LBB0_430
# %bb.429:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r26, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	or r3, r26, r21
.LBB0_431:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r12, r23, r6
	setlt.u r1, r7, r12
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r1, zero, .LBB0_433
# %bb.432:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_428 Depth=3
	or r22, r23, r21
.LBB0_434:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r28, r9, r6
	setlt.u r1, r7, r28
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r1, zero, .LBB0_436
# %bb.435:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_428 Depth=3
	or r18, r9, r21
.LBB0_437:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r1, r27, r6
	setlt.u r2, r7, r1
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r2, zero, .LBB0_439
# %bb.438:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r27, 0
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r1, r17, r1
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r1, zero, .LBB0_440
	j .LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r27, r21
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r1, r17, r1
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_441
.LBB0_440:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r16
	and r4, r1, r8
.LBB0_441:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	setlt.u r1, r17, r28
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r1, zero, .LBB0_444
# %bb.442:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r12
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r1, zero, .LBB0_445
.LBB0_443:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r17, r13
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_427
	j .LBB0_446
.LBB0_444:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r16
	and r18, r1, r8
	setlt.u r1, r17, r12
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_443
.LBB0_445:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r16
	and r22, r1, r8
	setlt.u r1, r17, r13
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_427
.LBB0_446:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r3, r1, r8
	j .LBB0_427
.LBB0_447:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r20
	addli r26, zero, 64
	addli r2, zero, 3
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	mfence { sm }
.LBB0_448:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	beq r20, r2, .LBB0_5
# %bb.449:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[11:12], -384(r30)              # 8-byte Folded Reload
	.loc	1 622 7 is_stmt 1               # parallel-rne.mlir:622:7
	bneq r20, zero, .LBB0_6
# %bb.450:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	load.d r[4:5], -416(r30)                # 8-byte Folded Reload
	addli r3, zero, 18
	load.d r[13:14], 24(r30)
	sext_int2long r[1:2], r1
	sll.d r[3:4], r[4:5], r3
	addli r5, zero, 12
	min.sl r[9:10], r[1:2], r[9:10]
	xwait r5, 0
	add.ul r[3:4], r[13:14], r[3:4]
	load.d r[13:14], -408(r30)              # 8-byte Folded Reload
	ori r5, r15, 64
	addli.d r[9:10], r[9:10], 128
	add.ul r[3:4], r[3:4], r[13:14]
	max.sl r[9:10], r[9:10], r[1:2]
	sub.sl r[1:2], r[9:10], r[1:2]
	addli r9, zero, 5
	addli r10, zero, 1
	lock zero, r9
	.loc	1 618 13 is_stmt 1              # parallel-rne.mlir:618:13
	min.sl r[1:2], r[1:2], r[24:25]
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r4, zero, zero, 2
	dma_cfg r3, r5, r26, 3
	load.d r[4:5], -400(r30)                # 8-byte Folded Reload
	addli r3, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r3, r3, 5
	dma_cfg r26, r5, r3, 4
	andi r3, r4, 62
	addli r4, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r4, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r1, 0
	j .LBB0_6
.LBB0_451:                              # %._crit_edge
	.loc	1 624 5                         # parallel-rne.mlir:624:5
	xsignal zero, 0
	bneq r20, zero, .LBB0_453
# %bb.452:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 624 5                         # parallel-rne.mlir:624:5
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
.LBB0_453:
	.loc	1 625 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:625:5
	addli sp, sp, 440
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
	.long	504                             # 0x1f8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-qtos2m9v" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
