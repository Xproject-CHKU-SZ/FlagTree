	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-nlktpxu9" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -536
	addli r1, zero, 1
.Ltmp0:
	.loc	1 37 5 prologue_end             # parallel-rne.mlir:37:5
	core_id r9
	addli r30, sp, 472
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	xwait r1, 0
	xwait r1, 0
	xwait zero, 0
	ori r1, r2, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r4, zero, 2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	uni_sram_cfg r1, r1
	addli r5, zero, 4
	load.d r[2:3], 32(r30)
	addli r6, zero, 4096
	lock zero, r4
	ew_cfg r1, zero, zero, 16
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg zero, r2, r6, 3
	addli r2, zero, 32
	addli r3, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r5
	xsignal r1, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r2, zero, 13
	addli r2, zero, 5
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	unlock zero
	xsignal r1, 0
	xwait r1, 0
	lock zero, r4
	lui r1, 17
	ewtable_cfg r6, 0
	ewtable_cfg r1, 1
	lui r1, 1048575
	unlock r4
	xsignal zero, 0
	xwait zero, 0
	ori r1, r1, 4095
	csr_set csr3, r1
	addli r1, zero, 17
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
	addli r2, zero, 22
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 25
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
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 39 10 is_stmt 1               # parallel-rne.mlir:39:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -24(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -48(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -72(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -96(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -116(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -280(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r1
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r4, r1, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	addli r2, r2, -1
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -276(r30)
	storeli.w r3, -272(r30)
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
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r1, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	fmac.s r2, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	min.s r2, r2, r4
	.loc	1 59 5                          # parallel-rne.mlir:59:5
	ble.s r2, r1, .LBB0_716
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 48 11 is_stmt 1               # parallel-rne.mlir:48:11
	sext_int2long r[10:11], r1
	lui r1, 15
	lui r4, 216
	addli r21, zero, 0
	addli r8, zero, 64
	addli r13, zero, 4
	addli r14, zero, 7
	addli r17, zero, 5
	addli r18, zero, 17
	addli r19, zero, 1
	lui r15, 1024
	lui r16, 522240
	lui r7, 1048560
	addli r22, zero, 0
	storeli.w zero, -292(r30)               # 4-byte Folded Spill
	store.d r[2:3], -448(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -456(r30)               # 8-byte Folded Spill
	lui r2, 522239
	lui r1, 127
	ori r3, r2, 4095
	lui r2, 224
	ori r1, r1, 4095
	ori r2, r2, 2560
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	ori r2, r4, 2893
	ori r28, r1, 4095
	lui r1, 7
	lui r4, 1046527
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	lui r2, 304
	ori r1, r1, 4095
	ori r2, r2, 2560
	storeli.w r2, -468(r30)                 # 4-byte Folded Spill
	ori r2, r4, 4095
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge18.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 864 7                         # parallel-rne.mlir:864:7
	addli r2, zero, 16
	xsignal r2, 0
	.loc	1 865 7                         # parallel-rne.mlir:865:7
	addli r2, zero, 24
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[10:11], -400(r30)              # 8-byte Folded Reload
	.loc	1 59 5 is_stmt 1                # parallel-rne.mlir:59:5
	load.d r[4:5], -448(r30)                # 8-byte Folded Reload
	loadli.w r21,  -296(r30)                # 4-byte Folded Reload
	loadli.w r22,  -404(r30)                # 4-byte Folded Reload
	addli r8, zero, 64
	addli r13, zero, 4
	addli r14, zero, 7
	addli r17, zero, 5
	addli r18, zero, 17
	addli r19, zero, 1
	addli.d r[10:11], r[10:11], 1
	setlt.sl r2, r[10:11], r[4:5]
	beq r2, zero, .LBB0_716
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
                                        #     Child Loop BB0_452 Depth 2
                                        #     Child Loop BB0_454 Depth 2
                                        #     Child Loop BB0_467 Depth 2
                                        #       Child Loop BB0_476 Depth 3
                                        #       Child Loop BB0_470 Depth 3
                                        #     Child Loop BB0_498 Depth 2
                                        #       Child Loop BB0_507 Depth 3
                                        #       Child Loop BB0_501 Depth 3
                                        #     Child Loop BB0_529 Depth 2
                                        #       Child Loop BB0_538 Depth 3
                                        #       Child Loop BB0_532 Depth 3
                                        #     Child Loop BB0_560 Depth 2
                                        #       Child Loop BB0_569 Depth 3
                                        #       Child Loop BB0_563 Depth 3
                                        #     Child Loop BB0_591 Depth 2
                                        #       Child Loop BB0_600 Depth 3
                                        #       Child Loop BB0_594 Depth 3
                                        #     Child Loop BB0_622 Depth 2
                                        #       Child Loop BB0_631 Depth 3
                                        #       Child Loop BB0_625 Depth 3
                                        #     Child Loop BB0_653 Depth 2
                                        #       Child Loop BB0_662 Depth 3
                                        #       Child Loop BB0_656 Depth 3
                                        #     Child Loop BB0_684 Depth 2
                                        #       Child Loop BB0_693 Depth 3
                                        #       Child Loop BB0_687 Depth 3
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	bneq r9, r13, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	xwait r18, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  48(r30)
	loadli.w r6,  44(r30)
	store.d r[10:11], -400(r30)             # 8-byte Folded Spill
	addli r2, zero, 0
	addli r5, zero, 0
	addli r12, zero, 64
	addli r20, zero, 4
	div.s r4, r10, r4
	addli r10, zero, 8
	div.s r4, r4, r6
	div.s r6, r4, r8
	slli r8, r6, 3
	slli r6, r6, 6
	sub.s r9, r13, r8
	min.s r9, r9, r10
	mod.s r10, r4, r9
	sub.s r4, r4, r6
	mod.s r6, r22, r17
	addli r22, r22, 1
	div.s r4, r4, r9
	storeli.w r22, -404(r30)                # 4-byte Folded Spill
	add.s r9, r8, r10
	slli r8, r6, 16
	zext_int2long r[10:11], r4
	slli r4, r4, 7
	zext_int2long r[22:23], r9
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	slli r4, r9, 7
	sll.d r[9:10], r[10:11], r14
	store.d r[22:23], -432(r30)             # 8-byte Folded Spill
	sll.d r[13:14], r[22:23], r18
	.loc	1 85 7 is_stmt 1                # parallel-rne.mlir:85:7
	sll.d r[22:23], r[9:10], r19
	load.d r[9:10], -456(r30)               # 8-byte Folded Reload
	storeli.w r4, -436(r30)                 # 4-byte Folded Spill
	addli r4, r21, 0
	store.d r[22:23], -416(r30)             # 8-byte Folded Spill
	and.d r[9:10], r[13:14], r[9:10]
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	load.d r[9:10], 8(r30)
	add.ul r[9:10], r[9:10], r[22:23]
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 80
	addli r12, zero, 2
	addli r20, zero, 128
	addli r10, zero, 5
	ori r4, r4, 64
	.loc	1 108 9 is_stmt 1               # parallel-rne.mlir:108:9
	add.s r4, r9, r4
	addli r9, zero, 4
	lock zero, r9
	addli r9, zero, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r4, r22, r9, 3
	addli r4, zero, 64
	addli r9, zero, 2048
	addli r22, zero, 256
	addli r23, zero, 4
	dma_cfg r20, r4, r12, 4
	dma_cfg r22, r9, r11, 5
	addli r9, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r10, 10
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
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r4, 3
	dma_cfg r20, zero, r12, 4
	dma_cfg r22, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r12, 0
.LBB0_12:                               # %.thread54
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	loadli.w r4,  -280(r30)
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	loadli.w r6,  -116(r30)
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	addli r4, r4, 1
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r6, r6, 1
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	storeli.w r4, -280(r30)
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	storeli.w r6, -116(r30)
.LBB0_13:                               # %.thread57
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 85 7                          # parallel-rne.mlir:85:7
	addli r5, r5, 1
	addli r4, zero, 16
	beq r5, r4, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -296(r30)                 # 4-byte Folded Reload
	addli r20, zero, 4
	addli r12, zero, 64
	.loc	1 129 15 is_stmt 1              # parallel-rne.mlir:129:15
	addli r2, r2, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	zext_int2long r[22:23], r5
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	addli r6, zero, 6
	load.d r[26:27], -288(r30)              # 8-byte Folded Reload
	sll.d r[9:10], r[22:23], r6
	loadli.w r6,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	add.ul r[24:25], r[9:10], r[13:14]
	zext_int2long r[9:10], r6
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	setlt.ul r6, r[9:10], r[24:25]
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	bneq r6, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[26:27], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r9,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 102 15 is_stmt 1              # parallel-rne.mlir:102:15
	addli r10, zero, 24
	.loc	1 104 15                        # parallel-rne.mlir:104:15
	mod.s r6, r4, r20
	addli r11, zero, 384
	zext_int2long r[17:18], r11
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	mod.s r10, r9, r10
	addli r9, r9, 1
	store.d r[17:18], -352(r30)             # 8-byte Folded Spill
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r17
	storeli.w r9, -292(r30)                 # 4-byte Folded Spill
	.loc	1 104 15                        # parallel-rne.mlir:104:15
	slli r9, r6, 15
	lui r6, 80
	add.s r6, r9, r6
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	slli r11, r10, 15
	.loc	1 104 15                        # parallel-rne.mlir:104:15
	addli r10, r4, 1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	storeli.w r10, -296(r30)                # 4-byte Folded Spill
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	addli r10, zero, 2
	beq r17, r10, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 1
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	bneq r17, r21, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r22, zero, 1024
	sub.sl r[10:11], r[24:25], r[26:27]
	load.d r[18:19], -352(r30)              # 8-byte Folded Reload
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	sll.d r[24:25], r[24:25], r21
	zext_int2long r[22:23], r22
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[10:11], r[10:11], r[22:23]
	min.sl r[22:23], r[10:11], r[18:19]
	sub.sl r[10:11], r[22:23], r[10:11]
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	load.d r[22:23], 0(r30)
	addli r11, r10, 128
	add.ul r[22:23], r[22:23], r[24:25]
	addli r25, zero, 3
	xwait r25, 0
	blt.s r25, r4, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	addli r24, zero, 2
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	addli r4, zero, 6
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
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
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r12, 3
	addli r12, zero, 256
	dma_cfg r4, zero, r24, 4
	dma_cfg r12, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2
	.loc	1 109 9 is_stmt 1               # parallel-rne.mlir:109:9
	addli r4, zero, 5
	addli r23, zero, 4
	xwait r9, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 64
	ds_cfg r9, zero, 0
	addli r9, zero, 128
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r11, r6, r4, 1
	addli r4, zero, 3
	unlock zero
	xsignal r4, 0
	xsignal r23, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	loadli.w r12,  -116(r30)
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	loadli.w r4,  -280(r30)
	addli r6, zero, 40
	mod.s r6, r4, r6
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	mod.s r10, r12, r20
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	addli r4, r4, 1
	storeli.w r4, -280(r30)
	slli r9, r6, 15
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	slli r4, r10, 15
	lui r6, 112
	addli r10, r12, 1
	storeli.w r10, -116(r30)
	add.s r6, r4, r6
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	addli r10, zero, 7
	beq r17, r10, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r10, zero, 6
	bneq r17, r10, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 17
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	load.d r[18:19], -304(r30)              # 8-byte Folded Reload
	addli r20, zero, 7
	addli r25, zero, 3
	sll.d r[9:10], r[22:23], r21
	addli r22, zero, 64
	addli r23, zero, 4
	xwait r20, 0
	add.ul r[9:10], r[18:19], r[9:10]
	blt.s r25, r12, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r24, zero, 1
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	addli r11, zero, 2
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r21, 10
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
	dma_cfg r24, r24, zero, 0
	dma_cfg r24, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r22, 3
	dma_cfg r11, zero, r23, 4
	addli r11, zero, 512
	dma_cfg r11, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r11, 112
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	lock zero, r23
	addli r12, zero, 128
	addli r24, zero, 512
	ori r11, r11, 64
	add.s r4, r4, r11
	addli r11, zero, 1
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r10, zero, 2
	dma_cfg r4, r9, r22, 3
	addli r4, zero, 2048
	addli r9, zero, 5
	addli r10, zero, 6
	dma_cfg r12, r22, r23, 4
	dma_cfg r24, r4, r22, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r20, 10
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
	addli r4, zero, 18
	dma_cfg zero, zero, r21, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r22, 3
	dma_cfg r12, zero, r23, 4
	dma_cfg r24, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r10, 0
	.loc	1 126 9 is_stmt 1               # parallel-rne.mlir:126:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 6
	addli r10, zero, 128
	addli r23, zero, 4
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r10, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r9, r6, r4, 2
	addli r4, zero, 7
	unlock zero
	xsignal r4, 0
	addli r4, zero, 8
	xsignal r4, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 4
	.loc	1 128 9 is_stmt 1               # parallel-rne.mlir:128:9
	bneq r17, r20, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 8
	xwait r20, 0
	addli r17, zero, 64
	addli r22, zero, 128
	addli r6, zero, 1
	addli r10, zero, 0
	addli r21, zero, 5
	xwait r4, 0
	addli r4, zero, 1
	beq r2, zero, .LBB0_31
.LBB0_30:                               # %.preheader86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r10, 14
	slli r10, r10, 8
	lock zero, r4
	mm_cfg r17, r17, r22, 0
	or r12, r12, r9
	or r10, r10, r8
	mm_cfg r20, r20, r4, 2
	mm_acc r10, r11, r12, 8
	andi r12, r6, 1
	addli r10, zero, 1
	addli r6, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r10, 14
	slli r10, r10, 8
	lock zero, r4
	mm_cfg r17, r17, r22, 0
	or r12, r12, r9
	or r10, r10, r8
	mm_cfg r20, r20, r4, 2
	mm r10, r11, r12, 8
	andi r12, r6, 1
	addli r10, zero, 1
	addli r6, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_31
.LBB0_32:                               # %.thread57.thread123
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 9
	xsignal r21, 0
	.loc	1 85 7                          # parallel-rne.mlir:85:7
	addli r5, r5, 1
	.loc	1 128 9                         # parallel-rne.mlir:128:9
	xsignal r4, 0
	.loc	1 85 7                          # parallel-rne.mlir:85:7
	addli r4, zero, 16
	bneq r5, r4, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread57.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r5, r5, 1
	addli r4, zero, 16
	bneq r5, r4, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	bneq r17, r23, .LBB0_36
.LBB0_35:                               # %.thread125
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_36:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r4,  -96(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r2,  -72(r30)
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	addli r4, r4, 1
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	addli r5, r2, 1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	storeli.w r4, -96(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	storeli.w r5, -72(r30)
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r4, zero, 3
	bneq r5, r4, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	xwait r4, 0
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	addli r4, zero, 20
	xwait r4, 0
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	.loc	1 154 7 is_stmt 1               # parallel-rne.mlir:154:7
	xfence
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	addli r6, zero, 255
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r4
	addli r4, zero, 128
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	csr_set csr5, r6
	zext_int2long r[22:23], r4
	lui r4, 144
	ori r4, r4, 2560
	slli r2, r2, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r2, r4
	addli r4, zero, 15
	zext_int2long r[9:10], r4
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	store.d r[9:10], -360(r30)              # 8-byte Folded Spill
	sync_core
	.loc	1 157 7 is_stmt 1               # parallel-rne.mlir:157:7
	bneq r5, zero, .LBB0_63
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	xfence
	mfence { lm, sm, gm }
	store.d r[4:5], -304(r30)               # 8-byte Folded Spill
	addli.d r[5:6], r[4:5], 0
	j .LBB0_41
.LBB0_40:                               # %middle.block348
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 164 9 is_stmt 1               # parallel-rne.mlir:164:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_62
.LBB0_41:                               # %.preheader84
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	load.d r[20:21], -304(r30)              # 8-byte Folded Reload
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	j .LBB0_43
.LBB0_42:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 165 11 is_stmt 1              # parallel-rne.mlir:165:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	add.s r6, r2, r11
	.loc	1 165 11                        # parallel-rne.mlir:165:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	stores.w r17, 12(r6)
	stores.w r25, 8(r6)
	stores.w r10, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 165 11                        # parallel-rne.mlir:165:11
	beq r4, zero, .LBB0_40
.LBB0_43:                               # %vector.body344
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r12, 0(r5)
	loads.w r4, 4(r5)
	loads.w r26, 8(r5)
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	and r9, r24, r28
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	setlt.u r5, r16, r9
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_45
# %bb.44:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=3
	or r17, r24, r15
.LBB0_46:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	and r27, r26, r28
	setlt.u r5, r16, r27
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_48
# %bb.47:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r26, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=3
	or r25, r26, r15
.LBB0_49:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	and r6, r4, r28
	setlt.u r5, r16, r6
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_51
# %bb.50:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_43 Depth=3
	or r10, r4, r15
.LBB0_52:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	and r13, r12, r28
	setlt.u r5, r16, r13
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_54
# %bb.53:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	.loc	1 177 19 is_stmt 1              # parallel-rne.mlir:177:19
	setlt.u r13, r3, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r13, zero, .LBB0_55
	j .LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r12, r15
	.loc	1 177 19 is_stmt 1              # parallel-rne.mlir:177:19
	setlt.u r13, r3, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r13, zero, .LBB0_56
.LBB0_55:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r7
.LBB0_56:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r6, r3, r6
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r6, zero, .LBB0_59
# %bb.57:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r27
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r4, zero, .LBB0_60
.LBB0_58:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_42
	j .LBB0_61
.LBB0_59:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r27
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_58
.LBB0_60:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r26, 16
	andi r4, r4, 1
	add.s r4, r26, r4
	add.s r4, r4, r1
	and r25, r4, r7
	setlt.u r4, r3, r9
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r4, zero, .LBB0_42
.LBB0_61:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_42
.LBB0_62:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	mfence { sm }
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 31
	zext_int2long r[9:10], r4
	.loc	1 185 7 is_stmt 1               # parallel-rne.mlir:185:7
	addli r4, zero, 1
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_88
# %bb.64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_66
.LBB0_65:                               # %middle.block339
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 192 9 is_stmt 1               # parallel-rne.mlir:192:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_87
.LBB0_66:                               # %.preheader83
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[20:21], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[5:6], r4
	j .LBB0_68
.LBB0_67:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 193 11 is_stmt 1              # parallel-rne.mlir:193:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	add.s r5, r2, r11
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 193 11                        # parallel-rne.mlir:193:11
	beq r4, zero, .LBB0_65
.LBB0_68:                               # %vector.body335
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.ul r[4:5], r[20:21], r[13:14]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	and r9, r24, r28
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	setlt.u r5, r16, r9
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r5, zero, .LBB0_70
# %bb.69:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r17, r24, r15
.LBB0_71:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	and r25, r19, r28
	setlt.u r5, r16, r25
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r5, zero, .LBB0_73
# %bb.72:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r18, r19, r15
.LBB0_74:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r5, zero, .LBB0_76
# %bb.75:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r10, r4, r15
.LBB0_77:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	bneq r6, zero, .LBB0_79
# %bb.78:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 205 19 is_stmt 1              # parallel-rne.mlir:205:19
	setlt.u r5, r3, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r5, zero, .LBB0_80
	j .LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r15
	.loc	1 205 19 is_stmt 1              # parallel-rne.mlir:205:19
	setlt.u r5, r3, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r5, zero, .LBB0_81
.LBB0_80:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_81:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r5, r3, r27
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r5, zero, .LBB0_84
# %bb.82:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r4, zero, .LBB0_85
.LBB0_83:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_67
	j .LBB0_86
.LBB0_84:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r25
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_83
.LBB0_85:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_67
.LBB0_86:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	mfence { sm }
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 47
	zext_int2long r[9:10], r4
	.loc	1 213 7 is_stmt 1               # parallel-rne.mlir:213:7
	addli r4, zero, 2
	store.d r[9:10], -336(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_113
# %bb.89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 32
	.loc	1 213 7                         # parallel-rne.mlir:213:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_91
.LBB0_90:                               # %middle.block330
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 220 9 is_stmt 1               # parallel-rne.mlir:220:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_112
.LBB0_91:                               # %.preheader82
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[20:21], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[5:6], r4
	j .LBB0_93
.LBB0_92:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 221 11 is_stmt 1              # parallel-rne.mlir:221:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 236 13                        # parallel-rne.mlir:236:13
	add.s r5, r2, r11
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 236 13                        # parallel-rne.mlir:236:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	beq r4, zero, .LBB0_90
.LBB0_93:                               # %vector.body326
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	add.ul r[4:5], r[20:21], r[13:14]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	and r9, r24, r28
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	setlt.u r5, r16, r9
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r5, zero, .LBB0_95
# %bb.94:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r17, r24, r15
.LBB0_96:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	and r25, r19, r28
	setlt.u r5, r16, r25
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r5, zero, .LBB0_98
# %bb.97:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r18, r19, r15
.LBB0_99:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r5, zero, .LBB0_101
# %bb.100:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r10, r4, r15
.LBB0_102:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r6, zero, .LBB0_104
# %bb.103:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 233 19 is_stmt 1              # parallel-rne.mlir:233:19
	setlt.u r5, r3, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	beq r5, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r15
	.loc	1 233 19 is_stmt 1              # parallel-rne.mlir:233:19
	setlt.u r5, r3, r5
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r5, zero, .LBB0_106
.LBB0_105:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_106:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r5, r3, r27
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	beq r5, zero, .LBB0_109
# %bb.107:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	beq r4, zero, .LBB0_110
.LBB0_108:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r25
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_108
.LBB0_110:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r4, zero, .LBB0_92
.LBB0_111:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_92
.LBB0_112:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 213 7                         # parallel-rne.mlir:213:7
	mfence { sm }
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 63
	zext_int2long r[9:10], r4
	.loc	1 241 7 is_stmt 1               # parallel-rne.mlir:241:7
	addli r4, zero, 3
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_138
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 48
	.loc	1 241 7                         # parallel-rne.mlir:241:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_116
.LBB0_115:                              # %middle.block321
                                        #   in Loop: Header=BB0_116 Depth=2
	.loc	1 248 9 is_stmt 1               # parallel-rne.mlir:248:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_137
.LBB0_116:                              # %.preheader81
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[20:21], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[5:6], r4
	j .LBB0_118
.LBB0_117:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 249 11 is_stmt 1              # parallel-rne.mlir:249:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	add.s r5, r2, r11
	.loc	1 249 11                        # parallel-rne.mlir:249:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 249 11                        # parallel-rne.mlir:249:11
	beq r4, zero, .LBB0_115
.LBB0_118:                              # %vector.body317
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.ul r[4:5], r[20:21], r[13:14]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r9, r24, r28
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	setlt.u r5, r16, r9
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r5, zero, .LBB0_120
# %bb.119:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	or r17, r24, r15
.LBB0_121:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	and r25, r19, r28
	setlt.u r5, r16, r25
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r5, zero, .LBB0_123
# %bb.122:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	or r18, r19, r15
.LBB0_124:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r5, zero, .LBB0_126
# %bb.125:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	or r10, r4, r15
.LBB0_127:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	bneq r6, zero, .LBB0_129
# %bb.128:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 261 19 is_stmt 1              # parallel-rne.mlir:261:19
	setlt.u r5, r3, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r5, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r15
	.loc	1 261 19 is_stmt 1              # parallel-rne.mlir:261:19
	setlt.u r5, r3, r5
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r5, zero, .LBB0_131
.LBB0_130:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_131:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r5, r3, r27
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r5, zero, .LBB0_134
# %bb.132:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r4, zero, .LBB0_135
.LBB0_133:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r25
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_133
.LBB0_135:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r4, zero, .LBB0_117
.LBB0_136:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_117
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 241 7                         # parallel-rne.mlir:241:7
	mfence { sm }
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 79
	zext_int2long r[9:10], r4
	.loc	1 269 7 is_stmt 1               # parallel-rne.mlir:269:7
	addli r4, zero, 4
	store.d r[9:10], -320(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_163
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 64
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_141
.LBB0_140:                              # %middle.block312
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 276 9 is_stmt 1               # parallel-rne.mlir:276:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_162
.LBB0_141:                              # %.preheader80
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[20:21], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[5:6], r4
	j .LBB0_143
.LBB0_142:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 277 11 is_stmt 1              # parallel-rne.mlir:277:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 292 13                        # parallel-rne.mlir:292:13
	add.s r5, r2, r11
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 292 13                        # parallel-rne.mlir:292:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	beq r4, zero, .LBB0_140
.LBB0_143:                              # %vector.body308
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.ul r[4:5], r[20:21], r[13:14]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r9, r24, r28
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	setlt.u r5, r16, r9
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r5, zero, .LBB0_145
# %bb.144:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	or r17, r24, r15
.LBB0_146:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	and r25, r19, r28
	setlt.u r5, r16, r25
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r5, zero, .LBB0_148
# %bb.147:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_143 Depth=3
	or r18, r19, r15
.LBB0_149:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r5, zero, .LBB0_151
# %bb.150:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=3
	or r10, r4, r15
.LBB0_152:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r6, zero, .LBB0_154
# %bb.153:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 289 19 is_stmt 1              # parallel-rne.mlir:289:19
	setlt.u r5, r3, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	beq r5, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r15
	.loc	1 289 19 is_stmt 1              # parallel-rne.mlir:289:19
	setlt.u r5, r3, r5
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r5, zero, .LBB0_156
.LBB0_155:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_156:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	setlt.u r5, r3, r27
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	beq r5, zero, .LBB0_159
# %bb.157:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	beq r4, zero, .LBB0_160
.LBB0_158:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_142
	j .LBB0_161
.LBB0_159:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r25
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_158
.LBB0_160:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r4, zero, .LBB0_142
.LBB0_161:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_142
.LBB0_162:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	mfence { sm }
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 95
	zext_int2long r[9:10], r4
	.loc	1 297 7 is_stmt 1               # parallel-rne.mlir:297:7
	addli r4, zero, 5
	store.d r[9:10], -312(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_188
# %bb.164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 80
	.loc	1 297 7                         # parallel-rne.mlir:297:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_166
.LBB0_165:                              # %middle.block303
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 304 9 is_stmt 1               # parallel-rne.mlir:304:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_187
.LBB0_166:                              # %.preheader79
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[20:21], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[5:6], r4
	j .LBB0_168
.LBB0_167:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 305 11 is_stmt 1              # parallel-rne.mlir:305:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 320 13                        # parallel-rne.mlir:320:13
	add.s r5, r2, r11
	.loc	1 305 11                        # parallel-rne.mlir:305:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 320 13                        # parallel-rne.mlir:320:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 305 11                        # parallel-rne.mlir:305:11
	beq r4, zero, .LBB0_165
.LBB0_168:                              # %vector.body299
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	add.ul r[4:5], r[20:21], r[13:14]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	and r9, r24, r28
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	setlt.u r5, r16, r9
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r5, zero, .LBB0_170
# %bb.169:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	or r17, r24, r15
.LBB0_171:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	and r25, r19, r28
	setlt.u r5, r16, r25
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r5, zero, .LBB0_173
# %bb.172:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	or r18, r19, r15
.LBB0_174:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r5, zero, .LBB0_176
# %bb.175:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	or r10, r4, r15
.LBB0_177:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r6, zero, .LBB0_179
# %bb.178:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 317 19 is_stmt 1              # parallel-rne.mlir:317:19
	setlt.u r5, r3, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	beq r5, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r15
	.loc	1 317 19 is_stmt 1              # parallel-rne.mlir:317:19
	setlt.u r5, r3, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r5, zero, .LBB0_181
.LBB0_180:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_181:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r5, r3, r27
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	beq r5, zero, .LBB0_184
# %bb.182:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	beq r4, zero, .LBB0_185
.LBB0_183:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_167
	j .LBB0_186
.LBB0_184:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r25
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_183
.LBB0_185:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r4, zero, .LBB0_167
.LBB0_186:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_167
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 297 7                         # parallel-rne.mlir:297:7
	mfence { sm }
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 111
	zext_int2long r[9:10], r4
	.loc	1 325 7 is_stmt 1               # parallel-rne.mlir:325:7
	addli r4, zero, 6
	store.d r[9:10], -304(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_213
# %bb.189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 96
	.loc	1 325 7                         # parallel-rne.mlir:325:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_191
.LBB0_190:                              # %middle.block294
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -288(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_212
.LBB0_191:                              # %.preheader78
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[20:21], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[5:6], r4
	j .LBB0_193
.LBB0_192:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r5, r2, r11
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	setneq.d r4, r[20:21], r[22:23]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r4, zero, .LBB0_190
.LBB0_193:                              # %vector.body290
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[4:5], r[20:21], r[13:14]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r9, r24, r28
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r5, r16, r9
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r5, zero, .LBB0_195
# %bb.194:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r24, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r17, r24, r15
.LBB0_196:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	and r25, r19, r28
	setlt.u r5, r16, r25
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r5, zero, .LBB0_198
# %bb.197:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r18, r19, r15
.LBB0_199:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r5, zero, .LBB0_201
# %bb.200:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r10, r4, r15
.LBB0_202:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_204
# %bb.203:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r5, r3, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r5, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r15
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r5, r3, r5
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r5, zero, .LBB0_206
.LBB0_205:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_206:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r5, r3, r27
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r5, zero, .LBB0_209
# %bb.207:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r4, zero, .LBB0_210
.LBB0_208:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r25
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_208
.LBB0_210:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r4, zero, .LBB0_192
.LBB0_211:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r5
	.loc	1 325 7                         # parallel-rne.mlir:325:7
	mfence { sm }
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 127
	zext_int2long r[9:10], r4
	.loc	1 353 7 is_stmt 1               # parallel-rne.mlir:353:7
	addli r4, zero, 7
	store.d r[9:10], -288(r30)              # 8-byte Folded Spill
	bneq r5, r4, .LBB0_238
# %bb.214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 112
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_216
.LBB0_215:                              # %middle.block285
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 360 9 is_stmt 1               # parallel-rne.mlir:360:9
	load.d r[4:5], -288(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_237
.LBB0_216:                              # %.preheader77
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_218 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_218
.LBB0_217:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 361 11 is_stmt 1              # parallel-rne.mlir:361:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	add.s r5, r2, r11
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	setneq.d r4, r[24:25], r[22:23]
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	stores.w r17, 12(r5)
	stores.w r18, 8(r5)
	stores.w r10, 4(r5)
	stores.w r13, 0(r5)
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	beq r4, zero, .LBB0_215
.LBB0_218:                              # %vector.body281
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r5, r8, r11
	loads.w r26, 12(r5)
	loads.w r12, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	and r9, r26, r28
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	setlt.u r5, r16, r9
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	bneq r5, zero, .LBB0_220
# %bb.219:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r26, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_218 Depth=3
	or r17, r26, r15
.LBB0_221:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	and r27, r19, r28
	setlt.u r5, r16, r27
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	bneq r5, zero, .LBB0_223
# %bb.222:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_218 Depth=3
	or r18, r19, r15
.LBB0_224:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	and r14, r4, r28
	setlt.u r5, r16, r14
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	bneq r5, zero, .LBB0_226
# %bb.225:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	j .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_218 Depth=3
	or r10, r4, r15
.LBB0_227:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	and r5, r12, r28
	setlt.u r6, r16, r5
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	bneq r6, zero, .LBB0_229
# %bb.228:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
	.loc	1 373 19 is_stmt 1              # parallel-rne.mlir:373:19
	setlt.u r5, r3, r5
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	beq r5, zero, .LBB0_230
	j .LBB0_231
.LBB0_229:                              #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r12, r15
	.loc	1 373 19 is_stmt 1              # parallel-rne.mlir:373:19
	setlt.u r5, r3, r5
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r5, zero, .LBB0_231
.LBB0_230:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_231:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r5, r3, r14
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	beq r5, zero, .LBB0_234
# %bb.232:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r27
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	beq r4, zero, .LBB0_235
.LBB0_233:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r4, zero, .LBB0_217
	j .LBB0_236
.LBB0_234:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r27
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r4, zero, .LBB0_233
.LBB0_235:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r4, zero, .LBB0_217
.LBB0_236:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r26, 16
	andi r4, r4, 1
	add.s r4, r26, r4
	add.s r4, r4, r1
	and r17, r4, r7
	j .LBB0_217
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 353 7 is_stmt 1               # parallel-rne.mlir:353:7
	mfence { sm }
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -384(r30)                 # 4-byte Folded Reload
	addli r6, zero, 896
	zext_int2long r[9:10], r6
	zext_int2long r[4:5], r4
	min.ul r[9:10], r[4:5], r[9:10]
	addli.d r[9:10], r[9:10], 128
	max.ul r[9:10], r[9:10], r[4:5]
	sub.sl r[4:5], r[9:10], r[4:5]
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	min.ul r[4:5], r[4:5], r[22:23]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	store.d r[4:5], -424(r30)               # 8-byte Folded Spill
	addli r4, zero, 255
	csr_set csr5, r4
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	addli r4, zero, 3
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	sync_core
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	bneq r9, r4, .LBB0_240
# %bb.239:                              # %.thread59.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 11
	.loc	1 383 7 is_stmt 1               # parallel-rne.mlir:383:7
	addli r5, zero, 18
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	xsignal r4, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	xsignal r5, 0
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	xwait r4, 0
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	addli r4, zero, 19
	xwait r4, 0
	j .LBB0_248
.LBB0_240:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r10,  -388(r30)                # 4-byte Folded Reload
	addli r5, zero, 5
	lui r6, 144
	addli r14, zero, 22
	mod.s r4, r10, r5
	slli r4, r4, 9
	add.s r11, r4, r6
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	addli r6, zero, 1
	bneq r9, r6, .LBB0_244
# %bb.241:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, r10, 0
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[9:10], -416(r30)               # 8-byte Folded Reload
	load.d r[5:6], 16(r30)
	addli r12, zero, 4
	xwait r14, 0
	add.ul r[9:10], r[5:6], r[9:10]
	blt.s r12, r13, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, zero, 5
	addli r13, zero, 1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r5, zero, 2
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 3
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r14, 10
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
	addli r5, zero, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r5, 3
	addli r5, zero, 128
	dma_cfg r5, zero, r12, 4
	addli r5, zero, 512
	dma_cfg r5, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
.LBB0_243:                              # %.thread59.thread61
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r13, zero, 1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	lock zero, r12
	lui r5, 144
	addli r6, zero, 64
	addli r14, zero, 128
	dma_cfg r13, r13, zero, 0
	ori r5, r5, 64
	dma_cfg zero, r10, zero, 2
	load.d r[17:18], -424(r30)              # 8-byte Folded Reload
	add.s r4, r4, r5
	dma_cfg r4, r9, r6, 3
	addli r9, zero, 256
	addli r10, zero, 5
	addli r5, r17, 31
	srli r4, r5, 5
	slli r5, r17, 1
	addli r17, zero, 512
	addli r18, zero, 22
	dma_cfg r14, r6, r4, 4
	andi r5, r5, 62
	dma_cfg r17, r9, r13, 5
	addli r9, zero, 2
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 3
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 21
	dma_cfg zero, zero, r10, 10
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
	addli r9, zero, 23
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r18, 10
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
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r6, 3
	dma_cfg r14, zero, r4, 4
	dma_cfg r17, zero, r13, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r12, 0
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	j .LBB0_248
.LBB0_244:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	bneq r9, r5, .LBB0_248
# %bb.245:                              #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 18
	addli r4, zero, 0
	lui r6, 16
	xwait r5, 0
	addli r5, zero, 21
	xwait r5, 0
	addli r5, zero, 2
	lock zero, r5
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
.LBB0_246:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r2, r4
	addli r4, r4, 512
	dsmadd r5, r5, r11, 0
	bneq r4, r6, .LBB0_246
# %bb.247:                              # %.thread59
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 2
	unlock r4
	addli r4, zero, 19
	xsignal r4, 0
	xsignal r14, 0
.LBB0_248:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	xfence
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	addli r4, zero, 255
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	mfence { lm, sm, gm }
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	csr_set csr5, r4
	sync_core
	.loc	1 394 7                         # parallel-rne.mlir:394:7
	beq r9, zero, .LBB0_256
# %bb.249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 422 7                         # parallel-rne.mlir:422:7
	addli r4, zero, 1
	beq r9, r4, .LBB0_280
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	addli r4, zero, 2
	beq r9, r4, .LBB0_304
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r4, zero, 3
	beq r9, r4, .LBB0_328
.LBB0_252:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	addli r4, zero, 4
	beq r9, r4, .LBB0_352
.LBB0_253:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	addli r4, zero, 5
	beq r9, r4, .LBB0_376
.LBB0_254:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	addli r4, zero, 6
	beq r9, r4, .LBB0_400
.LBB0_255:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	addli r4, zero, 7
	beq r9, r4, .LBB0_424
	j .LBB0_448
.LBB0_256:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 394 7 is_stmt 1               # parallel-rne.mlir:394:7
	xfence
	mfence { lm, sm, gm }
	store.d r[4:5], -384(r30)               # 8-byte Folded Spill
	addli.d r[5:6], r[4:5], 0
	j .LBB0_258
.LBB0_257:                              # %middle.block276
                                        #   in Loop: Header=BB0_258 Depth=2
	.loc	1 401 9                         # parallel-rne.mlir:401:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_279
.LBB0_258:                              # %.preheader76
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_260 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	load.d r[13:14], -384(r30)              # 8-byte Folded Reload
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[5:6], r4
	j .LBB0_260
.LBB0_259:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 402 11 is_stmt 1              # parallel-rne.mlir:402:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 417 13                        # parallel-rne.mlir:417:13
	add.s r5, r8, r11
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	setneq.d r4, r[13:14], r[22:23]
	.loc	1 417 13                        # parallel-rne.mlir:417:13
	stores.w r9, 12(r5)
	stores.w r10, 8(r5)
	stores.w r12, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	beq r4, zero, .LBB0_257
.LBB0_260:                              # %vector.body272
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_258 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	add.ul r[4:5], r[13:14], r[24:25]
	slli r11, r4, 2
	add.s r5, r2, r11
	loads.w r17, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r19, 8(r5)
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	and r18, r17, r28
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	setlt.u r5, r16, r18
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r5, zero, .LBB0_262
# %bb.261:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_260 Depth=3
	or r9, r17, r15
.LBB0_263:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	and r27, r19, r28
	setlt.u r5, r16, r27
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r5, zero, .LBB0_265
# %bb.264:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_260 Depth=3
	or r10, r19, r15
.LBB0_266:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	and r21, r4, r28
	setlt.u r5, r16, r21
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r5, zero, .LBB0_268
# %bb.267:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_260 Depth=3
	or r12, r4, r15
.LBB0_269:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	bneq r6, zero, .LBB0_271
# %bb.270:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r26, 0
	.loc	1 414 19 is_stmt 1              # parallel-rne.mlir:414:19
	setlt.u r5, r3, r5
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	beq r5, zero, .LBB0_272
	j .LBB0_273
.LBB0_271:                              #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r26, r15
	.loc	1 414 19 is_stmt 1              # parallel-rne.mlir:414:19
	setlt.u r5, r3, r5
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	bneq r5, zero, .LBB0_273
.LBB0_272:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r20, r5, r7
.LBB0_273:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	setlt.u r5, r3, r21
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	beq r5, zero, .LBB0_276
# %bb.274:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r27
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	beq r4, zero, .LBB0_277
.LBB0_275:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r18
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	bneq r4, zero, .LBB0_259
	j .LBB0_278
.LBB0_276:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r12, r4, r7
	setlt.u r4, r3, r27
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	bneq r4, zero, .LBB0_275
.LBB0_277:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r10, r4, r7
	setlt.u r4, r3, r18
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	bneq r4, zero, .LBB0_259
.LBB0_278:                              # %vector.body272
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r9, r4, r7
	j .LBB0_259
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 394 7                         # parallel-rne.mlir:394:7
	mfence { sm }
	.loc	1 422 7                         # parallel-rne.mlir:422:7
	addli r4, zero, 1
	bneq r9, r4, .LBB0_250
.LBB0_280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 422 7                         # parallel-rne.mlir:422:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_282
.LBB0_281:                              # %middle.block267
                                        #   in Loop: Header=BB0_282 Depth=2
	.loc	1 429 9 is_stmt 1               # parallel-rne.mlir:429:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_303
.LBB0_282:                              # %.preheader75
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_284 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_284
.LBB0_283:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 430 11 is_stmt 1              # parallel-rne.mlir:430:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	add.s r6, r8, r11
	.loc	1 430 11                        # parallel-rne.mlir:430:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 430 11                        # parallel-rne.mlir:430:11
	beq r5, zero, .LBB0_281
.LBB0_284:                              # %vector.body263
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	and r18, r17, r28
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	setlt.u r4, r16, r18
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r4, zero, .LBB0_286
# %bb.285:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_284 Depth=3
	or r9, r17, r15
.LBB0_287:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r4, zero, .LBB0_289
# %bb.288:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_284 Depth=3
	or r19, r10, r15
.LBB0_290:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r4, zero, .LBB0_292
# %bb.291:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_284 Depth=3
	or r4, r12, r15
.LBB0_293:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r6, zero, .LBB0_295
# %bb.294:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 442 19 is_stmt 1              # parallel-rne.mlir:442:19
	setlt.u r5, r3, r5
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	beq r5, zero, .LBB0_296
	j .LBB0_297
.LBB0_295:                              #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 442 19 is_stmt 1              # parallel-rne.mlir:442:19
	setlt.u r5, r3, r5
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r5, zero, .LBB0_297
.LBB0_296:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_297:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	setlt.u r5, r3, r14
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	beq r5, zero, .LBB0_300
# %bb.298:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	beq r5, zero, .LBB0_301
.LBB0_299:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r5, zero, .LBB0_283
	j .LBB0_302
.LBB0_300:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r5, zero, .LBB0_299
.LBB0_301:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r5, zero, .LBB0_283
.LBB0_302:                              # %vector.body263
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_283
.LBB0_303:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 422 7                         # parallel-rne.mlir:422:7
	mfence { sm }
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	addli r4, zero, 2
	bneq r9, r4, .LBB0_251
.LBB0_304:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 32
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_306
.LBB0_305:                              # %middle.block258
                                        #   in Loop: Header=BB0_306 Depth=2
	.loc	1 457 9 is_stmt 1               # parallel-rne.mlir:457:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_327
.LBB0_306:                              # %.preheader74
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_308
.LBB0_307:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 458 11 is_stmt 1              # parallel-rne.mlir:458:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	add.s r6, r8, r11
	.loc	1 458 11                        # parallel-rne.mlir:458:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 458 11                        # parallel-rne.mlir:458:11
	beq r5, zero, .LBB0_305
.LBB0_308:                              # %vector.body254
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	and r18, r17, r28
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	setlt.u r4, r16, r18
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r4, zero, .LBB0_310
# %bb.309:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_308 Depth=3
	or r9, r17, r15
.LBB0_311:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r4, zero, .LBB0_313
# %bb.312:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_308 Depth=3
	or r19, r10, r15
.LBB0_314:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r4, zero, .LBB0_316
# %bb.315:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_308 Depth=3
	or r4, r12, r15
.LBB0_317:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r6, zero, .LBB0_319
# %bb.318:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 470 19 is_stmt 1              # parallel-rne.mlir:470:19
	setlt.u r5, r3, r5
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	beq r5, zero, .LBB0_320
	j .LBB0_321
.LBB0_319:                              #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 470 19 is_stmt 1              # parallel-rne.mlir:470:19
	setlt.u r5, r3, r5
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r5, zero, .LBB0_321
.LBB0_320:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_321:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	setlt.u r5, r3, r14
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	beq r5, zero, .LBB0_324
# %bb.322:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	beq r5, zero, .LBB0_325
.LBB0_323:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r5, zero, .LBB0_307
	j .LBB0_326
.LBB0_324:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r5, zero, .LBB0_323
.LBB0_325:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r5, zero, .LBB0_307
.LBB0_326:                              # %vector.body254
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_307
.LBB0_327:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	mfence { sm }
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r4, zero, 3
	bneq r9, r4, .LBB0_252
.LBB0_328:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 48
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_330
.LBB0_329:                              # %middle.block249
                                        #   in Loop: Header=BB0_330 Depth=2
	.loc	1 485 9 is_stmt 1               # parallel-rne.mlir:485:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_351
.LBB0_330:                              # %.preheader73
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_332 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_332
.LBB0_331:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 486 11 is_stmt 1              # parallel-rne.mlir:486:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	add.s r6, r8, r11
	.loc	1 486 11                        # parallel-rne.mlir:486:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 486 11                        # parallel-rne.mlir:486:11
	beq r5, zero, .LBB0_329
.LBB0_332:                              # %vector.body245
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_330 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	and r18, r17, r28
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	setlt.u r4, r16, r18
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	bneq r4, zero, .LBB0_334
# %bb.333:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_332 Depth=3
	or r9, r17, r15
.LBB0_335:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	bneq r4, zero, .LBB0_337
# %bb.336:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_332 Depth=3
	or r19, r10, r15
.LBB0_338:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	bneq r4, zero, .LBB0_340
# %bb.339:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_341
.LBB0_340:                              #   in Loop: Header=BB0_332 Depth=3
	or r4, r12, r15
.LBB0_341:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	bneq r6, zero, .LBB0_343
# %bb.342:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 498 19 is_stmt 1              # parallel-rne.mlir:498:19
	setlt.u r5, r3, r5
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	beq r5, zero, .LBB0_344
	j .LBB0_345
.LBB0_343:                              #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 498 19 is_stmt 1              # parallel-rne.mlir:498:19
	setlt.u r5, r3, r5
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	bneq r5, zero, .LBB0_345
.LBB0_344:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_345:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	setlt.u r5, r3, r14
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	beq r5, zero, .LBB0_348
# %bb.346:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	beq r5, zero, .LBB0_349
.LBB0_347:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	bneq r5, zero, .LBB0_331
	j .LBB0_350
.LBB0_348:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	bneq r5, zero, .LBB0_347
.LBB0_349:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	bneq r5, zero, .LBB0_331
.LBB0_350:                              # %vector.body245
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_331
.LBB0_351:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	mfence { sm }
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	addli r4, zero, 4
	bneq r9, r4, .LBB0_253
.LBB0_352:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 64
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_354
.LBB0_353:                              # %middle.block240
                                        #   in Loop: Header=BB0_354 Depth=2
	.loc	1 513 9 is_stmt 1               # parallel-rne.mlir:513:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_375
.LBB0_354:                              # %.preheader72
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_356
.LBB0_355:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 514 11 is_stmt 1              # parallel-rne.mlir:514:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r6, r8, r11
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	beq r5, zero, .LBB0_353
.LBB0_356:                              # %vector.body236
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	and r18, r17, r28
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	setlt.u r4, r16, r18
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r4, zero, .LBB0_358
# %bb.357:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_356 Depth=3
	or r9, r17, r15
.LBB0_359:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r4, zero, .LBB0_361
# %bb.360:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_356 Depth=3
	or r19, r10, r15
.LBB0_362:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r4, zero, .LBB0_364
# %bb.363:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_365
.LBB0_364:                              #   in Loop: Header=BB0_356 Depth=3
	or r4, r12, r15
.LBB0_365:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 520 19                        # parallel-rne.mlir:520:19
	bneq r6, zero, .LBB0_367
# %bb.366:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 526 19 is_stmt 1              # parallel-rne.mlir:526:19
	setlt.u r5, r3, r5
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	beq r5, zero, .LBB0_368
	j .LBB0_369
.LBB0_367:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 526 19 is_stmt 1              # parallel-rne.mlir:526:19
	setlt.u r5, r3, r5
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	bneq r5, zero, .LBB0_369
.LBB0_368:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_369:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	setlt.u r5, r3, r14
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	beq r5, zero, .LBB0_372
# %bb.370:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	beq r5, zero, .LBB0_373
.LBB0_371:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	bneq r5, zero, .LBB0_355
	j .LBB0_374
.LBB0_372:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	bneq r5, zero, .LBB0_371
.LBB0_373:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	bneq r5, zero, .LBB0_355
.LBB0_374:                              # %vector.body236
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_355
.LBB0_375:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	mfence { sm }
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	addli r4, zero, 5
	bneq r9, r4, .LBB0_254
.LBB0_376:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 80
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_378
.LBB0_377:                              # %middle.block231
                                        #   in Loop: Header=BB0_378 Depth=2
	.loc	1 541 9 is_stmt 1               # parallel-rne.mlir:541:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_399
.LBB0_378:                              # %.preheader71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_380 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_380
.LBB0_379:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 542 11 is_stmt 1              # parallel-rne.mlir:542:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 557 13                        # parallel-rne.mlir:557:13
	add.s r6, r8, r11
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 557 13                        # parallel-rne.mlir:557:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	beq r5, zero, .LBB0_377
.LBB0_380:                              # %vector.body227
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_378 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	and r18, r17, r28
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	setlt.u r4, r16, r18
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r4, zero, .LBB0_382
# %bb.381:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_380 Depth=3
	or r9, r17, r15
.LBB0_383:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r4, zero, .LBB0_385
# %bb.384:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_380 Depth=3
	or r19, r10, r15
.LBB0_386:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r4, zero, .LBB0_388
# %bb.387:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_380 Depth=3
	or r4, r12, r15
.LBB0_389:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	bneq r6, zero, .LBB0_391
# %bb.390:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 554 19 is_stmt 1              # parallel-rne.mlir:554:19
	setlt.u r5, r3, r5
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	beq r5, zero, .LBB0_392
	j .LBB0_393
.LBB0_391:                              #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 554 19 is_stmt 1              # parallel-rne.mlir:554:19
	setlt.u r5, r3, r5
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r5, zero, .LBB0_393
.LBB0_392:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_393:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	setlt.u r5, r3, r14
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	beq r5, zero, .LBB0_396
# %bb.394:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	beq r5, zero, .LBB0_397
.LBB0_395:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r5, zero, .LBB0_379
	j .LBB0_398
.LBB0_396:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r5, zero, .LBB0_395
.LBB0_397:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	bneq r5, zero, .LBB0_379
.LBB0_398:                              # %vector.body227
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_379
.LBB0_399:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	mfence { sm }
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	addli r4, zero, 6
	bneq r9, r4, .LBB0_255
.LBB0_400:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 96
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_402
.LBB0_401:                              # %middle.block222
                                        #   in Loop: Header=BB0_402 Depth=2
	.loc	1 569 9 is_stmt 1               # parallel-rne.mlir:569:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_423
.LBB0_402:                              # %.preheader70
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_404
.LBB0_403:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 570 11 is_stmt 1              # parallel-rne.mlir:570:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 585 13                        # parallel-rne.mlir:585:13
	add.s r6, r8, r11
	.loc	1 570 11                        # parallel-rne.mlir:570:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 585 13                        # parallel-rne.mlir:585:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 570 11                        # parallel-rne.mlir:570:11
	beq r5, zero, .LBB0_401
.LBB0_404:                              # %vector.body218
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_402 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	and r18, r17, r28
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	setlt.u r4, r16, r18
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r4, zero, .LBB0_406
# %bb.405:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	or r9, r17, r15
.LBB0_407:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r4, zero, .LBB0_409
# %bb.408:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_404 Depth=3
	or r19, r10, r15
.LBB0_410:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r4, zero, .LBB0_412
# %bb.411:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_404 Depth=3
	or r4, r12, r15
.LBB0_413:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	bneq r6, zero, .LBB0_415
# %bb.414:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 582 19 is_stmt 1              # parallel-rne.mlir:582:19
	setlt.u r5, r3, r5
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	beq r5, zero, .LBB0_416
	j .LBB0_417
.LBB0_415:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 582 19 is_stmt 1              # parallel-rne.mlir:582:19
	setlt.u r5, r3, r5
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	bneq r5, zero, .LBB0_417
.LBB0_416:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_417:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	setlt.u r5, r3, r14
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	beq r5, zero, .LBB0_420
# %bb.418:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	beq r5, zero, .LBB0_421
.LBB0_419:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	bneq r5, zero, .LBB0_403
	j .LBB0_422
.LBB0_420:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	bneq r5, zero, .LBB0_419
.LBB0_421:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	bneq r5, zero, .LBB0_403
.LBB0_422:                              # %vector.body218
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_403
.LBB0_423:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 562 7                         # parallel-rne.mlir:562:7
	mfence { sm }
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	addli r4, zero, 7
	bneq r9, r4, .LBB0_448
.LBB0_424:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 112
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_426
.LBB0_425:                              # %middle.block213
                                        #   in Loop: Header=BB0_426 Depth=2
	.loc	1 597 9 is_stmt 1               # parallel-rne.mlir:597:9
	load.d r[4:5], -288(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_447
.LBB0_426:                              # %.preheader69
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[24:25], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	j .LBB0_428
.LBB0_427:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 598 11 is_stmt 1              # parallel-rne.mlir:598:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	add.s r6, r8, r11
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	setneq.d r5, r[24:25], r[22:23]
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	stores.w r9, 12(r6)
	stores.w r19, 8(r6)
	stores.w r4, 4(r6)
	stores.w r13, 0(r6)
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	beq r5, zero, .LBB0_425
.LBB0_428:                              # %vector.body209
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r11, r4, 2
	add.s r4, r2, r11
	loads.w r17, 12(r4)
	loads.w r26, 0(r4)
	loads.w r12, 4(r4)
	loads.w r10, 8(r4)
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	and r18, r17, r28
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	setlt.u r4, r16, r18
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r4, zero, .LBB0_430
# %bb.429:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r17, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	or r9, r17, r15
.LBB0_431:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	and r27, r10, r28
	setlt.u r4, r16, r27
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r4, zero, .LBB0_433
# %bb.432:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_428 Depth=3
	or r19, r10, r15
.LBB0_434:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	and r14, r12, r28
	setlt.u r4, r16, r14
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r4, zero, .LBB0_436
# %bb.435:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_428 Depth=3
	or r4, r12, r15
.LBB0_437:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	and r5, r26, r28
	setlt.u r6, r16, r5
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r6, zero, .LBB0_439
# %bb.438:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	.loc	1 610 19 is_stmt 1              # parallel-rne.mlir:610:19
	setlt.u r5, r3, r5
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r5, zero, .LBB0_440
	j .LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r26, r15
	.loc	1 610 19 is_stmt 1              # parallel-rne.mlir:610:19
	setlt.u r5, r3, r5
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r5, zero, .LBB0_441
.LBB0_440:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r13, r5, r7
.LBB0_441:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	setlt.u r5, r3, r14
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r5, zero, .LBB0_444
# %bb.442:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r5, zero, .LBB0_445
.LBB0_443:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r18
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r5, zero, .LBB0_427
	j .LBB0_446
.LBB0_444:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r7
	setlt.u r5, r3, r27
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r5, zero, .LBB0_443
.LBB0_445:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r19, r5, r7
	setlt.u r5, r3, r18
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r5, zero, .LBB0_427
.LBB0_446:                              # %vector.body209
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r9, r5, r7
	j .LBB0_427
.LBB0_447:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	mfence { sm }
.LBB0_448:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r2, zero, 3
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	sync_core
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	bneq r9, r2, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	.loc	1 624 13                        # parallel-rne.mlir:624:13
	addli r4, zero, 5
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	xsignal r2, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 15
	xsignal r2, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 624 13                        # parallel-rne.mlir:624:13
	loadli.w r2,  -48(r30)
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	loadli.w r5,  -24(r30)
	.loc	1 624 13                        # parallel-rne.mlir:624:13
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r4, 16
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	addli r4, r5, 1
	.loc	1 624 13                        # parallel-rne.mlir:624:13
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	storeli.w r4, -24(r30)
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r4, zero, 13
	.loc	1 624 13                        # parallel-rne.mlir:624:13
	add.s r2, r2, r5
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	xwait r4, 0
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r4, zero, 23
	xwait r4, 0
	j .LBB0_457
.LBB0_450:                              # %.critedge10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 624 13                        # parallel-rne.mlir:624:13
	loadli.w r2,  -48(r30)
	addli r6, zero, 5
	mod.s r4, r2, r6
	addli r5, r2, 1
	loadli.w r2,  -460(r30)                 # 4-byte Folded Reload
	storeli.w r5, -48(r30)
	slli r4, r4, 16
	add.s r2, r4, r2
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	bneq r9, r6, .LBB0_456
# %bb.451:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	addli r11, zero, 2
	addli r5, zero, 13
	addli r10, zero, 1
	lui r12, 790528
	addli r9, zero, 0
	xwait r4, 0
	addli r4, zero, 24
	xwait r4, 0
	lock zero, r11
	addli r4, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 4
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	ew_cfg r5, zero, zero, 10
	loadli.w r5,  -464(r30)                 # 4-byte Folded Reload
	ew_cfg r11, r10, r5, 11
	addli r5, zero, 3
	ew_cfg zero, zero, r5, 13
	lui r5, 266232
	ew_cfg r12, r4, r5, 14
	lui r4, 260096
	ew_cfg zero, r4, zero, 15
	sslut r2, r8, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r11
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	loadli.w r4,  -24(r30)
	mod.s r5, r4, r6
	addli r4, r4, 1
	storeli.w r4, -24(r30)
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	addli r4, zero, 14
	xwait r4, 0
	addli r4, zero, 25
	xwait r4, 0
	lock zero, r11
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	slli r4, r5, 16
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	ew_cfg zero, zero, zero, 1
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	loadli.w r5,  -468(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r5
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	ew_cfg r10, zero, zero, 3
	lui r10, 16
	loadli.w r5,  -472(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, zero, zero, 0
.LBB0_452:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r4, r9
	add.s r6, r8, r9
	addli r9, r9, 512
	dscmpnsel r5, r6, r6, 0
	bneq r9, r10, .LBB0_452
# %bb.453:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	addli r9, zero, 0
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	unlock r5
	.loc	1 629 7 is_stmt 1               # parallel-rne.mlir:629:7
	lock zero, r5
	addli r5, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
	ewcoeff_cfg r3, zero, zero, 0
.LBB0_454:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r4, r9
	addli r9, r9, 512
	dscmpnsel r5, r5, r5, 4
	bneq r9, r10, .LBB0_454
# %bb.455:                              # %.critedge14.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 2
	.loc	1 630 7 is_stmt 1               # parallel-rne.mlir:630:7
	addli r5, zero, 15
	lui r10, 260096
	addli r9, zero, 4095
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	unlock r6
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	xwait r5, 0
	lock zero, r6
	lui r5, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r10, r5, zero, 0
	addli r5, zero, 4
	ew_cfg zero, r9, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmadd r8, r8, r4, 0
	addli r4, zero, 25
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r4, 0
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	lock zero, r6
	addli r4, zero, 13
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r10, r10, zero, 0
	ew_cfg zero, r9, zero, 2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmadd r2, r2, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r4, 0
	addli r4, zero, 23
	xsignal r4, 0
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	j .LBB0_457
.LBB0_456:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	loadli.w r4,  -24(r30)
	addli r4, r4, 1
	storeli.w r4, -24(r30)
.LBB0_457:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	addli r4, zero, 255
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	xfence
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	mfence { lm, sm, gm }
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	csr_set csr5, r4
	sub.s r4, r8, r2
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	beq r9, zero, .LBB0_465
# %bb.458:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	addli r4, zero, 1
	beq r9, r4, .LBB0_496
.LBB0_459:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	addli r4, zero, 2
	beq r9, r4, .LBB0_527
.LBB0_460:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 723 7                         # parallel-rne.mlir:723:7
	addli r4, zero, 3
	beq r9, r4, .LBB0_558
.LBB0_461:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 751 7                         # parallel-rne.mlir:751:7
	addli r4, zero, 4
	beq r9, r4, .LBB0_589
.LBB0_462:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	addli r4, zero, 5
	beq r9, r4, .LBB0_620
.LBB0_463:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	addli r4, zero, 6
	beq r9, r4, .LBB0_651
.LBB0_464:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	addli r4, zero, 7
	beq r9, r4, .LBB0_682
	j .LBB0_713
.LBB0_465:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	zext_int2long r[5:6], zero
	.loc	1 639 7 is_stmt 1               # parallel-rne.mlir:639:7
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_467
.LBB0_466:                              # %middle.block204
                                        #   in Loop: Header=BB0_467 Depth=2
	.loc	1 646 9                         # parallel-rne.mlir:646:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_495
.LBB0_467:                              # %.preheader68
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_476 Depth 3
                                        #       Child Loop BB0_470 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 647 11 is_stmt 1              # parallel-rne.mlir:647:11
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	loadli.w r4,  -384(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_474
# %bb.468:                              # %scalar.ph198.preheader
                                        #   in Loop: Header=BB0_467 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_470
.LBB0_469:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_470 Depth=3
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 662 13 is_stmt 1              # parallel-rne.mlir:662:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_466
.LBB0_470:                              # %scalar.ph198
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_467 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.ul r[4:5], r[9:10], r[20:21]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	and r5, r12, r28
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	setlt.u r6, r16, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	bneq r6, zero, .LBB0_472
# %bb.471:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 659 19 is_stmt 1              # parallel-rne.mlir:659:19
	setlt.u r5, r3, r5
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	bneq r5, zero, .LBB0_469
	j .LBB0_473
.LBB0_472:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 659 19 is_stmt 1              # parallel-rne.mlir:659:19
	setlt.u r5, r3, r5
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	bneq r5, zero, .LBB0_469
.LBB0_473:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_469
.LBB0_474:                              # %vector.body200.preheader
                                        #   in Loop: Header=BB0_467 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_476
.LBB0_475:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 647 11 is_stmt 1              # parallel-rne.mlir:647:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 662 13                        # parallel-rne.mlir:662:13
	add.s r5, r8, r26
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	seteq.d r4, r[24:25], r[22:23]
	.loc	1 662 13                        # parallel-rne.mlir:662:13
	stores.w r27, 12(r5)
	stores.w r18, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	bneq r4, zero, .LBB0_466
.LBB0_476:                              # %vector.body200
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_467 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r26, r4, 2
	add.s r12, r2, r26
	loads.w r17, 12(r12)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	and r9, r17, r28
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	setlt.u r4, r16, r9
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	bneq r4, zero, .LBB0_478
# %bb.477:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r17, 0
	j .LBB0_479
.LBB0_478:                              #   in Loop: Header=BB0_476 Depth=3
	or r27, r17, r15
.LBB0_479:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r4, 8(r12)
	and r19, r4, r28
	setlt.u r5, r16, r19
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	bneq r5, zero, .LBB0_481
# %bb.480:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r4, 0
	j .LBB0_482
.LBB0_481:                              #   in Loop: Header=BB0_476 Depth=3
	or r18, r4, r15
.LBB0_482:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	bneq r5, zero, .LBB0_484
# %bb.483:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_485
.LBB0_484:                              #   in Loop: Header=BB0_476 Depth=3
	or r11, r10, r15
.LBB0_485:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	bneq r6, zero, .LBB0_487
# %bb.486:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 659 19 is_stmt 1              # parallel-rne.mlir:659:19
	setlt.u r5, r3, r5
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	beq r5, zero, .LBB0_488
	j .LBB0_489
.LBB0_487:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 659 19 is_stmt 1              # parallel-rne.mlir:659:19
	setlt.u r5, r3, r5
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	bneq r5, zero, .LBB0_489
.LBB0_488:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_489:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	setlt.u r5, r3, r13
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	beq r5, zero, .LBB0_492
# %bb.490:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r19
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	beq r5, zero, .LBB0_493
.LBB0_491:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	bneq r4, zero, .LBB0_475
	j .LBB0_494
.LBB0_492:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r19
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	bneq r5, zero, .LBB0_491
.LBB0_493:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	bneq r4, zero, .LBB0_475
.LBB0_494:                              # %vector.body200
                                        #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r27, r4, r7
	j .LBB0_475
.LBB0_495:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	mfence { sm }
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	addli r4, zero, 1
	bneq r9, r4, .LBB0_459
.LBB0_496:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r5, r5, r4
	storeli.w r5, -376(r30)                 # 4-byte Folded Spill
	zext_int2long r[5:6], r4
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_498
.LBB0_497:                              # %middle.block195
                                        #   in Loop: Header=BB0_498 Depth=2
	.loc	1 674 9 is_stmt 1               # parallel-rne.mlir:674:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_526
.LBB0_498:                              # %.preheader67
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_507 Depth 3
                                        #       Child Loop BB0_501 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 675 11 is_stmt 1              # parallel-rne.mlir:675:11
	store.d r[5:6], -360(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[5:6], r4
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_505
# %bb.499:                              # %scalar.ph189.preheader
                                        #   in Loop: Header=BB0_498 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_501
.LBB0_500:                              # %scalar.ph189
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 690 13 is_stmt 1              # parallel-rne.mlir:690:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_497
.LBB0_501:                              # %scalar.ph189
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_498 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	add.ul r[4:5], r[9:10], r[20:21]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	and r5, r12, r28
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	setlt.u r6, r16, r5
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	bneq r6, zero, .LBB0_503
# %bb.502:                              # %scalar.ph189
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 687 19 is_stmt 1              # parallel-rne.mlir:687:19
	setlt.u r5, r3, r5
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	bneq r5, zero, .LBB0_500
	j .LBB0_504
.LBB0_503:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 687 19 is_stmt 1              # parallel-rne.mlir:687:19
	setlt.u r5, r3, r5
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	bneq r5, zero, .LBB0_500
.LBB0_504:                              # %scalar.ph189
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_500
.LBB0_505:                              # %vector.body191.preheader
                                        #   in Loop: Header=BB0_498 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_507
.LBB0_506:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 675 11 is_stmt 1              # parallel-rne.mlir:675:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 690 13                        # parallel-rne.mlir:690:13
	add.s r5, r8, r26
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	seteq.d r4, r[24:25], r[22:23]
	.loc	1 690 13                        # parallel-rne.mlir:690:13
	stores.w r27, 12(r5)
	stores.w r18, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 675 11                        # parallel-rne.mlir:675:11
	bneq r4, zero, .LBB0_497
.LBB0_507:                              # %vector.body191
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_498 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	add.ul r[4:5], r[24:25], r[20:21]
	slli r26, r4, 2
	add.s r12, r2, r26
	loads.w r17, 12(r12)
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	and r9, r17, r28
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	setlt.u r4, r16, r9
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	bneq r4, zero, .LBB0_509
# %bb.508:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r17, 0
	j .LBB0_510
.LBB0_509:                              #   in Loop: Header=BB0_507 Depth=3
	or r27, r17, r15
.LBB0_510:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	loads.w r4, 8(r12)
	and r19, r4, r28
	setlt.u r5, r16, r19
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	bneq r5, zero, .LBB0_512
# %bb.511:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r4, 0
	j .LBB0_513
.LBB0_512:                              #   in Loop: Header=BB0_507 Depth=3
	or r18, r4, r15
.LBB0_513:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	bneq r5, zero, .LBB0_515
# %bb.514:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_516
.LBB0_515:                              #   in Loop: Header=BB0_507 Depth=3
	or r11, r10, r15
.LBB0_516:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	bneq r6, zero, .LBB0_518
# %bb.517:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 687 19 is_stmt 1              # parallel-rne.mlir:687:19
	setlt.u r5, r3, r5
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r5, zero, .LBB0_519
	j .LBB0_520
.LBB0_518:                              #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 687 19 is_stmt 1              # parallel-rne.mlir:687:19
	setlt.u r5, r3, r5
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	bneq r5, zero, .LBB0_520
.LBB0_519:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_520:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	setlt.u r5, r3, r13
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r5, zero, .LBB0_523
# %bb.521:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r19
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r5, zero, .LBB0_524
.LBB0_522:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	bneq r4, zero, .LBB0_506
	j .LBB0_525
.LBB0_523:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r19
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	bneq r5, zero, .LBB0_522
.LBB0_524:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r18, r4, r7
	setlt.u r4, r3, r9
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	bneq r4, zero, .LBB0_506
.LBB0_525:                              # %vector.body191
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r27, r4, r7
	j .LBB0_506
.LBB0_526:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 667 7                         # parallel-rne.mlir:667:7
	mfence { sm }
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	addli r4, zero, 2
	bneq r9, r4, .LBB0_460
.LBB0_527:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	addli r4, zero, 32
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_529
.LBB0_528:                              # %middle.block186
                                        #   in Loop: Header=BB0_529 Depth=2
	.loc	1 702 9 is_stmt 1               # parallel-rne.mlir:702:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[9:10], -344(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_557
.LBB0_529:                              # %.preheader66
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_538 Depth 3
                                        #       Child Loop BB0_532 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 703 11 is_stmt 1              # parallel-rne.mlir:703:11
	store.d r[5:6], -344(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	loadli.w r4,  -360(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_536
# %bb.530:                              # %scalar.ph180.preheader
                                        #   in Loop: Header=BB0_529 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_532
.LBB0_531:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_532 Depth=3
	.loc	1 703 11                        # parallel-rne.mlir:703:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 718 13 is_stmt 1              # parallel-rne.mlir:718:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 703 11                        # parallel-rne.mlir:703:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_528
.LBB0_532:                              # %scalar.ph180
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_529 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	add.ul r[4:5], r[9:10], r[18:19]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	and r5, r12, r28
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	setlt.u r6, r16, r5
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	bneq r6, zero, .LBB0_534
# %bb.533:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_532 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 715 19 is_stmt 1              # parallel-rne.mlir:715:19
	setlt.u r5, r3, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r5, zero, .LBB0_531
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_532 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 715 19 is_stmt 1              # parallel-rne.mlir:715:19
	setlt.u r5, r3, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r5, zero, .LBB0_531
.LBB0_535:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_532 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_531
.LBB0_536:                              # %vector.body182.preheader
                                        #   in Loop: Header=BB0_529 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_538
.LBB0_537:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 703 11 is_stmt 1              # parallel-rne.mlir:703:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 718 13                        # parallel-rne.mlir:718:13
	add.s r5, r8, r24
	.loc	1 703 11                        # parallel-rne.mlir:703:11
	seteq.d r4, r[20:21], r[22:23]
	.loc	1 718 13                        # parallel-rne.mlir:718:13
	stores.w r25, 12(r5)
	stores.w r26, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 703 11                        # parallel-rne.mlir:703:11
	bneq r4, zero, .LBB0_528
.LBB0_538:                              # %vector.body182
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_529 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r24, r4, 2
	add.s r12, r2, r24
	loads.w r17, 12(r12)
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	and r9, r17, r28
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	setlt.u r4, r16, r9
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	bneq r4, zero, .LBB0_540
# %bb.539:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r17, 0
	j .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_538 Depth=3
	or r25, r17, r15
.LBB0_541:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	bneq r5, zero, .LBB0_543
# %bb.542:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_544
.LBB0_543:                              #   in Loop: Header=BB0_538 Depth=3
	or r26, r4, r15
.LBB0_544:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	bneq r5, zero, .LBB0_546
# %bb.545:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_547
.LBB0_546:                              #   in Loop: Header=BB0_538 Depth=3
	or r11, r10, r15
.LBB0_547:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	bneq r6, zero, .LBB0_549
# %bb.548:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 715 19 is_stmt 1              # parallel-rne.mlir:715:19
	setlt.u r5, r3, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	beq r5, zero, .LBB0_550
	j .LBB0_551
.LBB0_549:                              #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 715 19 is_stmt 1              # parallel-rne.mlir:715:19
	setlt.u r5, r3, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r5, zero, .LBB0_551
.LBB0_550:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_551:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	setlt.u r5, r3, r13
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	beq r5, zero, .LBB0_554
# %bb.552:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	beq r5, zero, .LBB0_555
.LBB0_553:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r4, zero, .LBB0_537
	j .LBB0_556
.LBB0_554:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r27
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r5, zero, .LBB0_553
.LBB0_555:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r26, r4, r7
	setlt.u r4, r3, r9
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r4, zero, .LBB0_537
.LBB0_556:                              # %vector.body182
                                        #   in Loop: Header=BB0_538 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r25, r4, r7
	j .LBB0_537
.LBB0_557:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	mfence { sm }
	.loc	1 723 7                         # parallel-rne.mlir:723:7
	addli r4, zero, 3
	bneq r9, r4, .LBB0_461
.LBB0_558:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	addli r4, zero, 48
	.loc	1 723 7                         # parallel-rne.mlir:723:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_560
.LBB0_559:                              # %middle.block177
                                        #   in Loop: Header=BB0_560 Depth=2
	.loc	1 730 9 is_stmt 1               # parallel-rne.mlir:730:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[9:10], -336(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_588
.LBB0_560:                              # %.preheader65
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_569 Depth 3
                                        #       Child Loop BB0_563 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 731 11 is_stmt 1              # parallel-rne.mlir:731:11
	store.d r[5:6], -336(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	loadli.w r4,  -344(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_567
# %bb.561:                              # %scalar.ph171.preheader
                                        #   in Loop: Header=BB0_560 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_563
.LBB0_562:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 746 13 is_stmt 1              # parallel-rne.mlir:746:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_559
.LBB0_563:                              # %scalar.ph171
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_560 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	add.ul r[4:5], r[9:10], r[18:19]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	and r5, r12, r28
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	setlt.u r6, r16, r5
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	bneq r6, zero, .LBB0_565
# %bb.564:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 743 19 is_stmt 1              # parallel-rne.mlir:743:19
	setlt.u r5, r3, r5
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	bneq r5, zero, .LBB0_562
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 743 19 is_stmt 1              # parallel-rne.mlir:743:19
	setlt.u r5, r3, r5
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	bneq r5, zero, .LBB0_562
.LBB0_566:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_562
.LBB0_567:                              # %vector.body173.preheader
                                        #   in Loop: Header=BB0_560 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_569
.LBB0_568:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 731 11 is_stmt 1              # parallel-rne.mlir:731:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 746 13                        # parallel-rne.mlir:746:13
	add.s r5, r8, r24
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	seteq.d r4, r[20:21], r[22:23]
	.loc	1 746 13                        # parallel-rne.mlir:746:13
	stores.w r25, 12(r5)
	stores.w r26, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	bneq r4, zero, .LBB0_559
.LBB0_569:                              # %vector.body173
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_560 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r24, r4, 2
	add.s r12, r2, r24
	loads.w r17, 12(r12)
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	and r9, r17, r28
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	setlt.u r4, r16, r9
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	bneq r4, zero, .LBB0_571
# %bb.570:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r17, 0
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_569 Depth=3
	or r25, r17, r15
.LBB0_572:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	bneq r5, zero, .LBB0_574
# %bb.573:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_569 Depth=3
	or r26, r4, r15
.LBB0_575:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	bneq r5, zero, .LBB0_577
# %bb.576:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_569 Depth=3
	or r11, r10, r15
.LBB0_578:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	bneq r6, zero, .LBB0_580
# %bb.579:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 743 19 is_stmt 1              # parallel-rne.mlir:743:19
	setlt.u r5, r3, r5
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	beq r5, zero, .LBB0_581
	j .LBB0_582
.LBB0_580:                              #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 743 19 is_stmt 1              # parallel-rne.mlir:743:19
	setlt.u r5, r3, r5
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	bneq r5, zero, .LBB0_582
.LBB0_581:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_582:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	setlt.u r5, r3, r13
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	beq r5, zero, .LBB0_585
# %bb.583:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	beq r5, zero, .LBB0_586
.LBB0_584:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	bneq r4, zero, .LBB0_568
	j .LBB0_587
.LBB0_585:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r27
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	bneq r5, zero, .LBB0_584
.LBB0_586:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r26, r4, r7
	setlt.u r4, r3, r9
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	bneq r4, zero, .LBB0_568
.LBB0_587:                              # %vector.body173
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r25, r4, r7
	j .LBB0_568
.LBB0_588:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 723 7                         # parallel-rne.mlir:723:7
	mfence { sm }
	.loc	1 751 7                         # parallel-rne.mlir:751:7
	addli r4, zero, 4
	bneq r9, r4, .LBB0_462
.LBB0_589:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -336(r30)                 # 4-byte Folded Spill
	addli r4, zero, 64
	.loc	1 751 7                         # parallel-rne.mlir:751:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_591
.LBB0_590:                              # %middle.block168
                                        #   in Loop: Header=BB0_591 Depth=2
	.loc	1 758 9 is_stmt 1               # parallel-rne.mlir:758:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[9:10], -328(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_619
.LBB0_591:                              # %.preheader64
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_600 Depth 3
                                        #       Child Loop BB0_594 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 759 11 is_stmt 1              # parallel-rne.mlir:759:11
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	loadli.w r4,  -336(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_598
# %bb.592:                              # %scalar.ph162.preheader
                                        #   in Loop: Header=BB0_591 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_594
.LBB0_593:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 759 11                        # parallel-rne.mlir:759:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 774 13 is_stmt 1              # parallel-rne.mlir:774:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 759 11                        # parallel-rne.mlir:759:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_590
.LBB0_594:                              # %scalar.ph162
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_591 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	add.ul r[4:5], r[9:10], r[18:19]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	and r5, r12, r28
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	setlt.u r6, r16, r5
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	bneq r6, zero, .LBB0_596
# %bb.595:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 771 19 is_stmt 1              # parallel-rne.mlir:771:19
	setlt.u r5, r3, r5
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r5, zero, .LBB0_593
	j .LBB0_597
.LBB0_596:                              #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 771 19 is_stmt 1              # parallel-rne.mlir:771:19
	setlt.u r5, r3, r5
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r5, zero, .LBB0_593
.LBB0_597:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_593
.LBB0_598:                              # %vector.body164.preheader
                                        #   in Loop: Header=BB0_591 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_600
.LBB0_599:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 759 11 is_stmt 1              # parallel-rne.mlir:759:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	add.s r5, r8, r24
	.loc	1 759 11                        # parallel-rne.mlir:759:11
	seteq.d r4, r[20:21], r[22:23]
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	stores.w r25, 12(r5)
	stores.w r26, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 759 11                        # parallel-rne.mlir:759:11
	bneq r4, zero, .LBB0_590
.LBB0_600:                              # %vector.body164
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_591 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r24, r4, 2
	add.s r12, r2, r24
	loads.w r17, 12(r12)
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	and r9, r17, r28
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	setlt.u r4, r16, r9
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	bneq r4, zero, .LBB0_602
# %bb.601:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r17, 0
	j .LBB0_603
.LBB0_602:                              #   in Loop: Header=BB0_600 Depth=3
	or r25, r17, r15
.LBB0_603:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	bneq r5, zero, .LBB0_605
# %bb.604:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_606
.LBB0_605:                              #   in Loop: Header=BB0_600 Depth=3
	or r26, r4, r15
.LBB0_606:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	bneq r5, zero, .LBB0_608
# %bb.607:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_600 Depth=3
	or r11, r10, r15
.LBB0_609:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	bneq r6, zero, .LBB0_611
# %bb.610:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 771 19 is_stmt 1              # parallel-rne.mlir:771:19
	setlt.u r5, r3, r5
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	beq r5, zero, .LBB0_612
	j .LBB0_613
.LBB0_611:                              #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 771 19 is_stmt 1              # parallel-rne.mlir:771:19
	setlt.u r5, r3, r5
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r5, zero, .LBB0_613
.LBB0_612:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_613:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	setlt.u r5, r3, r13
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	beq r5, zero, .LBB0_616
# %bb.614:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	beq r5, zero, .LBB0_617
.LBB0_615:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r4, zero, .LBB0_599
	j .LBB0_618
.LBB0_616:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r27
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r5, zero, .LBB0_615
.LBB0_617:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r26, r4, r7
	setlt.u r4, r3, r9
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r4, zero, .LBB0_599
.LBB0_618:                              # %vector.body164
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r25, r4, r7
	j .LBB0_599
.LBB0_619:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 751 7                         # parallel-rne.mlir:751:7
	mfence { sm }
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	addli r4, zero, 5
	bneq r9, r4, .LBB0_463
.LBB0_620:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	addli r4, zero, 80
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_622
.LBB0_621:                              # %middle.block159
                                        #   in Loop: Header=BB0_622 Depth=2
	.loc	1 786 9 is_stmt 1               # parallel-rne.mlir:786:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[9:10], -320(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_650
.LBB0_622:                              # %.preheader63
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_631 Depth 3
                                        #       Child Loop BB0_625 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 787 11 is_stmt 1              # parallel-rne.mlir:787:11
	store.d r[5:6], -320(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_629
# %bb.623:                              # %scalar.ph153.preheader
                                        #   in Loop: Header=BB0_622 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_625
.LBB0_624:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_625 Depth=3
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 802 13 is_stmt 1              # parallel-rne.mlir:802:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_621
.LBB0_625:                              # %scalar.ph153
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_622 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.ul r[4:5], r[9:10], r[18:19]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	and r5, r12, r28
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	setlt.u r6, r16, r5
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	bneq r6, zero, .LBB0_627
# %bb.626:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 799 19 is_stmt 1              # parallel-rne.mlir:799:19
	setlt.u r5, r3, r5
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	bneq r5, zero, .LBB0_624
	j .LBB0_628
.LBB0_627:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 799 19 is_stmt 1              # parallel-rne.mlir:799:19
	setlt.u r5, r3, r5
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	bneq r5, zero, .LBB0_624
.LBB0_628:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_624
.LBB0_629:                              # %vector.body155.preheader
                                        #   in Loop: Header=BB0_622 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_631
.LBB0_630:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 787 11 is_stmt 1              # parallel-rne.mlir:787:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 802 13                        # parallel-rne.mlir:802:13
	add.s r5, r8, r24
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	seteq.d r4, r[20:21], r[22:23]
	.loc	1 802 13                        # parallel-rne.mlir:802:13
	stores.w r25, 12(r5)
	stores.w r26, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	bneq r4, zero, .LBB0_621
.LBB0_631:                              # %vector.body155
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_622 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r24, r4, 2
	add.s r12, r2, r24
	loads.w r17, 12(r12)
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	and r9, r17, r28
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	setlt.u r4, r16, r9
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	bneq r4, zero, .LBB0_633
# %bb.632:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r17, 0
	j .LBB0_634
.LBB0_633:                              #   in Loop: Header=BB0_631 Depth=3
	or r25, r17, r15
.LBB0_634:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	bneq r5, zero, .LBB0_636
# %bb.635:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_631 Depth=3
	or r26, r4, r15
.LBB0_637:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	bneq r5, zero, .LBB0_639
# %bb.638:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_640
.LBB0_639:                              #   in Loop: Header=BB0_631 Depth=3
	or r11, r10, r15
.LBB0_640:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	bneq r6, zero, .LBB0_642
# %bb.641:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 799 19 is_stmt 1              # parallel-rne.mlir:799:19
	setlt.u r5, r3, r5
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	beq r5, zero, .LBB0_643
	j .LBB0_644
.LBB0_642:                              #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 799 19 is_stmt 1              # parallel-rne.mlir:799:19
	setlt.u r5, r3, r5
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	bneq r5, zero, .LBB0_644
.LBB0_643:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_644:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	setlt.u r5, r3, r13
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	beq r5, zero, .LBB0_647
# %bb.645:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	beq r5, zero, .LBB0_648
.LBB0_646:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	bneq r4, zero, .LBB0_630
	j .LBB0_649
.LBB0_647:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r27
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	bneq r5, zero, .LBB0_646
.LBB0_648:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r26, r4, r7
	setlt.u r4, r3, r9
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	bneq r4, zero, .LBB0_630
.LBB0_649:                              # %vector.body155
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r25, r4, r7
	j .LBB0_630
.LBB0_650:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	mfence { sm }
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	addli r4, zero, 6
	bneq r9, r4, .LBB0_464
.LBB0_651:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -320(r30)                 # 4-byte Folded Spill
	addli r4, zero, 96
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_653
.LBB0_652:                              # %middle.block150
                                        #   in Loop: Header=BB0_653 Depth=2
	.loc	1 814 9 is_stmt 1               # parallel-rne.mlir:814:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[9:10], -312(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_681
.LBB0_653:                              # %.preheader62
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_662 Depth 3
                                        #       Child Loop BB0_656 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 815 11 is_stmt 1              # parallel-rne.mlir:815:11
	store.d r[5:6], -312(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	loadli.w r4,  -320(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_660
# %bb.654:                              # %scalar.ph144.preheader
                                        #   in Loop: Header=BB0_653 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_656
.LBB0_655:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_656 Depth=3
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 830 13 is_stmt 1              # parallel-rne.mlir:830:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_652
.LBB0_656:                              # %scalar.ph144
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_653 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.ul r[4:5], r[9:10], r[18:19]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	and r5, r12, r28
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	setlt.u r6, r16, r5
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r6, zero, .LBB0_658
# %bb.657:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_656 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 827 19 is_stmt 1              # parallel-rne.mlir:827:19
	setlt.u r5, r3, r5
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	bneq r5, zero, .LBB0_655
	j .LBB0_659
.LBB0_658:                              #   in Loop: Header=BB0_656 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 827 19 is_stmt 1              # parallel-rne.mlir:827:19
	setlt.u r5, r3, r5
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	bneq r5, zero, .LBB0_655
.LBB0_659:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_656 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_655
.LBB0_660:                              # %vector.body146.preheader
                                        #   in Loop: Header=BB0_653 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_662
.LBB0_661:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 815 11 is_stmt 1              # parallel-rne.mlir:815:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 830 13                        # parallel-rne.mlir:830:13
	add.s r5, r8, r24
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	seteq.d r4, r[20:21], r[22:23]
	.loc	1 830 13                        # parallel-rne.mlir:830:13
	stores.w r25, 12(r5)
	stores.w r26, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	bneq r4, zero, .LBB0_652
.LBB0_662:                              # %vector.body146
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_653 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r24, r4, 2
	add.s r12, r2, r24
	loads.w r17, 12(r12)
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	and r9, r17, r28
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	setlt.u r4, r16, r9
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r4, zero, .LBB0_664
# %bb.663:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r17, 0
	j .LBB0_665
.LBB0_664:                              #   in Loop: Header=BB0_662 Depth=3
	or r25, r17, r15
.LBB0_665:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r5, zero, .LBB0_667
# %bb.666:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_668
.LBB0_667:                              #   in Loop: Header=BB0_662 Depth=3
	or r26, r4, r15
.LBB0_668:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r5, zero, .LBB0_670
# %bb.669:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_671
.LBB0_670:                              #   in Loop: Header=BB0_662 Depth=3
	or r11, r10, r15
.LBB0_671:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r6, zero, .LBB0_673
# %bb.672:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 827 19 is_stmt 1              # parallel-rne.mlir:827:19
	setlt.u r5, r3, r5
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	beq r5, zero, .LBB0_674
	j .LBB0_675
.LBB0_673:                              #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 827 19 is_stmt 1              # parallel-rne.mlir:827:19
	setlt.u r5, r3, r5
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	bneq r5, zero, .LBB0_675
.LBB0_674:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_675:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	setlt.u r5, r3, r13
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	beq r5, zero, .LBB0_678
# %bb.676:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	beq r5, zero, .LBB0_679
.LBB0_677:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	bneq r4, zero, .LBB0_661
	j .LBB0_680
.LBB0_678:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r27
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	bneq r5, zero, .LBB0_677
.LBB0_679:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r26, r4, r7
	setlt.u r4, r3, r9
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	bneq r4, zero, .LBB0_661
.LBB0_680:                              # %vector.body146
                                        #   in Loop: Header=BB0_662 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r25, r4, r7
	j .LBB0_661
.LBB0_681:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	mfence { sm }
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	addli r4, zero, 7
	bneq r9, r4, .LBB0_713
.LBB0_682:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -312(r30)                 # 4-byte Folded Spill
	addli r4, zero, 112
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_684
.LBB0_683:                              # %middle.block
                                        #   in Loop: Header=BB0_684 Depth=2
	.loc	1 842 9 is_stmt 1               # parallel-rne.mlir:842:9
	load.d r[4:5], -288(r30)                # 8-byte Folded Reload
	load.d r[9:10], -304(r30)               # 8-byte Folded Reload
	setlt.ul r4, r[9:10], r[4:5]
	addli.d r[5:6], r[9:10], 1
	beq r4, zero, .LBB0_712
.LBB0_684:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_693 Depth 3
                                        #       Child Loop BB0_687 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	.loc	1 843 11 is_stmt 1              # parallel-rne.mlir:843:11
	store.d r[5:6], -304(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[5:6], r4
	loadli.w r4,  -312(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_691
# %bb.685:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_684 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_687
.LBB0_686:                              # %scalar.ph
                                        #   in Loop: Header=BB0_687 Depth=3
	.loc	1 843 11                        # parallel-rne.mlir:843:11
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 858 13 is_stmt 1              # parallel-rne.mlir:858:13
	add.s r4, r8, r4
	stores.w r11, 0(r4)
	.loc	1 843 11                        # parallel-rne.mlir:843:11
	setlt.ul r5, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r5, zero, .LBB0_683
.LBB0_687:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_684 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	add.ul r[4:5], r[9:10], r[18:19]
	slli r4, r4, 2
	add.s r5, r2, r4
	loads.w r12, 0(r5)
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	and r5, r12, r28
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	setlt.u r6, r16, r5
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r6, zero, .LBB0_689
# %bb.688:                              # %scalar.ph
                                        #   in Loop: Header=BB0_687 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 855 19 is_stmt 1              # parallel-rne.mlir:855:19
	setlt.u r5, r3, r5
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	bneq r5, zero, .LBB0_686
	j .LBB0_690
.LBB0_689:                              #   in Loop: Header=BB0_687 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r15
	.loc	1 855 19 is_stmt 1              # parallel-rne.mlir:855:19
	setlt.u r5, r3, r5
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	bneq r5, zero, .LBB0_686
.LBB0_690:                              # %scalar.ph
                                        #   in Loop: Header=BB0_687 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r11, r5, r7
	j .LBB0_686
.LBB0_691:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_684 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_693
.LBB0_692:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 843 11 is_stmt 1              # parallel-rne.mlir:843:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 858 13                        # parallel-rne.mlir:858:13
	add.s r5, r8, r24
	.loc	1 843 11                        # parallel-rne.mlir:843:11
	seteq.d r4, r[20:21], r[22:23]
	.loc	1 858 13                        # parallel-rne.mlir:858:13
	stores.w r25, 12(r5)
	stores.w r26, 8(r5)
	stores.w r11, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 843 11                        # parallel-rne.mlir:843:11
	bneq r4, zero, .LBB0_683
.LBB0_693:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_684 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r24, r4, 2
	add.s r12, r2, r24
	loads.w r17, 12(r12)
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	and r9, r17, r28
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	setlt.u r4, r16, r9
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r4, zero, .LBB0_695
# %bb.694:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r17, 0
	j .LBB0_696
.LBB0_695:                              #   in Loop: Header=BB0_693 Depth=3
	or r25, r17, r15
.LBB0_696:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r5, r16, r27
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r5, zero, .LBB0_698
# %bb.697:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_699
.LBB0_698:                              #   in Loop: Header=BB0_693 Depth=3
	or r26, r4, r15
.LBB0_699:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r10, 4(r12)
	and r13, r10, r28
	setlt.u r5, r16, r13
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r5, zero, .LBB0_701
# %bb.700:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_702
.LBB0_701:                              #   in Loop: Header=BB0_693 Depth=3
	or r11, r10, r15
.LBB0_702:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r14, 0(r12)
	and r5, r14, r28
	setlt.u r6, r16, r5
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r6, zero, .LBB0_704
# %bb.703:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	.loc	1 855 19 is_stmt 1              # parallel-rne.mlir:855:19
	setlt.u r5, r3, r5
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	beq r5, zero, .LBB0_705
	j .LBB0_706
.LBB0_704:                              #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r14, r15
	.loc	1 855 19 is_stmt 1              # parallel-rne.mlir:855:19
	setlt.u r5, r3, r5
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	bneq r5, zero, .LBB0_706
.LBB0_705:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r1
	and r12, r5, r7
.LBB0_706:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	setlt.u r5, r3, r13
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	beq r5, zero, .LBB0_709
# %bb.707:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r27
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	beq r5, zero, .LBB0_710
.LBB0_708:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r9
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	bneq r4, zero, .LBB0_692
	j .LBB0_711
.LBB0_709:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r1
	and r11, r5, r7
	setlt.u r5, r3, r27
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	bneq r5, zero, .LBB0_708
.LBB0_710:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r26, r4, r7
	setlt.u r4, r3, r9
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	bneq r4, zero, .LBB0_692
.LBB0_711:                              # %vector.body
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r17, 16
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r1
	and r25, r4, r7
	j .LBB0_692
.LBB0_712:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	mfence { sm }
.LBB0_713:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 863 7                         # parallel-rne.mlir:863:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 864 7                         # parallel-rne.mlir:864:7
	beq r9, r2, .LBB0_5
# %bb.714:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 873 7                         # parallel-rne.mlir:873:7
	bneq r9, zero, .LBB0_7
# %bb.715:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -436(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -352(r30)              # 8-byte Folded Reload
	.loc	1 873 7                         # parallel-rne.mlir:873:7
	load.d r[9:10], -432(r30)               # 8-byte Folded Reload
	load.d r[13:14], 24(r30)
	sext_int2long r[4:5], r2
	addli r2, zero, 18
	min.sl r[11:12], r[4:5], r[11:12]
	sll.d r[9:10], r[9:10], r2
	addli r2, zero, 16
	addli.d r[11:12], r[11:12], 128
	xwait r2, 0
	add.ul r[9:10], r[13:14], r[9:10]
	load.d r[13:14], -416(r30)              # 8-byte Folded Reload
	ori r2, r8, 64
	addli r8, zero, 64
	max.sl r[11:12], r[11:12], r[4:5]
	add.ul r[9:10], r[9:10], r[13:14]
	sub.sl r[4:5], r[11:12], r[4:5]
	addli r11, zero, 5
	addli r12, zero, 1
	lock zero, r11
	.loc	1 869 13 is_stmt 1              # parallel-rne.mlir:869:13
	min.sl r[4:5], r[4:5], r[22:23]
	.loc	1 873 7                         # parallel-rne.mlir:873:7
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r2, r8, 3
	addli r10, zero, 128
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r9
	load.d r[13:14], -424(r30)              # 8-byte Folded Reload
	.loc	1 873 7                         # parallel-rne.mlir:873:7
	addli r2, r13, 31
	slli r6, r13, 1
	srli r2, r2, 5
	dma_cfg r8, r10, r2, 4
	andi r2, r6, 62
	addli r6, zero, 512
	addli r8, zero, 2048
	dma_cfg r8, r6, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	addli r2, zero, 17
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_716:                              # %._crit_edge
	.loc	1 875 5                         # parallel-rne.mlir:875:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_718
# %bb.717:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 875 5                         # parallel-rne.mlir:875:5
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
.LBB0_718:
	.loc	1 876 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:876:5
	addli sp, sp, 472
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	536                             # 0x218
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-nlktpxu9" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
