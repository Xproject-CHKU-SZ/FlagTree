	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-pp151sa1" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -512
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r10
	addli r30, sp, 448
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
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
	addli r1, zero, 14
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
	addli r2, zero, 19
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
	addli r1, zero, 17
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
	ble.s r2, r1, .LBB0_453
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 44 11 is_stmt 1               # parallel-rne.mlir:44:11
	sext_int2long r[8:9], r1
	lui r1, 15
	addli r23, zero, 0
	addli r11, zero, 64
	addli r12, zero, 4
	addli r22, zero, 7
	addli r14, zero, 5
	addli r18, zero, 17
	addli r19, zero, 1
	addli r20, zero, 6
	lui r17, 1024
	lui r21, 522240
	lui r7, 1048560
	addli r15, zero, 0
	storeli.w zero, -276(r30)               # 4-byte Folded Spill
	store.d r[2:3], -440(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -448(r30)               # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r16, r2, 4095
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r5, r1, 4095
	lui r1, 7
	ori r6, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r1, zero, 12
	addli r23, r14, 0
	xsignal r1, 0
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r1, zero, 17
.LBB0_6:                                # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -392(r30)                # 8-byte Folded Reload
	.loc	1 53 5 is_stmt 1                # parallel-rne.mlir:53:5
	load.d r[1:2], -440(r30)                # 8-byte Folded Reload
	loadli.w r15,  -396(r30)                # 4-byte Folded Reload
	addli r11, zero, 64
	addli r12, zero, 4
	addli r22, zero, 7
	addli r14, zero, 5
	addli r18, zero, 17
	addli r19, zero, 1
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[1:2]
	beq r1, zero, .LBB0_453
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_43 Depth 3
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_68 Depth 3
                                        #     Child Loop BB0_91 Depth 2
                                        #       Child Loop BB0_93 Depth 3
                                        #     Child Loop BB0_116 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_166 Depth 2
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_193 Depth 3
                                        #     Child Loop BB0_216 Depth 2
                                        #       Child Loop BB0_218 Depth 3
                                        #     Child Loop BB0_246 Depth 2
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
	bneq r10, r12, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[8:9], -392(r30)               # 8-byte Folded Spill
	addli r10, zero, 8
	addli r13, zero, 3
	addli r1, zero, 0
	addli r2, zero, 0
	div.s r3, r8, r3
	div.s r3, r3, r4
	div.s r4, r3, r11
	slli r8, r4, 3
	slli r4, r4, 6
	sub.s r9, r12, r8
	min.s r9, r9, r10
	mod.s r10, r3, r9
	sub.s r3, r3, r4
	mod.s r4, r15, r14
	addli r15, r15, 1
	div.s r3, r3, r9
	storeli.w r15, -396(r30)                # 4-byte Folded Spill
	add.s r8, r8, r10
	slli r15, r4, 16
	zext_int2long r[9:10], r3
	slli r3, r3, 7
	zext_int2long r[11:12], r8
	storeli.w r3, -376(r30)                 # 4-byte Folded Spill
	slli r3, r8, 7
	store.d r[11:12], -424(r30)             # 8-byte Folded Spill
	storeli.w r3, -428(r30)                 # 4-byte Folded Spill
	sll.d r[3:4], r[9:10], r22
	sll.d r[10:11], r[11:12], r18
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	sll.d r[8:9], r[3:4], r19
	load.d r[3:4], -448(r30)                # 8-byte Folded Reload
	store.d r[10:11], -296(r30)             # 8-byte Folded Spill
	store.d r[8:9], -408(r30)               # 8-byte Folded Spill
	and.d r[3:4], r[10:11], r[3:4]
	store.d r[3:4], -304(r30)               # 8-byte Folded Spill
	load.d r[3:4], 8(r30)
	add.ul r[3:4], r[3:4], r[8:9]
	store.d r[3:4], -312(r30)               # 8-byte Folded Spill
	addli r4, r23, 0
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 80
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	lock zero, r26
	addli r14, zero, 256
	dma_cfg r19, r19, zero, 0
	ori r4, r4, 64
	dma_cfg zero, r24, zero, 2
	add.s r4, r8, r4
	addli r8, zero, 2
	dma_cfg r4, r23, r9, 3
	addli r23, zero, 128
	addli r4, zero, 2048
	dma_cfg r23, r9, r8, 4
	dma_cfg r14, r4, r22, 5
	addli r4, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r26
	lock zero, r28
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r18, 10
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
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r9, 3
	dma_cfg r23, zero, r8, 4
	dma_cfg r14, zero, r22, 5
	addli r14, r10, 0
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r28
	xsignal r8, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
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
.LBB0_13:                               # %.thread34
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r2, r2, 1
	addli r3, zero, 16
	beq r2, r3, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 3
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r1, r1, 1
	addli r4, r14, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[23:24], r2
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	load.d r[10:11], -296(r30)              # 8-byte Folded Reload
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	load.d r[27:28], -304(r30)              # 8-byte Folded Reload
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	sll.d r[8:9], r[23:24], r20
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[25:26], r[8:9], r[10:11]
	zext_int2long r[8:9], r3
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r3, r[8:9], r[25:26]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r3, zero, 14
	loadli.w r8,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r9, zero, 24
	addli r12, zero, 384
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r14, r4, 1
	mod.s r3, r4, r3
	zext_int2long r[10:11], r12
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r9, r8, r9
	addli r8, r8, 1
	store.d r[10:11], -288(r30)             # 8-byte Folded Spill
	storeli.w r8, -276(r30)                 # 4-byte Folded Spill
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r8, r3, 15
	lui r3, 80
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r22, r9, 15
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r9, zero, 2
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	add.s r3, r8, r3
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r12, r9, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, r14, 0
	addli r19, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r12, r19, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 1024
	sub.sl r[22:23], r[25:26], r[27:28]
	load.d r[13:14], -288(r30)              # 8-byte Folded Reload
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[24:25], r[25:26], r19
	addli r18, zero, 7
	addli r11, zero, 13
	zext_int2long r[27:28], r9
	addli r9, zero, 64
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[22:23], r[22:23], r[27:28]
	min.sl r[27:28], r[22:23], r[13:14]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[13:14], 0(r30)
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sub.sl r[26:27], r[27:28], r[22:23]
	addli r28, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	add.ul r[23:24], r[13:14], r[24:25]
	addli r13, zero, 19
	addli r22, r26, 128
	addli r27, zero, 3
	addli r26, zero, 4
	xwait r27, 0
	blt.s r11, r4, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	lock zero, r28
	addli r25, zero, 2
	addli r4, zero, 8
	addli r14, zero, 256
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r18, 10
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
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r9, 3
	dma_cfg r4, zero, r25, 4
	dma_cfg r14, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r28
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	addli r28, zero, 5
	addli r23, zero, 128
	addli r27, zero, 3
	addli r26, zero, 4
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	xwait r4, 0
	xwait r28, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r22, r3, r4, 1
	unlock zero
	xsignal r27, 0
	xsignal r26, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -108(r30)
	addli r9, zero, 14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -272(r30)
	addli r8, zero, 40
	addli r27, zero, 7
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r9, r4, r9
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r8, r3, r8
	addli r3, r3, 1
	storeli.w r3, -272(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r3, 192
	slli r18, r9, 15
	addli r9, r4, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r8, r8, 15
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	add.s r3, r18, r3
	storeli.w r9, -108(r30)
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r12, r27, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r25, zero, 64
	addli r26, zero, 4
	addli r28, zero, 5
	addli r14, r10, 0
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	bneq r12, r20, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r22, zero, 17
	addli r11, zero, 13
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	sll.d r[8:9], r[23:24], r22
	load.d r[23:24], -312(r30)              # 8-byte Folded Reload
	xwait r27, 0
	add.ul r[8:9], r[23:24], r[8:9]
	addli r23, zero, 128
	blt.s r11, r4, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	lock zero, r28
	addli r19, zero, 1
	addli r4, zero, 2
	addli r14, r10, 0
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r27, 10
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
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r22, 10
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
	addli r4, zero, 512
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r25, 3
	dma_cfg r23, zero, r26, 4
	dma_cfg r4, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r28
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 192
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r26
	ori r4, r4, 64
	add.s r4, r18, r4
	addli r18, zero, 1
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r4, r8, r25, 3
	addli r8, zero, 512
	addli r4, zero, 2048
	dma_cfg r23, r25, r26, 4
	dma_cfg r8, r4, r25, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r26
	lock zero, r28
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r27, 10
	addli r27, zero, 3
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
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r22, 10
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
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r25, 3
	dma_cfg r23, zero, r26, 4
	dma_cfg r8, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r28
	xsignal r20, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 9
	xwait r20, 0
	addli r23, zero, 128
	addli r26, zero, 4
	addli r28, zero, 5
	addli r14, r10, 0
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r23, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r8, r3, r4, 2
	addli r3, zero, 8
	unlock zero
	xsignal r27, 0
	addli r27, zero, 3
	xsignal r3, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	bneq r12, r26, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 8
	xwait r26, 0
	addli r23, zero, 128
	addli r27, zero, 3
	addli r4, zero, 1
	addli r9, zero, 0
	xwait r3, 0
	addli r3, zero, 1
	beq r1, zero, .LBB0_31
.LBB0_30:                               # %.preheader57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r9, 14
	slli r9, r9, 8
	lock zero, r3
	mm_cfg r25, r25, r23, 0
	or r12, r12, r8
	or r9, r9, r15
	mm_cfg r26, r26, r3, 2
	mm_acc r9, r22, r12, 8
	andi r12, r4, 1
	addli r9, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r12, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r9, 14
	slli r9, r9, 8
	lock zero, r3
	mm_cfg r25, r25, r23, 0
	or r12, r12, r8
	or r9, r9, r15
	mm_cfg r26, r26, r3, 2
	mm r9, r22, r12, 8
	andi r12, r4, 1
	addli r9, zero, 1
	addli r4, zero, 0
	unlock r3
	bneq r12, zero, .LBB0_31
.LBB0_32:                               # %.thread34.thread81
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 9
	xsignal r28, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r2, r2, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	xsignal r3, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r3, zero, 16
	bneq r2, r3, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread34.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, r2, 1
	addli r23, zero, 128
	addli r27, zero, 3
	addli r3, zero, 16
	bneq r2, r3, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r12, r26, .LBB0_36
.LBB0_35:                               # %.thread83
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_36:                               # %.thread80
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	loadli.w r2,  -48(r30)
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r1,  -24(r30)
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	addli r2, r2, 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	addli r3, r1, 1
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	storeli.w r2, -48(r30)
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	storeli.w r3, -24(r30)
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	bneq r10, r27, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r2, zero, 17
	xwait r2, 0
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r1, r1, r28
	lui r2, 304
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	xfence
	zext_int2long r[27:28], r23
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r3, zero, 255
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	mfence { lm, sm, gm }
	ori r2, r2, 2560
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	csr_set csr5, r3
	slli r1, r1, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r24, r1, r2
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	store.d r[1:2], -368(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 151 7 is_stmt 1               # parallel-rne.mlir:151:7
	bneq r10, zero, .LBB0_63
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	xfence
	addli r11, r14, 0
	mfence { lm, sm, gm }
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_41
.LBB0_40:                               # %middle.block233
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_62
.LBB0_41:                               # %.preheader55
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[19:20], -304(r30)              # 8-byte Folded Reload
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[2:3], r1
	j .LBB0_43
.LBB0_42:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r3, r24, r3
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setneq.d r2, r[19:20], r[27:28]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r8, 12(r3)
	stores.w r25, 8(r3)
	stores.w r9, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r2, zero, .LBB0_40
.LBB0_43:                               # %vector.body229
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[1:2], r[19:20], r[13:14]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r22, 12(r1)
	loads.w r4, 0(r1)
	loads.w r18, 4(r1)
	loads.w r26, 8(r1)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r23, r22, r5
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r1, r21, r23
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_45
# %bb.44:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r22, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=3
	or r8, r22, r17
.LBB0_46:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	and r12, r26, r5
	setlt.u r1, r21, r12
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_48
# %bb.47:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r26, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=3
	or r25, r26, r17
.LBB0_49:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	and r2, r18, r5
	setlt.u r1, r21, r2
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_51
# %bb.50:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_43 Depth=3
	or r9, r18, r17
.LBB0_52:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	and r10, r4, r5
	setlt.u r1, r21, r10
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r4, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r10, r16, r10
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r10, zero, .LBB0_55
	j .LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r4, r17
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r10, r16, r10
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r10, zero, .LBB0_56
.LBB0_55:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r1, r1, r7
.LBB0_56:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r2, r16, r2
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r2, zero, .LBB0_59
# %bb.57:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r16, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r2, zero, .LBB0_60
.LBB0_58:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r16, r23
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r2, zero, .LBB0_42
	j .LBB0_61
.LBB0_59:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r6
	and r9, r2, r7
	setlt.u r2, r16, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r2, zero, .LBB0_58
.LBB0_60:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r6
	and r25, r2, r7
	setlt.u r2, r16, r23
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r2, zero, .LBB0_42
.LBB0_61:                               # %vector.body229
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r6
	and r8, r2, r7
	j .LBB0_42
.LBB0_62:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	addli r14, r11, 0
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	mfence { sm }
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	storeli.w r14, -380(r30)                # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	store.d r[1:2], -296(r30)               # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r10, r1, .LBB0_88
# %bb.64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_66
.LBB0_65:                               # %middle.block224
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_87
.LBB0_66:                               # %.preheader54
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_68
.LBB0_67:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	add.s r2, r24, r3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setneq.d r1, r[13:14], r[27:28]
	.loc	1 202 13                        # parallel-rne.mlir:202:13
	stores.w r8, 12(r2)
	stores.w r22, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r1, zero, .LBB0_65
.LBB0_68:                               # %vector.body220
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[1:2], r[13:14], r[10:11]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r19, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	and r20, r19, r5
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	setlt.u r1, r21, r20
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_70
# %bb.69:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r8, r19, r17
.LBB0_71:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	and r12, r23, r5
	setlt.u r1, r21, r12
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_73
# %bb.72:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r22, r23, r17
.LBB0_74:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r1, zero, .LBB0_76
# %bb.75:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r18, r9, r17
.LBB0_77:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	bneq r2, zero, .LBB0_79
# %bb.78:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r1, r16, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_80
	j .LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 199 19 is_stmt 1              # parallel-rne.mlir:199:19
	setlt.u r1, r16, r1
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_81
.LBB0_80:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_81:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r1, r16, r26
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_84
# %bb.82:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	beq r1, zero, .LBB0_85
.LBB0_83:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r20
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_67
	j .LBB0_86
.LBB0_84:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_83
.LBB0_85:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r6
	and r22, r1, r7
	setlt.u r1, r16, r20
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r1, zero, .LBB0_67
.LBB0_86:                               # %vector.body220
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 47
	zext_int2long r[1:2], r1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	addli r1, zero, 2
	bneq r10, r1, .LBB0_113
# %bb.89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 207 7                         # parallel-rne.mlir:207:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_91
.LBB0_90:                               # %middle.block215
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 214 9 is_stmt 1               # parallel-rne.mlir:214:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_112
.LBB0_91:                               # %.preheader53
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	store.d r[2:3], -312(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_93
.LBB0_92:                               # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 215 11 is_stmt 1              # parallel-rne.mlir:215:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	add.s r2, r24, r3
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	setneq.d r1, r[13:14], r[27:28]
	.loc	1 230 13                        # parallel-rne.mlir:230:13
	stores.w r8, 12(r2)
	stores.w r22, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 215 11                        # parallel-rne.mlir:215:11
	beq r1, zero, .LBB0_90
.LBB0_93:                               # %vector.body211
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	add.ul r[1:2], r[13:14], r[10:11]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r19, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r20, r19, r5
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	setlt.u r1, r21, r20
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r1, zero, .LBB0_95
# %bb.94:                               # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r8, r19, r17
.LBB0_96:                               # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	and r12, r23, r5
	setlt.u r1, r21, r12
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r1, zero, .LBB0_98
# %bb.97:                               # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r22, r23, r17
.LBB0_99:                               # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r1, zero, .LBB0_101
# %bb.100:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r18, r9, r17
.LBB0_102:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	bneq r2, zero, .LBB0_104
# %bb.103:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r1, r16, r1
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r1, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 227 19 is_stmt 1              # parallel-rne.mlir:227:19
	setlt.u r1, r16, r1
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_106
.LBB0_105:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_106:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r1, r16, r26
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r1, zero, .LBB0_109
# %bb.107:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	beq r1, zero, .LBB0_110
.LBB0_108:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r20
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_108
.LBB0_110:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r6
	and r22, r1, r7
	setlt.u r1, r16, r20
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	bneq r1, zero, .LBB0_92
.LBB0_111:                              # %vector.body211
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_92
.LBB0_112:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 207 7 is_stmt 1               # parallel-rne.mlir:207:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	.loc	1 235 7 is_stmt 1               # parallel-rne.mlir:235:7
	store.d r[1:2], -312(r30)               # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r10, r1, .LBB0_138
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 235 7                         # parallel-rne.mlir:235:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_116
.LBB0_115:                              # %middle.block206
                                        #   in Loop: Header=BB0_116 Depth=2
	.loc	1 242 9 is_stmt 1               # parallel-rne.mlir:242:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[3:4], -320(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_137
.LBB0_116:                              # %.preheader52
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	store.d r[2:3], -320(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_118
.LBB0_117:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	add.s r2, r24, r3
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	setneq.d r1, r[13:14], r[27:28]
	.loc	1 258 13                        # parallel-rne.mlir:258:13
	stores.w r8, 12(r2)
	stores.w r22, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	beq r1, zero, .LBB0_115
.LBB0_118:                              # %vector.body202
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[1:2], r[13:14], r[10:11]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r19, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	and r20, r19, r5
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	setlt.u r1, r21, r20
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_120
# %bb.119:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	or r8, r19, r17
.LBB0_121:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	and r12, r23, r5
	setlt.u r1, r21, r12
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_123
# %bb.122:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	or r22, r23, r17
.LBB0_124:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r1, zero, .LBB0_126
# %bb.125:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	or r18, r9, r17
.LBB0_127:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	bneq r2, zero, .LBB0_129
# %bb.128:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r1, r16, r1
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r1, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 255 19 is_stmt 1              # parallel-rne.mlir:255:19
	setlt.u r1, r16, r1
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_131
.LBB0_130:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_131:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r1, r16, r26
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r1, zero, .LBB0_134
# %bb.132:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	beq r1, zero, .LBB0_135
.LBB0_133:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r20
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_133
.LBB0_135:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r6
	and r22, r1, r7
	setlt.u r1, r16, r20
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	bneq r1, zero, .LBB0_117
.LBB0_136:                              # %vector.body202
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_117
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 235 7 is_stmt 1               # parallel-rne.mlir:235:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 79
	zext_int2long r[1:2], r1
	.loc	1 263 7 is_stmt 1               # parallel-rne.mlir:263:7
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	addli r1, zero, 4
	bneq r10, r1, .LBB0_163
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 263 7                         # parallel-rne.mlir:263:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block197
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 270 9 is_stmt 1               # parallel-rne.mlir:270:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[3:4], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_162
.LBB0_141:                              # %.preheader51
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	store.d r[2:3], -328(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_143
.LBB0_142:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 271 11 is_stmt 1              # parallel-rne.mlir:271:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	add.s r2, r24, r3
	.loc	1 271 11                        # parallel-rne.mlir:271:11
	setneq.d r1, r[13:14], r[27:28]
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	stores.w r8, 12(r2)
	stores.w r22, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 271 11                        # parallel-rne.mlir:271:11
	beq r1, zero, .LBB0_140
.LBB0_143:                              # %vector.body193
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	add.ul r[1:2], r[13:14], r[10:11]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r19, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	and r20, r19, r5
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	setlt.u r1, r21, r20
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r1, zero, .LBB0_145
# %bb.144:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	or r8, r19, r17
.LBB0_146:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	and r12, r23, r5
	setlt.u r1, r21, r12
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r1, zero, .LBB0_148
# %bb.147:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_143 Depth=3
	or r22, r23, r17
.LBB0_149:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=3
	or r18, r9, r17
.LBB0_152:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r2, zero, .LBB0_154
# %bb.153:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 283 19 is_stmt 1              # parallel-rne.mlir:283:19
	setlt.u r1, r16, r1
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r1, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 283 19 is_stmt 1              # parallel-rne.mlir:283:19
	setlt.u r1, r16, r1
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_156
.LBB0_155:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_156:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	setlt.u r1, r16, r26
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r1, zero, .LBB0_159
# %bb.157:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r1, zero, .LBB0_160
.LBB0_158:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r20
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_142
	j .LBB0_161
.LBB0_159:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_158
.LBB0_160:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r6
	and r22, r1, r7
	setlt.u r1, r16, r20
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r1, zero, .LBB0_142
.LBB0_161:                              # %vector.body193
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_142
.LBB0_162:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 263 7 is_stmt 1               # parallel-rne.mlir:263:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 95
	zext_int2long r[1:2], r1
	.loc	1 291 7 is_stmt 1               # parallel-rne.mlir:291:7
	store.d r[1:2], -328(r30)               # 8-byte Folded Spill
	addli r1, zero, 5
	bneq r10, r1, .LBB0_188
# %bb.164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 291 7                         # parallel-rne.mlir:291:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_166
.LBB0_165:                              # %middle.block188
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 298 9 is_stmt 1               # parallel-rne.mlir:298:9
	load.d r[1:2], -328(r30)                # 8-byte Folded Reload
	load.d r[3:4], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_187
.LBB0_166:                              # %.preheader50
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	store.d r[2:3], -336(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r1
	j .LBB0_168
.LBB0_167:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 299 11 is_stmt 1              # parallel-rne.mlir:299:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 314 13                        # parallel-rne.mlir:314:13
	add.s r2, r24, r3
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	setneq.d r1, r[13:14], r[27:28]
	.loc	1 314 13                        # parallel-rne.mlir:314:13
	stores.w r8, 12(r2)
	stores.w r22, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	beq r1, zero, .LBB0_165
.LBB0_168:                              # %vector.body184
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.ul r[1:2], r[13:14], r[10:11]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r19, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r20, r19, r5
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	setlt.u r1, r21, r20
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_170
# %bb.169:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	or r8, r19, r17
.LBB0_171:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	and r12, r23, r5
	setlt.u r1, r21, r12
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_173
# %bb.172:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	or r22, r23, r17
.LBB0_174:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_176
# %bb.175:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	or r18, r9, r17
.LBB0_177:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 311 19 is_stmt 1              # parallel-rne.mlir:311:19
	setlt.u r1, r16, r1
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r1, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 311 19 is_stmt 1              # parallel-rne.mlir:311:19
	setlt.u r1, r16, r1
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_181
.LBB0_180:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_181:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r1, r16, r26
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r1, zero, .LBB0_184
# %bb.182:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r1, zero, .LBB0_185
.LBB0_183:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r20
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_167
	j .LBB0_186
.LBB0_184:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_183
.LBB0_185:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r6
	and r22, r1, r7
	setlt.u r1, r16, r20
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r1, zero, .LBB0_167
.LBB0_186:                              # %vector.body184
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_167
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 291 7 is_stmt 1               # parallel-rne.mlir:291:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 111
	zext_int2long r[1:2], r1
	.loc	1 319 7 is_stmt 1               # parallel-rne.mlir:319:7
	store.d r[1:2], -336(r30)               # 8-byte Folded Spill
	bneq r10, r20, .LBB0_213
# %bb.189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 96
	.loc	1 319 7                         # parallel-rne.mlir:319:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_191
.LBB0_190:                              # %middle.block179
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 326 9 is_stmt 1               # parallel-rne.mlir:326:9
	load.d r[1:2], -336(r30)                # 8-byte Folded Reload
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_212
.LBB0_191:                              # %.preheader49
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -344(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[2:3], r1
	j .LBB0_193
.LBB0_192:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 327 11 is_stmt 1              # parallel-rne.mlir:327:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	add.s r2, r24, r3
	.loc	1 327 11                        # parallel-rne.mlir:327:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 327 11                        # parallel-rne.mlir:327:11
	beq r1, zero, .LBB0_190
.LBB0_193:                              # %vector.body175
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	add.ul r[1:2], r[19:20], r[13:14]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r22, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r23, 8(r1)
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	and r10, r22, r5
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	setlt.u r1, r21, r10
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r1, zero, .LBB0_195
# %bb.194:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r22, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r8, r22, r17
.LBB0_196:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	and r12, r23, r5
	setlt.u r1, r21, r12
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r1, zero, .LBB0_198
# %bb.197:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r23, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r11, r23, r17
.LBB0_199:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r1, zero, .LBB0_201
# %bb.200:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r18, r9, r17
.LBB0_202:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r2, zero, .LBB0_204
# %bb.203:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 339 19 is_stmt 1              # parallel-rne.mlir:339:19
	setlt.u r1, r16, r1
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	beq r1, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 339 19 is_stmt 1              # parallel-rne.mlir:339:19
	setlt.u r1, r16, r1
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r1, zero, .LBB0_206
.LBB0_205:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_206:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r1, r16, r26
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	beq r1, zero, .LBB0_209
# %bb.207:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	beq r1, zero, .LBB0_210
.LBB0_208:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r10
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r1, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r1, zero, .LBB0_208
.LBB0_210:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r6
	and r11, r1, r7
	setlt.u r1, r16, r10
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	bneq r1, zero, .LBB0_192
.LBB0_211:                              # %vector.body175
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 319 7 is_stmt 1               # parallel-rne.mlir:319:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 127
	zext_int2long r[1:2], r1
	.loc	1 347 7 is_stmt 1               # parallel-rne.mlir:347:7
	store.d r[1:2], -344(r30)               # 8-byte Folded Spill
	addli r1, zero, 7
	bneq r10, r1, .LBB0_238
# %bb.214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_216
.LBB0_215:                              # %middle.block170
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 354 9 is_stmt 1               # parallel-rne.mlir:354:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_237
.LBB0_216:                              # %.preheader48
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_218 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -360(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[2:3], r1
	j .LBB0_218
.LBB0_217:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 355 11 is_stmt 1              # parallel-rne.mlir:355:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	add.s r2, r24, r3
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	beq r1, zero, .LBB0_215
.LBB0_218:                              # %vector.body166
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.ul r[1:2], r[19:20], r[22:23]
	slli r3, r1, 2
	add.s r1, r15, r3
	loads.w r25, 12(r1)
	loads.w r18, 0(r1)
	loads.w r9, 4(r1)
	loads.w r13, 8(r1)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r10, r25, r5
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	setlt.u r1, r21, r10
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r1, zero, .LBB0_220
# %bb.219:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_218 Depth=3
	or r8, r25, r17
.LBB0_221:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	and r12, r13, r5
	setlt.u r1, r21, r12
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r1, zero, .LBB0_223
# %bb.222:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_218 Depth=3
	or r11, r13, r17
.LBB0_224:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r1, zero, .LBB0_226
# %bb.225:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_218 Depth=3
	or r14, r9, r17
.LBB0_227:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	and r1, r18, r5
	setlt.u r2, r21, r1
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r2, zero, .LBB0_229
# %bb.228:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
	.loc	1 367 19 is_stmt 1              # parallel-rne.mlir:367:19
	setlt.u r1, r16, r1
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r1, zero, .LBB0_230
	j .LBB0_231
.LBB0_229:                              #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r18, r17
	.loc	1 367 19 is_stmt 1              # parallel-rne.mlir:367:19
	setlt.u r1, r16, r1
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r1, zero, .LBB0_231
.LBB0_230:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_231:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r1, r16, r26
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r1, zero, .LBB0_234
# %bb.232:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	beq r1, zero, .LBB0_235
.LBB0_233:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r10
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r1, zero, .LBB0_217
	j .LBB0_236
.LBB0_234:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r14, r1, r7
	setlt.u r1, r16, r12
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r1, zero, .LBB0_233
.LBB0_235:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r13, 16
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r6
	and r11, r1, r7
	setlt.u r1, r16, r10
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	bneq r1, zero, .LBB0_217
.LBB0_236:                              # %vector.body166
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r8, r1, r7
	j .LBB0_217
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 347 7 is_stmt 1               # parallel-rne.mlir:347:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 128
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	min.ul r[1:2], r[1:2], r[27:28]
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	store.d r[1:2], -416(r30)               # 8-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	addli r1, zero, 3
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	sync_core
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	bneq r10, r1, .LBB0_240
# %bb.239:                              # %.thread36.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	addli r1, zero, 15
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	xsignal r2, 0
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	xsignal r1, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	addli r1, zero, 16
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	xwait r2, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	xwait r1, 0
	j .LBB0_248
.LBB0_240:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r13,  -400(r30)                # 4-byte Folded Reload
	addli r2, zero, 5
	lui r3, 304
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	addli r4, zero, 1
	lui r8, 16
	mod.s r1, r13, r2
	slli r1, r1, 9
	add.s r3, r1, r3
	bneq r10, r4, .LBB0_244
# %bb.241:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], 16(r30)
	load.d r[11:12], -408(r30)              # 8-byte Folded Reload
	addli r19, zero, 19
	xwait r19, 0
	add.ul r[8:9], r[8:9], r[11:12]
	addli r11, zero, 4
	blt.s r11, r13, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	addli r12, zero, 1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r2, zero, 2
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r20, 10
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
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r19, 10
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r2, 3
	addli r2, zero, 128
	dma_cfg r2, zero, r11, 4
	addli r2, zero, 512
	dma_cfg r2, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
.LBB0_243:                              # %.thread36.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	lock zero, r11
	lui r2, 304
	addli r4, zero, 64
	addli r13, zero, 128
	addli r18, zero, 512
	dma_cfg r12, r12, zero, 0
	ori r2, r2, 64
	dma_cfg zero, r9, zero, 2
	load.d r[22:23], -416(r30)              # 8-byte Folded Reload
	add.s r1, r1, r2
	dma_cfg r1, r8, r4, 3
	addli r8, zero, 256
	addli r9, zero, 5
	addli r2, r22, 31
	srli r1, r2, 5
	slli r2, r22, 1
	dma_cfg r13, r4, r1, 4
	andi r2, r2, 62
	dma_cfg r18, r8, r12, 5
	addli r8, zero, 2
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r20, 10
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
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r4, 3
	dma_cfg r13, zero, r1, 4
	dma_cfg r18, zero, r12, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r11, 0
	.loc	1 382 7 is_stmt 1               # parallel-rne.mlir:382:7
	j .LBB0_248
.LBB0_244:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	bneq r10, r2, .LBB0_248
# %bb.245:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 15
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 18
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, r2, zero, 0
	addli r2, zero, 127
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 1
	ew_cfg r2, zero, zero, 3
.LBB0_246:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r24, r1
	addli r1, r1, 512
	dsmadd r2, r2, r3, 0
	bneq r1, r8, .LBB0_246
# %bb.247:                              # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 19
	xsignal r1, 0
.LBB0_248:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	xfence
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r1, zero, 255
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	mfence { lm, sm, gm }
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	csr_set csr5, r1
	sync_core
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	beq r10, zero, .LBB0_256
# %bb.249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 416 7                         # parallel-rne.mlir:416:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_280
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 2
	beq r10, r1, .LBB0_304
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_328
.LBB0_252:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	addli r1, zero, 4
	beq r10, r1, .LBB0_352
.LBB0_253:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 528 7                         # parallel-rne.mlir:528:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_376
.LBB0_254:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	beq r10, r20, .LBB0_400
.LBB0_255:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	addli r1, zero, 7
	beq r10, r1, .LBB0_424
	j .LBB0_448
.LBB0_256:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], -376(r30)               # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_258
.LBB0_257:                              # %middle.block161
                                        #   in Loop: Header=BB0_258 Depth=2
	.loc	1 395 9                         # parallel-rne.mlir:395:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_279
.LBB0_258:                              # %.preheader47
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_260 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[22:23], -376(r30)              # 8-byte Folded Reload
	store.d r[2:3], -360(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[2:3], r1
	j .LBB0_260
.LBB0_259:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 396 11 is_stmt 1              # parallel-rne.mlir:396:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 411 13                        # parallel-rne.mlir:411:13
	add.s r2, r15, r3
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	setneq.d r1, r[22:23], r[27:28]
	.loc	1 411 13                        # parallel-rne.mlir:411:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	beq r1, zero, .LBB0_257
.LBB0_260:                              # %vector.body157
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_258 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	add.ul r[1:2], r[22:23], r[19:20]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r4, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	and r11, r8, r5
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	setlt.u r1, r21, r11
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_262
# %bb.261:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_260 Depth=3
	or r10, r8, r17
.LBB0_263:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_265
# %bb.264:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_260 Depth=3
	or r13, r14, r17
.LBB0_266:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r1, zero, .LBB0_268
# %bb.267:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_260 Depth=3
	or r18, r9, r17
.LBB0_269:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	and r1, r4, r5
	setlt.u r2, r21, r1
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	bneq r2, zero, .LBB0_271
# %bb.270:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r4, 0
	.loc	1 408 19 is_stmt 1              # parallel-rne.mlir:408:19
	setlt.u r1, r16, r1
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	beq r1, zero, .LBB0_272
	j .LBB0_273
.LBB0_271:                              #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r25, r4, r17
	.loc	1 408 19 is_stmt 1              # parallel-rne.mlir:408:19
	setlt.u r1, r16, r1
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r1, zero, .LBB0_273
.LBB0_272:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r6
	and r25, r1, r7
.LBB0_273:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	setlt.u r1, r16, r26
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	beq r1, zero, .LBB0_276
# %bb.274:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	beq r1, zero, .LBB0_277
.LBB0_275:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r1, zero, .LBB0_259
	j .LBB0_278
.LBB0_276:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r1, zero, .LBB0_275
.LBB0_277:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	bneq r1, zero, .LBB0_259
.LBB0_278:                              # %vector.body157
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_259
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 416 7                         # parallel-rne.mlir:416:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_250
.LBB0_280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 416 7                         # parallel-rne.mlir:416:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_282
.LBB0_281:                              # %middle.block152
                                        #   in Loop: Header=BB0_282 Depth=2
	.loc	1 423 9 is_stmt 1               # parallel-rne.mlir:423:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_303
.LBB0_282:                              # %.preheader46
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_284 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -360(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[2:3], r1
	j .LBB0_284
.LBB0_283:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 424 11 is_stmt 1              # parallel-rne.mlir:424:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	add.s r2, r15, r3
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	beq r1, zero, .LBB0_281
.LBB0_284:                              # %vector.body148
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.ul r[1:2], r[19:20], r[22:23]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r11, r8, r5
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	setlt.u r1, r21, r11
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_286
# %bb.285:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_284 Depth=3
	or r10, r8, r17
.LBB0_287:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_289
# %bb.288:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_284 Depth=3
	or r13, r14, r17
.LBB0_290:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_292
# %bb.291:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_284 Depth=3
	or r18, r9, r17
.LBB0_293:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r2, zero, .LBB0_295
# %bb.294:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r1, r16, r1
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r1, zero, .LBB0_296
	j .LBB0_297
.LBB0_295:                              #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r1, r16, r1
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_297
.LBB0_296:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_297:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	setlt.u r1, r16, r26
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r1, zero, .LBB0_300
# %bb.298:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r1, zero, .LBB0_301
.LBB0_299:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_283
	j .LBB0_302
.LBB0_300:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_299
.LBB0_301:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r1, zero, .LBB0_283
.LBB0_302:                              # %vector.body148
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_283
.LBB0_303:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 416 7 is_stmt 1               # parallel-rne.mlir:416:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 2
	bneq r10, r1, .LBB0_251
.LBB0_304:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_306
.LBB0_305:                              # %middle.block143
                                        #   in Loop: Header=BB0_306 Depth=2
	.loc	1 451 9 is_stmt 1               # parallel-rne.mlir:451:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_327
.LBB0_306:                              # %.preheader45
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[2:3], r1
	j .LBB0_308
.LBB0_307:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 452 11 is_stmt 1              # parallel-rne.mlir:452:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 467 13                        # parallel-rne.mlir:467:13
	add.s r2, r15, r3
	.loc	1 452 11                        # parallel-rne.mlir:452:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 467 13                        # parallel-rne.mlir:467:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 452 11                        # parallel-rne.mlir:452:11
	beq r1, zero, .LBB0_305
.LBB0_308:                              # %vector.body139
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	add.ul r[1:2], r[19:20], r[22:23]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	and r11, r8, r5
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	setlt.u r1, r21, r11
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r1, zero, .LBB0_310
# %bb.309:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_308 Depth=3
	or r10, r8, r17
.LBB0_311:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r1, zero, .LBB0_313
# %bb.312:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_308 Depth=3
	or r13, r14, r17
.LBB0_314:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r1, zero, .LBB0_316
# %bb.315:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_308 Depth=3
	or r18, r9, r17
.LBB0_317:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r2, zero, .LBB0_319
# %bb.318:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 464 19 is_stmt 1              # parallel-rne.mlir:464:19
	setlt.u r1, r16, r1
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	beq r1, zero, .LBB0_320
	j .LBB0_321
.LBB0_319:                              #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 464 19 is_stmt 1              # parallel-rne.mlir:464:19
	setlt.u r1, r16, r1
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r1, zero, .LBB0_321
.LBB0_320:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_321:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	setlt.u r1, r16, r26
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	beq r1, zero, .LBB0_324
# %bb.322:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	beq r1, zero, .LBB0_325
.LBB0_323:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r1, zero, .LBB0_307
	j .LBB0_326
.LBB0_324:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r1, zero, .LBB0_323
.LBB0_325:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 465 19                        # parallel-rne.mlir:465:19
	bneq r1, zero, .LBB0_307
.LBB0_326:                              # %vector.body139
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_307
.LBB0_327:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 444 7 is_stmt 1               # parallel-rne.mlir:444:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_252
.LBB0_328:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_330
.LBB0_329:                              # %middle.block134
                                        #   in Loop: Header=BB0_330 Depth=2
	.loc	1 479 9 is_stmt 1               # parallel-rne.mlir:479:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_351
.LBB0_330:                              # %.preheader44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_332 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[2:3], r1
	j .LBB0_332
.LBB0_331:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 480 11 is_stmt 1              # parallel-rne.mlir:480:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r2, r15, r3
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	beq r1, zero, .LBB0_329
.LBB0_332:                              # %vector.body130
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_330 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	add.ul r[1:2], r[19:20], r[22:23]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	and r11, r8, r5
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	setlt.u r1, r21, r11
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r1, zero, .LBB0_334
# %bb.333:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_332 Depth=3
	or r10, r8, r17
.LBB0_335:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r1, zero, .LBB0_337
# %bb.336:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_332 Depth=3
	or r13, r14, r17
.LBB0_338:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r1, zero, .LBB0_340
# %bb.339:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_341
.LBB0_340:                              #   in Loop: Header=BB0_332 Depth=3
	or r18, r9, r17
.LBB0_341:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	bneq r2, zero, .LBB0_343
# %bb.342:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 492 19 is_stmt 1              # parallel-rne.mlir:492:19
	setlt.u r1, r16, r1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	beq r1, zero, .LBB0_344
	j .LBB0_345
.LBB0_343:                              #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 492 19 is_stmt 1              # parallel-rne.mlir:492:19
	setlt.u r1, r16, r1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r1, zero, .LBB0_345
.LBB0_344:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_345:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	setlt.u r1, r16, r26
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	beq r1, zero, .LBB0_348
# %bb.346:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	beq r1, zero, .LBB0_349
.LBB0_347:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r1, zero, .LBB0_331
	j .LBB0_350
.LBB0_348:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r1, zero, .LBB0_347
.LBB0_349:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r1, zero, .LBB0_331
.LBB0_350:                              # %vector.body130
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_331
.LBB0_351:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 472 7 is_stmt 1               # parallel-rne.mlir:472:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	addli r1, zero, 4
	bneq r10, r1, .LBB0_253
.LBB0_352:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_354
.LBB0_353:                              # %middle.block125
                                        #   in Loop: Header=BB0_354 Depth=2
	.loc	1 507 9 is_stmt 1               # parallel-rne.mlir:507:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_375
.LBB0_354:                              # %.preheader43
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[19:20], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[2:3], r1
	j .LBB0_356
.LBB0_355:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 508 11 is_stmt 1              # parallel-rne.mlir:508:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 523 13                        # parallel-rne.mlir:523:13
	add.s r2, r15, r3
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 523 13                        # parallel-rne.mlir:523:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	beq r1, zero, .LBB0_353
.LBB0_356:                              # %vector.body121
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	add.ul r[1:2], r[19:20], r[22:23]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	and r11, r8, r5
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	setlt.u r1, r21, r11
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r1, zero, .LBB0_358
# %bb.357:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_356 Depth=3
	or r10, r8, r17
.LBB0_359:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r1, zero, .LBB0_361
# %bb.360:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_356 Depth=3
	or r13, r14, r17
.LBB0_362:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r1, zero, .LBB0_364
# %bb.363:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_365
.LBB0_364:                              #   in Loop: Header=BB0_356 Depth=3
	or r18, r9, r17
.LBB0_365:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	bneq r2, zero, .LBB0_367
# %bb.366:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 520 19 is_stmt 1              # parallel-rne.mlir:520:19
	setlt.u r1, r16, r1
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	beq r1, zero, .LBB0_368
	j .LBB0_369
.LBB0_367:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 520 19 is_stmt 1              # parallel-rne.mlir:520:19
	setlt.u r1, r16, r1
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r1, zero, .LBB0_369
.LBB0_368:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_369:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	setlt.u r1, r16, r26
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	beq r1, zero, .LBB0_372
# %bb.370:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	beq r1, zero, .LBB0_373
.LBB0_371:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r1, zero, .LBB0_355
	j .LBB0_374
.LBB0_372:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r1, zero, .LBB0_371
.LBB0_373:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	bneq r1, zero, .LBB0_355
.LBB0_374:                              # %vector.body121
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_355
.LBB0_375:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 500 7 is_stmt 1               # parallel-rne.mlir:500:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 528 7                         # parallel-rne.mlir:528:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_254
.LBB0_376:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 528 7                         # parallel-rne.mlir:528:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_378
.LBB0_377:                              # %middle.block116
                                        #   in Loop: Header=BB0_378 Depth=2
	.loc	1 535 9 is_stmt 1               # parallel-rne.mlir:535:9
	load.d r[1:2], -328(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_399
.LBB0_378:                              # %.preheader42
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_380 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[22:23], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[2:3], r1
	j .LBB0_380
.LBB0_379:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 536 11 is_stmt 1              # parallel-rne.mlir:536:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r2, r15, r3
	.loc	1 536 11                        # parallel-rne.mlir:536:11
	setneq.d r1, r[22:23], r[27:28]
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 536 11                        # parallel-rne.mlir:536:11
	beq r1, zero, .LBB0_377
.LBB0_380:                              # %vector.body112
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_378 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	add.ul r[1:2], r[22:23], r[19:20]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	and r11, r8, r5
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	setlt.u r1, r21, r11
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r1, zero, .LBB0_382
# %bb.381:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_380 Depth=3
	or r10, r8, r17
.LBB0_383:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r1, zero, .LBB0_385
# %bb.384:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_380 Depth=3
	or r13, r14, r17
.LBB0_386:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r1, zero, .LBB0_388
# %bb.387:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_380 Depth=3
	or r18, r9, r17
.LBB0_389:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	bneq r2, zero, .LBB0_391
# %bb.390:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 548 19 is_stmt 1              # parallel-rne.mlir:548:19
	setlt.u r1, r16, r1
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r1, zero, .LBB0_392
	j .LBB0_393
.LBB0_391:                              #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 548 19 is_stmt 1              # parallel-rne.mlir:548:19
	setlt.u r1, r16, r1
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r1, zero, .LBB0_393
.LBB0_392:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_393:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	setlt.u r1, r16, r26
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r1, zero, .LBB0_396
# %bb.394:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	beq r1, zero, .LBB0_397
.LBB0_395:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r1, zero, .LBB0_379
	j .LBB0_398
.LBB0_396:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r1, zero, .LBB0_395
.LBB0_397:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	bneq r1, zero, .LBB0_379
.LBB0_398:                              # %vector.body112
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_379
.LBB0_399:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 528 7 is_stmt 1               # parallel-rne.mlir:528:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	bneq r10, r20, .LBB0_255
.LBB0_400:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 96
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_402
.LBB0_401:                              # %middle.block107
                                        #   in Loop: Header=BB0_402 Depth=2
	.loc	1 563 9 is_stmt 1               # parallel-rne.mlir:563:9
	load.d r[1:2], -336(r30)                # 8-byte Folded Reload
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_423
.LBB0_402:                              # %.preheader41
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[22:23], zero
	store.d r[2:3], -296(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[2:3], r1
	j .LBB0_404
.LBB0_403:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 564 11 is_stmt 1              # parallel-rne.mlir:564:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	add.s r2, r15, r3
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	setneq.d r1, r[22:23], r[27:28]
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	beq r1, zero, .LBB0_401
.LBB0_404:                              # %vector.body103
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_402 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.ul r[1:2], r[22:23], r[19:20]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	and r11, r8, r5
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	setlt.u r1, r21, r11
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r1, zero, .LBB0_406
# %bb.405:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	or r10, r8, r17
.LBB0_407:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r1, zero, .LBB0_409
# %bb.408:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_404 Depth=3
	or r13, r14, r17
.LBB0_410:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r1, zero, .LBB0_412
# %bb.411:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_404 Depth=3
	or r18, r9, r17
.LBB0_413:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	bneq r2, zero, .LBB0_415
# %bb.414:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 576 19 is_stmt 1              # parallel-rne.mlir:576:19
	setlt.u r1, r16, r1
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	beq r1, zero, .LBB0_416
	j .LBB0_417
.LBB0_415:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 576 19 is_stmt 1              # parallel-rne.mlir:576:19
	setlt.u r1, r16, r1
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r1, zero, .LBB0_417
.LBB0_416:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_417:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	setlt.u r1, r16, r26
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	beq r1, zero, .LBB0_420
# %bb.418:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	beq r1, zero, .LBB0_421
.LBB0_419:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r11
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r1, zero, .LBB0_403
	j .LBB0_422
.LBB0_420:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r1, zero, .LBB0_419
.LBB0_421:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r11
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	bneq r1, zero, .LBB0_403
.LBB0_422:                              # %vector.body103
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r10, r1, r7
	j .LBB0_403
.LBB0_423:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 556 7 is_stmt 1               # parallel-rne.mlir:556:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	addli r1, zero, 7
	bneq r10, r1, .LBB0_448
.LBB0_424:                              #   in Loop: Header=BB0_8 Depth=1
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
                                        #   Parent Loop BB0_8 Depth=1
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
	add.s r2, r15, r3
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	setneq.d r1, r[19:20], r[27:28]
	.loc	1 607 13                        # parallel-rne.mlir:607:13
	stores.w r22, 12(r2)
	stores.w r13, 8(r2)
	stores.w r18, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	beq r1, zero, .LBB0_425
.LBB0_428:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.ul r[1:2], r[19:20], r[10:11]
	slli r3, r1, 2
	add.s r1, r24, r3
	loads.w r8, 12(r1)
	loads.w r25, 0(r1)
	loads.w r9, 4(r1)
	loads.w r14, 8(r1)
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	and r23, r8, r5
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	setlt.u r1, r21, r23
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r1, zero, .LBB0_430
# %bb.429:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r8, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	or r22, r8, r17
.LBB0_431:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r12, r14, r5
	setlt.u r1, r21, r12
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r1, zero, .LBB0_433
# %bb.432:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_428 Depth=3
	or r13, r14, r17
.LBB0_434:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r26, r9, r5
	setlt.u r1, r21, r26
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r1, zero, .LBB0_436
# %bb.435:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_428 Depth=3
	or r18, r9, r17
.LBB0_437:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	and r1, r25, r5
	setlt.u r2, r21, r1
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	bneq r2, zero, .LBB0_439
# %bb.438:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r1, r16, r1
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r1, zero, .LBB0_440
	j .LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r17
	.loc	1 604 19 is_stmt 1              # parallel-rne.mlir:604:19
	setlt.u r1, r16, r1
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_441
.LBB0_440:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r6
	and r4, r1, r7
.LBB0_441:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	setlt.u r1, r16, r26
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r1, zero, .LBB0_444
# %bb.442:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r12
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	beq r1, zero, .LBB0_445
.LBB0_443:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r16, r23
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_427
	j .LBB0_446
.LBB0_444:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r6
	and r18, r1, r7
	setlt.u r1, r16, r12
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_443
.LBB0_445:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r6
	and r13, r1, r7
	setlt.u r1, r16, r23
	.loc	1 605 19                        # parallel-rne.mlir:605:19
	bneq r1, zero, .LBB0_427
.LBB0_446:                              # %vector.body
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r6
	and r22, r1, r7
	j .LBB0_427
.LBB0_447:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 584 7 is_stmt 1               # parallel-rne.mlir:584:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r10
	addli r20, zero, 6
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_448:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r1, zero, 3
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	sync_core
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	beq r10, r1, .LBB0_5
# %bb.449:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	addli r1, zero, 5
	addli r13, zero, 128
	addli r23, r14, 0
	bneq r10, r1, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	addli r2, zero, 2
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r2
	ew_cfg r1, zero, zero, 10
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 4095
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	addli r1, zero, 13
	dsmadd r15, r15, r15, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	j .LBB0_6
.LBB0_451:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	bneq r10, zero, .LBB0_7
# %bb.452:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -424(r30)                # 8-byte Folded Reload
	addli r3, zero, 18
	addli r11, zero, 13
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[8:9], r3
	load.d r[8:9], -288(r30)                # 8-byte Folded Reload
	xwait r11, 0
	load.d r[11:12], 24(r30)
	sext_int2long r[1:2], r1
	add.ul r[3:4], r[11:12], r[3:4]
	load.d r[11:12], -408(r30)              # 8-byte Folded Reload
	min.sl r[8:9], r[1:2], r[8:9]
	addli.d r[8:9], r[8:9], 128
	add.ul r[3:4], r[3:4], r[11:12]
	addli r11, zero, 5
	addli r12, zero, 1
	max.sl r[8:9], r[8:9], r[1:2]
	lock zero, r11
	dma_cfg r12, r12, zero, 0
	sub.sl r[1:2], r[8:9], r[1:2]
	ori r8, r15, 64
	addli r9, zero, 64
	dma_cfg zero, r12, zero, 1
	dma_cfg r4, zero, zero, 2
	.loc	1 619 13                        # parallel-rne.mlir:619:13
	min.sl r[1:2], r[1:2], r[27:28]
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	dma_cfg r3, r8, r9, 3
	addli r8, zero, 2048
	load.d r[14:15], -416(r30)              # 8-byte Folded Reload
	addli r3, r14, 31
	slli r4, r14, 1
	srli r3, r3, 5
	dma_cfg r9, r13, r3, 4
	andi r3, r4, 62
	addli r4, zero, 512
	dma_cfg r8, r4, r1, 5
	addli r1, zero, 14
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_453:                              # %._crit_edge
	.loc	1 625 5                         # parallel-rne.mlir:625:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_455
# %bb.454:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 625 5                         # parallel-rne.mlir:625:5
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
.LBB0_455:
	.loc	1 626 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:626:5
	addli sp, sp, 448
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
	.long	512                             # 0x200
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-pp151sa1" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
