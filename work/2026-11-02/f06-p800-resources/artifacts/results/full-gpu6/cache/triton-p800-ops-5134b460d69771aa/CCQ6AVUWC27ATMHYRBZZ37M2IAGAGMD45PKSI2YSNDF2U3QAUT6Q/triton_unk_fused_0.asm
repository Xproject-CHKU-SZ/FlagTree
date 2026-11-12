	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-vplvxszu" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -536
	addli r1, zero, 1
.Ltmp0:
	.loc	1 35 5 prologue_end             # parallel-rne.mlir:35:5
	core_id r23
	addli r30, sp, 472
	xsignal_mode_cfg r1
	beq r23, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 35 5                          # parallel-rne.mlir:35:5
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
	.loc	1 35 5                          # parallel-rne.mlir:35:5
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
	.loc	1 37 10 is_stmt 1               # parallel-rne.mlir:37:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -24(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -48(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -72(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -96(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -116(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -280(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r4, r1, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	addli r2, r2, -1
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
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
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r1, r2, r6
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	fmac.s r2, r2, r6
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	min.s r2, r2, r4
	.loc	1 57 5                          # parallel-rne.mlir:57:5
	ble.s r2, r1, .LBB0_717
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 46 11 is_stmt 1               # parallel-rne.mlir:46:11
	sext_int2long r[11:12], r1
	lui r1, 31
	lui r4, 216
	addli r13, zero, 128
	addli r14, zero, 5
	addli r9, zero, 4
	addli r19, zero, 1
	lui r7, 1024
	lui r8, 522240
	lui r15, 1048560
	addli r16, zero, 0
	storeli.w zero, -296(r30)               # 4-byte Folded Spill
	storeli.w zero, -292(r30)               # 4-byte Folded Spill
	store.d r[2:3], -448(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -456(r30)               # 8-byte Folded Spill
	lui r2, 522239
	lui r1, 1023
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
	.loc	1 862 7                         # parallel-rne.mlir:862:7
	addli r2, zero, 16
	xsignal r2, 0
	.loc	1 863 7                         # parallel-rne.mlir:863:7
	addli r2, zero, 24
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[11:12], -400(r30)              # 8-byte Folded Reload
	.loc	1 57 5 is_stmt 1                # parallel-rne.mlir:57:5
	load.d r[4:5], -448(r30)                # 8-byte Folded Reload
	loadli.w r16,  -404(r30)                # 4-byte Folded Reload
	addli r14, zero, 5
	addli.d r[11:12], r[11:12], 1
	setlt.sl r2, r[11:12], r[4:5]
	beq r2, zero, .LBB0_717
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
                                        #     Child Loop BB0_455 Depth 2
                                        #     Child Loop BB0_255 Depth 2
                                        #       Child Loop BB0_257 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_281 Depth 3
                                        #     Child Loop BB0_303 Depth 2
                                        #       Child Loop BB0_305 Depth 3
                                        #     Child Loop BB0_327 Depth 2
                                        #       Child Loop BB0_329 Depth 3
                                        #     Child Loop BB0_351 Depth 2
                                        #       Child Loop BB0_353 Depth 3
                                        #     Child Loop BB0_375 Depth 2
                                        #       Child Loop BB0_377 Depth 3
                                        #     Child Loop BB0_399 Depth 2
                                        #       Child Loop BB0_401 Depth 3
                                        #     Child Loop BB0_423 Depth 2
                                        #       Child Loop BB0_425 Depth 3
                                        #     Child Loop BB0_449 Depth 2
                                        #     Child Loop BB0_451 Depth 2
                                        #     Child Loop BB0_468 Depth 2
                                        #       Child Loop BB0_477 Depth 3
                                        #       Child Loop BB0_471 Depth 3
                                        #     Child Loop BB0_499 Depth 2
                                        #       Child Loop BB0_508 Depth 3
                                        #       Child Loop BB0_502 Depth 3
                                        #     Child Loop BB0_530 Depth 2
                                        #       Child Loop BB0_539 Depth 3
                                        #       Child Loop BB0_533 Depth 3
                                        #     Child Loop BB0_561 Depth 2
                                        #       Child Loop BB0_570 Depth 3
                                        #       Child Loop BB0_564 Depth 3
                                        #     Child Loop BB0_592 Depth 2
                                        #       Child Loop BB0_601 Depth 3
                                        #       Child Loop BB0_595 Depth 3
                                        #     Child Loop BB0_623 Depth 2
                                        #       Child Loop BB0_632 Depth 3
                                        #       Child Loop BB0_626 Depth 3
                                        #     Child Loop BB0_654 Depth 2
                                        #       Child Loop BB0_663 Depth 3
                                        #       Child Loop BB0_657 Depth 3
                                        #     Child Loop BB0_685 Depth 2
                                        #       Child Loop BB0_694 Depth 3
                                        #       Child Loop BB0_688 Depth 3
	.loc	1 82 7                          # parallel-rne.mlir:82:7
	bneq r23, r9, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 17
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  48(r30)
	loadli.w r5,  44(r30)
	addli r9, zero, 16
	store.d r[11:12], -400(r30)             # 8-byte Folded Spill
	addli r2, zero, 0
	addli r10, zero, 0
	addli r26, zero, 128
	addli r23, zero, 6
	div.s r4, r11, r4
	addli r11, zero, 8
	div.s r4, r4, r5
	div.s r5, r4, r13
	slli r6, r5, 3
	slli r5, r5, 7
	sub.s r9, r9, r6
	min.s r9, r9, r11
	mod.s r11, r4, r9
	sub.s r4, r4, r5
	mod.s r5, r16, r14
	addli r16, r16, 1
	div.s r4, r4, r9
	storeli.w r16, -404(r30)                # 4-byte Folded Spill
	addli r9, zero, 4
	add.s r6, r6, r11
	slli r16, r5, 16
	zext_int2long r[11:12], r4
	slli r4, r4, 7
	zext_int2long r[13:14], r6
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	slli r4, r6, 7
	addli r6, zero, 18
	store.d r[13:14], -432(r30)             # 8-byte Folded Spill
	storeli.w r4, -436(r30)                 # 4-byte Folded Spill
	addli r4, zero, 7
	sll.d r[17:18], r[13:14], r6
	sll.d r[4:5], r[11:12], r4
	.loc	1 83 7 is_stmt 1                # parallel-rne.mlir:83:7
	sll.d r[11:12], r[4:5], r19
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	store.d r[11:12], -416(r30)             # 8-byte Folded Spill
	and.d r[19:20], r[17:18], r[4:5]
	load.d r[4:5], 8(r30)
	add.ul r[4:5], r[4:5], r[11:12]
	store.d r[4:5], -288(r30)               # 8-byte Folded Spill
	loadli.w r4,  -296(r30)                 # 4-byte Folded Reload
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 80
	addli r14, zero, 4
	addli r24, zero, 64
	ori r4, r4, 64
	.loc	1 106 9 is_stmt 1               # parallel-rne.mlir:106:9
	lock zero, r14
	dma_cfg r22, r22, zero, 0
	add.s r4, r9, r4
	dma_cfg zero, r12, zero, 2
	addli r9, zero, 5
	dma_cfg r4, r11, r24, 3
	addli r11, zero, 2
	addli r4, zero, 4096
	addli r12, zero, 256
	dma_cfg r13, r24, r11, 4
	dma_cfg r12, r4, r6, 5
	addli r4, zero, 7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r23, 10
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
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r24, 3
	dma_cfg r13, zero, r11, 4
	dma_cfg r12, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	addli r9, zero, 4
	xsignal r11, 0
.LBB0_12:                               # %.thread54
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r4,  -280(r30)
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	loadli.w r5,  -116(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r4, r4, 1
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	addli r5, r5, 1
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	storeli.w r4, -280(r30)
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	storeli.w r5, -116(r30)
.LBB0_13:                               # %.thread57
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 83 7                          # parallel-rne.mlir:83:7
	addli r10, r10, 1
	addli r4, zero, 32
	beq r10, r4, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -296(r30)                 # 4-byte Folded Reload
	addli r26, zero, 128
	.loc	1 127 15 is_stmt 1              # parallel-rne.mlir:127:15
	addli r2, r2, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	zext_int2long r[11:12], r10
	addli.d r[24:25], r[19:20], 0
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	sll.d r[5:6], r[11:12], r23
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	add.ul r[13:14], r[5:6], r[17:18]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	zext_int2long r[5:6], r5
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	setlt.ul r5, r[5:6], r[13:14]
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	bneq r5, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[24:25], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 102 15 is_stmt 1              # parallel-rne.mlir:102:15
	mod.s r5, r4, r9
	loadli.w r9,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	addli r6, zero, 24
	addli r21, zero, 1920
	addli r27, zero, 4
	zext_int2long r[21:22], r21
	mod.s r6, r9, r6
	addli r9, r9, 1
	store.d r[21:22], -352(r30)             # 8-byte Folded Spill
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	addli r21, r4, 1
	.loc	1 106 9                         # parallel-rne.mlir:106:9
	addli r22, zero, 2
	storeli.w r9, -292(r30)                 # 4-byte Folded Spill
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	slli r9, r5, 15
	lui r5, 80
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	storeli.w r21, -296(r30)                # 4-byte Folded Spill
	core_id r21
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	add.s r5, r9, r5
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	slli r6, r6, 15
	.loc	1 106 9                         # parallel-rne.mlir:106:9
	beq r21, r22, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 1
	.loc	1 106 9                         # parallel-rne.mlir:106:9
	bneq r21, r22, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 2048
	sub.sl r[11:12], r[13:14], r[24:25]
	.loc	1 106 9                         # parallel-rne.mlir:106:9
	sll.d r[13:14], r[13:14], r22
	zext_int2long r[24:25], r6
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[24:25]
	load.d r[24:25], -352(r30)              # 8-byte Folded Reload
	min.sl r[24:25], r[11:12], r[24:25]
	sub.sl r[24:25], r[24:25], r[11:12]
	.loc	1 106 9                         # parallel-rne.mlir:106:9
	load.d r[11:12], 0(r30)
	addli r6, r24, 128
	addli r25, zero, 3
	add.ul r[11:12], r[11:12], r[13:14]
	addli r13, zero, 128
	xwait r25, 0
	blt.s r25, r4, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, zero, 5
	addli r24, zero, 2
	.loc	1 106 9                         # parallel-rne.mlir:106:9
	addli r4, zero, 7
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r23, 10
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
	addli r4, zero, 64
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r4, 3
	addli r4, zero, 256
	dma_cfg r13, zero, r24, 4
	dma_cfg r4, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2
	.loc	1 107 9 is_stmt 1               # parallel-rne.mlir:107:9
	addli r4, zero, 5
	addli r13, zero, 128
	xwait r9, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 64
	ds_cfg r9, zero, 0
	addli r9, zero, 4
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r13, zero, 13
	shuffle_batch r6, r5, r4, 1
	addli r4, zero, 3
	unlock zero
	xsignal r4, 0
	xsignal r9, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	loadli.w r13,  -116(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r4,  -280(r30)
	addli r5, zero, 40
	mod.s r5, r4, r5
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	mod.s r14, r13, r27
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r4, r4, 1
	storeli.w r4, -280(r30)
	slli r9, r5, 15
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	slli r4, r14, 15
	lui r5, 112
	addli r14, r13, 1
	storeli.w r14, -116(r30)
	add.s r5, r4, r5
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	addli r14, zero, 7
	beq r21, r14, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r21, r23, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 18
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	load.d r[24:25], -288(r30)              # 8-byte Folded Reload
	addli r9, zero, 7
	addli r27, zero, 3
	sll.d r[11:12], r[11:12], r6
	xwait r9, 0
	add.ul r[11:12], r[24:25], r[11:12]
	addli r24, zero, 18
	blt.s r27, r13, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r22, zero, 1
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	addli r6, zero, 2
	addli r14, zero, 4
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r24, 10
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
	addli r6, zero, 64
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r6, 3
	dma_cfg r26, zero, r14, 4
	addli r14, zero, 512
	dma_cfg r14, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r6, 112
	addli r14, zero, 4
	addli r22, zero, 1
	addli r25, zero, 64
	addli r13, zero, 128
	ori r6, r6, 64
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	lock zero, r14
	dma_cfg r22, r22, zero, 0
	add.s r4, r4, r6
	dma_cfg zero, r12, zero, 2
	addli r6, zero, 5
	dma_cfg r4, r11, r25, 3
	addli r11, zero, 512
	addli r4, zero, 4096
	dma_cfg r13, r25, r14, 4
	dma_cfg r11, r4, r25, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 4
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
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r25, 3
	dma_cfg r13, zero, r9, 4
	dma_cfg r11, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r23, 0
	.loc	1 124 9 is_stmt 1               # parallel-rne.mlir:124:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 9
	xwait r23, 0
	addli r13, zero, 128
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r13, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r9, r5, r4, 2
	addli r4, zero, 7
	addli r9, zero, 4
	unlock zero
	xsignal r4, 0
	addli r4, zero, 8
	xsignal r4, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 4
	.loc	1 126 9 is_stmt 1               # parallel-rne.mlir:126:9
	bneq r21, r4, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r4, 0
	addli r4, zero, 8
	addli r13, zero, 128
	addli r5, zero, 1
	addli r11, zero, 0
	addli r14, zero, 4
	addli r21, zero, 64
	xwait r4, 0
	addli r4, zero, 1
	beq r2, zero, .LBB0_31
.LBB0_30:                               # %.preheader86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r11, 14
	slli r11, r11, 8
	lock zero, r4
	mm_cfg r21, r21, r13, 0
	or r12, r12, r9
	or r11, r11, r16
	mm_cfg r14, r14, r4, 2
	mm_acc r11, r6, r12, 8
	andi r12, r5, 1
	addli r11, zero, 1
	addli r5, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r11, 14
	slli r11, r11, 8
	lock zero, r4
	mm_cfg r21, r21, r13, 0
	or r12, r12, r9
	or r11, r11, r16
	mm_cfg r14, r14, r4, 2
	mm r11, r6, r12, 8
	andi r12, r5, 1
	addli r11, zero, 1
	addli r5, zero, 0
	unlock r4
	bneq r12, zero, .LBB0_31
.LBB0_32:                               # %.thread57.thread123
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 5
	.loc	1 83 7                          # parallel-rne.mlir:83:7
	addli r10, r10, 1
	addli r9, zero, 4
	.loc	1 126 9                         # parallel-rne.mlir:126:9
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	.loc	1 83 7                          # parallel-rne.mlir:83:7
	addli r4, zero, 32
	bneq r10, r4, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread57.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r10, r10, 1
	addli r13, zero, 128
	addli r9, zero, 4
	addli r4, zero, 32
	bneq r10, r4, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r21, r9, .LBB0_36
.LBB0_35:                               # %.thread125
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_36:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r4,  -96(r30)
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	loadli.w r2,  -72(r30)
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r23
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	addli r4, r4, 1
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	addli r5, r2, 1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	storeli.w r4, -96(r30)
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	addli r4, zero, 3
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	storeli.w r5, -72(r30)
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	bneq r23, r4, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	xwait r4, 0
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r4, zero, 20
	xwait r4, 0
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	.loc	1 154 7 is_stmt 1               # parallel-rne.mlir:154:7
	addli r5, zero, 255
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	xfence
	zext_int2long r[10:11], r13
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r4
	lui r4, 144
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	csr_set csr5, r5
	ori r4, r4, 2560
	slli r2, r2, 16
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r2, r4
	addli r4, zero, 15
	zext_int2long r[4:5], r4
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	store.d r[4:5], -360(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	sync_core
	.loc	1 155 7 is_stmt 1               # parallel-rne.mlir:155:7
	bneq r23, zero, .LBB0_63
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	xfence
	mfence { lm, sm, gm }
	store.d r[4:5], -304(r30)               # 8-byte Folded Spill
	addli.d r[5:6], r[4:5], 0
	j .LBB0_41
.LBB0_40:                               # %middle.block348
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 162 9 is_stmt 1               # parallel-rne.mlir:162:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_62
.LBB0_41:                               # %.preheader84
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	load.d r[22:23], -304(r30)              # 8-byte Folded Reload
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[5:6], r4
	j .LBB0_43
.LBB0_42:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 163 11 is_stmt 1              # parallel-rne.mlir:163:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 178 13                        # parallel-rne.mlir:178:13
	add.s r6, r2, r9
	.loc	1 163 11                        # parallel-rne.mlir:163:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 178 13                        # parallel-rne.mlir:178:13
	stores.w r13, 12(r6)
	stores.w r25, 8(r6)
	stores.w r14, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 163 11                        # parallel-rne.mlir:163:11
	beq r4, zero, .LBB0_40
.LBB0_43:                               # %vector.body344
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	add.ul r[4:5], r[22:23], r[19:20]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r12, 0(r5)
	loads.w r4, 4(r5)
	loads.w r26, 8(r5)
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	and r21, r24, r28
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	setlt.u r5, r8, r21
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_45
# %bb.44:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=3
	or r13, r24, r7
.LBB0_46:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	and r27, r26, r28
	setlt.u r5, r8, r27
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_48
# %bb.47:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r26, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=3
	or r25, r26, r7
.LBB0_49:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	and r6, r4, r28
	setlt.u r5, r8, r6
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_51
# %bb.50:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_43 Depth=3
	or r14, r4, r7
.LBB0_52:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	and r17, r12, r28
	setlt.u r5, r8, r17
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	bneq r5, zero, .LBB0_54
# %bb.53:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	.loc	1 175 19 is_stmt 1              # parallel-rne.mlir:175:19
	setlt.u r17, r3, r17
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	beq r17, zero, .LBB0_55
	j .LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r12, r7
	.loc	1 175 19 is_stmt 1              # parallel-rne.mlir:175:19
	setlt.u r17, r3, r17
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r17, zero, .LBB0_56
.LBB0_55:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_56:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r6, r3, r6
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	beq r6, zero, .LBB0_59
# %bb.57:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r27
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	beq r4, zero, .LBB0_60
.LBB0_58:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r4, zero, .LBB0_42
	j .LBB0_61
.LBB0_59:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r27
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r4, zero, .LBB0_58
.LBB0_60:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r26, 16
	andi r4, r4, 1
	add.s r4, r26, r4
	add.s r4, r4, r1
	and r25, r4, r15
	setlt.u r4, r3, r21
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r4, zero, .LBB0_42
.LBB0_61:                               # %vector.body344
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_42
.LBB0_62:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	addli r4, zero, 1
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	mfence { sm }
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 31
	zext_int2long r[5:6], r5
	.loc	1 183 7 is_stmt 1               # parallel-rne.mlir:183:7
	store.d r[5:6], -344(r30)               # 8-byte Folded Spill
	bneq r23, r4, .LBB0_88
# %bb.64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 183 7                         # parallel-rne.mlir:183:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_66
.LBB0_65:                               # %middle.block339
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 190 9 is_stmt 1               # parallel-rne.mlir:190:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_87
.LBB0_66:                               # %.preheader83
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[22:23], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_68
.LBB0_67:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 191 11 is_stmt 1              # parallel-rne.mlir:191:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 206 13                        # parallel-rne.mlir:206:13
	add.s r5, r2, r9
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 206 13                        # parallel-rne.mlir:206:13
	stores.w r13, 12(r5)
	stores.w r20, 8(r5)
	stores.w r14, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	beq r4, zero, .LBB0_65
.LBB0_68:                               # %vector.body335
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.ul r[4:5], r[22:23], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r19, r24, r28
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	setlt.u r5, r8, r19
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_70
# %bb.69:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r13, r24, r7
.LBB0_71:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_73
# %bb.72:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r20, r21, r7
.LBB0_74:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	and r27, r4, r28
	setlt.u r5, r8, r27
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r5, zero, .LBB0_76
# %bb.75:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r14, r4, r7
.LBB0_77:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	and r5, r26, r28
	setlt.u r6, r8, r5
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	bneq r6, zero, .LBB0_79
# %bb.78:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 203 19 is_stmt 1              # parallel-rne.mlir:203:19
	setlt.u r5, r3, r5
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	beq r5, zero, .LBB0_80
	j .LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r7
	.loc	1 203 19 is_stmt 1              # parallel-rne.mlir:203:19
	setlt.u r5, r3, r5
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r5, zero, .LBB0_81
.LBB0_80:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r15
.LBB0_81:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r5, r3, r27
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	beq r5, zero, .LBB0_84
# %bb.82:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	beq r4, zero, .LBB0_85
.LBB0_83:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r4, zero, .LBB0_67
	j .LBB0_86
.LBB0_84:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r4, zero, .LBB0_83
.LBB0_85:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r4, zero, .LBB0_67
.LBB0_86:                               # %vector.body335
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	.loc	1 183 7                         # parallel-rne.mlir:183:7
	mfence { sm }
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 47
	zext_int2long r[4:5], r4
	.loc	1 211 7 is_stmt 1               # parallel-rne.mlir:211:7
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	addli r4, zero, 2
	bneq r23, r4, .LBB0_113
# %bb.89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 32
	.loc	1 211 7                         # parallel-rne.mlir:211:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_91
.LBB0_90:                               # %middle.block330
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 218 9 is_stmt 1               # parallel-rne.mlir:218:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_112
.LBB0_91:                               # %.preheader82
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[22:23], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_93
.LBB0_92:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 219 11 is_stmt 1              # parallel-rne.mlir:219:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	add.s r5, r2, r9
	.loc	1 219 11                        # parallel-rne.mlir:219:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	stores.w r13, 12(r5)
	stores.w r20, 8(r5)
	stores.w r14, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 219 11                        # parallel-rne.mlir:219:11
	beq r4, zero, .LBB0_90
.LBB0_93:                               # %vector.body326
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	add.ul r[4:5], r[22:23], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	and r19, r24, r28
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	setlt.u r5, r8, r19
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_95
# %bb.94:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r13, r24, r7
.LBB0_96:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_98
# %bb.97:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r20, r21, r7
.LBB0_99:                               # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	and r27, r4, r28
	setlt.u r5, r8, r27
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r5, zero, .LBB0_101
# %bb.100:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r14, r4, r7
.LBB0_102:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	and r5, r26, r28
	setlt.u r6, r8, r5
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r6, zero, .LBB0_104
# %bb.103:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 231 19 is_stmt 1              # parallel-rne.mlir:231:19
	setlt.u r5, r3, r5
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	beq r5, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r7
	.loc	1 231 19 is_stmt 1              # parallel-rne.mlir:231:19
	setlt.u r5, r3, r5
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r5, zero, .LBB0_106
.LBB0_105:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r15
.LBB0_106:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r5, r3, r27
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	beq r5, zero, .LBB0_109
# %bb.107:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	beq r4, zero, .LBB0_110
.LBB0_108:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r4, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r4, zero, .LBB0_108
.LBB0_110:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r4, zero, .LBB0_92
.LBB0_111:                              # %vector.body326
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_92
.LBB0_112:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	.loc	1 211 7                         # parallel-rne.mlir:211:7
	mfence { sm }
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 63
	zext_int2long r[4:5], r4
	.loc	1 239 7 is_stmt 1               # parallel-rne.mlir:239:7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	addli r4, zero, 3
	bneq r23, r4, .LBB0_138
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 48
	.loc	1 239 7                         # parallel-rne.mlir:239:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_116
.LBB0_115:                              # %middle.block321
                                        #   in Loop: Header=BB0_116 Depth=2
	.loc	1 246 9 is_stmt 1               # parallel-rne.mlir:246:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_137
.LBB0_116:                              # %.preheader81
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[22:23], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_118
.LBB0_117:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 247 11 is_stmt 1              # parallel-rne.mlir:247:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 262 13                        # parallel-rne.mlir:262:13
	add.s r5, r2, r9
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 262 13                        # parallel-rne.mlir:262:13
	stores.w r13, 12(r5)
	stores.w r20, 8(r5)
	stores.w r14, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	beq r4, zero, .LBB0_115
.LBB0_118:                              # %vector.body317
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	add.ul r[4:5], r[22:23], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	and r19, r24, r28
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	setlt.u r5, r8, r19
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_120
# %bb.119:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	or r13, r24, r7
.LBB0_121:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_123
# %bb.122:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	or r20, r21, r7
.LBB0_124:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	and r27, r4, r28
	setlt.u r5, r8, r27
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r5, zero, .LBB0_126
# %bb.125:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	or r14, r4, r7
.LBB0_127:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	and r5, r26, r28
	setlt.u r6, r8, r5
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	bneq r6, zero, .LBB0_129
# %bb.128:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 259 19 is_stmt 1              # parallel-rne.mlir:259:19
	setlt.u r5, r3, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	beq r5, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r7
	.loc	1 259 19 is_stmt 1              # parallel-rne.mlir:259:19
	setlt.u r5, r3, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r5, zero, .LBB0_131
.LBB0_130:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r15
.LBB0_131:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r5, r3, r27
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	beq r5, zero, .LBB0_134
# %bb.132:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	beq r4, zero, .LBB0_135
.LBB0_133:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r4, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r4, zero, .LBB0_133
.LBB0_135:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r4, zero, .LBB0_117
.LBB0_136:                              # %vector.body317
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_117
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	.loc	1 239 7                         # parallel-rne.mlir:239:7
	mfence { sm }
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 79
	zext_int2long r[4:5], r4
	.loc	1 267 7 is_stmt 1               # parallel-rne.mlir:267:7
	store.d r[4:5], -320(r30)               # 8-byte Folded Spill
	bneq r23, r9, .LBB0_163
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 64
	.loc	1 267 7                         # parallel-rne.mlir:267:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_141
.LBB0_140:                              # %middle.block312
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 274 9 is_stmt 1               # parallel-rne.mlir:274:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_162
.LBB0_141:                              # %.preheader80
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[22:23], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_143
.LBB0_142:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	add.s r5, r2, r9
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r13, 12(r5)
	stores.w r20, 8(r5)
	stores.w r14, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	beq r4, zero, .LBB0_140
.LBB0_143:                              # %vector.body308
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[4:5], r[22:23], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r19, r24, r28
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r5, r8, r19
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_145
# %bb.144:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	or r13, r24, r7
.LBB0_146:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_148
# %bb.147:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_143 Depth=3
	or r20, r21, r7
.LBB0_149:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	and r27, r4, r28
	setlt.u r5, r8, r27
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r5, zero, .LBB0_151
# %bb.150:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=3
	or r14, r4, r7
.LBB0_152:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	and r5, r26, r28
	setlt.u r6, r8, r5
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r6, zero, .LBB0_154
# %bb.153:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r5, r3, r5
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r5, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r7
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r5, r3, r5
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r5, zero, .LBB0_156
.LBB0_155:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r15
.LBB0_156:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	setlt.u r5, r3, r27
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r5, zero, .LBB0_159
# %bb.157:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r4, zero, .LBB0_160
.LBB0_158:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r4, zero, .LBB0_142
	j .LBB0_161
.LBB0_159:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r4, zero, .LBB0_158
.LBB0_160:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r4, zero, .LBB0_142
.LBB0_161:                              # %vector.body308
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_142
.LBB0_162:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	.loc	1 267 7                         # parallel-rne.mlir:267:7
	mfence { sm }
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 95
	zext_int2long r[4:5], r4
	.loc	1 295 7 is_stmt 1               # parallel-rne.mlir:295:7
	store.d r[4:5], -312(r30)               # 8-byte Folded Spill
	addli r4, zero, 5
	bneq r23, r4, .LBB0_188
# %bb.164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 80
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_166
.LBB0_165:                              # %middle.block303
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 302 9 is_stmt 1               # parallel-rne.mlir:302:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_187
.LBB0_166:                              # %.preheader79
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[22:23], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_168
.LBB0_167:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 303 11 is_stmt 1              # parallel-rne.mlir:303:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r5, r2, r9
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r13, 12(r5)
	stores.w r20, 8(r5)
	stores.w r14, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 303 11                        # parallel-rne.mlir:303:11
	beq r4, zero, .LBB0_165
.LBB0_168:                              # %vector.body299
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	add.ul r[4:5], r[22:23], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r19, r24, r28
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	setlt.u r5, r8, r19
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_170
# %bb.169:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	or r13, r24, r7
.LBB0_171:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_173
# %bb.172:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	or r20, r21, r7
.LBB0_174:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	and r27, r4, r28
	setlt.u r5, r8, r27
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r5, zero, .LBB0_176
# %bb.175:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	or r14, r4, r7
.LBB0_177:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	and r5, r26, r28
	setlt.u r6, r8, r5
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	bneq r6, zero, .LBB0_179
# %bb.178:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r5, r3, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r5, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r7
	.loc	1 315 19 is_stmt 1              # parallel-rne.mlir:315:19
	setlt.u r5, r3, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r5, zero, .LBB0_181
.LBB0_180:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r15
.LBB0_181:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r5, r3, r27
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r5, zero, .LBB0_184
# %bb.182:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r4, zero, .LBB0_185
.LBB0_183:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r4, zero, .LBB0_167
	j .LBB0_186
.LBB0_184:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r4, zero, .LBB0_183
.LBB0_185:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r4, zero, .LBB0_167
.LBB0_186:                              # %vector.body299
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_167
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	mfence { sm }
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 111
	zext_int2long r[4:5], r4
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	store.d r[4:5], -304(r30)               # 8-byte Folded Spill
	addli r4, zero, 6
	bneq r23, r4, .LBB0_213
# %bb.189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 96
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_191
.LBB0_190:                              # %middle.block294
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 330 9 is_stmt 1               # parallel-rne.mlir:330:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_212
.LBB0_191:                              # %.preheader78
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[22:23], zero
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_193
.LBB0_192:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	add.s r5, r2, r9
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	setneq.d r4, r[22:23], r[10:11]
	.loc	1 346 13                        # parallel-rne.mlir:346:13
	stores.w r13, 12(r5)
	stores.w r20, 8(r5)
	stores.w r14, 4(r5)
	stores.w r12, 0(r5)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	beq r4, zero, .LBB0_190
.LBB0_193:                              # %vector.body290
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[4:5], r[22:23], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r26, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r19, r24, r28
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	setlt.u r5, r8, r19
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_195
# %bb.194:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r13, r24, r7
.LBB0_196:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_198
# %bb.197:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r20, r21, r7
.LBB0_199:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	and r27, r4, r28
	setlt.u r5, r8, r27
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r5, zero, .LBB0_201
# %bb.200:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r14, r4, r7
.LBB0_202:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	and r5, r26, r28
	setlt.u r6, r8, r5
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	bneq r6, zero, .LBB0_204
# %bb.203:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r26, 0
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r5, r3, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r5, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r26, r7
	.loc	1 343 19 is_stmt 1              # parallel-rne.mlir:343:19
	setlt.u r5, r3, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r5, zero, .LBB0_206
.LBB0_205:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r26, 16
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r1
	and r12, r5, r15
.LBB0_206:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r5, r3, r27
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r5, zero, .LBB0_209
# %bb.207:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	beq r4, zero, .LBB0_210
.LBB0_208:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r4, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r4, zero, .LBB0_208
.LBB0_210:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r4, zero, .LBB0_192
.LBB0_211:                              # %vector.body290
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r23
	addli r9, zero, 4
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	mfence { sm }
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 127
	zext_int2long r[4:5], r4
	.loc	1 351 7 is_stmt 1               # parallel-rne.mlir:351:7
	store.d r[4:5], -288(r30)               # 8-byte Folded Spill
	addli r4, zero, 7
	bneq r23, r4, .LBB0_238
# %bb.214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 112
	.loc	1 351 7                         # parallel-rne.mlir:351:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_216
.LBB0_215:                              # %middle.block285
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 358 9 is_stmt 1               # parallel-rne.mlir:358:9
	load.d r[4:5], -288(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_237
.LBB0_216:                              # %.preheader77
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_218 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_218
.LBB0_217:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 359 11 is_stmt 1              # parallel-rne.mlir:359:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	add.s r6, r2, r9
	.loc	1 359 11                        # parallel-rne.mlir:359:11
	setneq.d r4, r[26:27], r[10:11]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	stores.w r13, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 359 11                        # parallel-rne.mlir:359:11
	beq r4, zero, .LBB0_215
.LBB0_218:                              # %vector.body281
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r5, r16, r9
	loads.w r24, 12(r5)
	loads.w r12, 0(r5)
	loads.w r4, 4(r5)
	loads.w r21, 8(r5)
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	and r19, r24, r28
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	setlt.u r5, r8, r19
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	bneq r5, zero, .LBB0_220
# %bb.219:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_218 Depth=3
	or r13, r24, r7
.LBB0_221:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	and r25, r21, r28
	setlt.u r5, r8, r25
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	bneq r5, zero, .LBB0_223
# %bb.222:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_218 Depth=3
	or r20, r21, r7
.LBB0_224:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	and r6, r4, r28
	setlt.u r5, r8, r6
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	bneq r5, zero, .LBB0_226
# %bb.225:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r4, 0
	j .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_218 Depth=3
	or r14, r4, r7
.LBB0_227:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	and r22, r12, r28
	setlt.u r5, r8, r22
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	bneq r5, zero, .LBB0_229
# %bb.228:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	.loc	1 371 19 is_stmt 1              # parallel-rne.mlir:371:19
	setlt.u r22, r3, r22
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	beq r22, zero, .LBB0_230
	j .LBB0_231
.LBB0_229:                              #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r12, r7
	.loc	1 371 19 is_stmt 1              # parallel-rne.mlir:371:19
	setlt.u r22, r3, r22
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	bneq r22, zero, .LBB0_231
.LBB0_230:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_231:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r6, r3, r6
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	beq r6, zero, .LBB0_234
# %bb.232:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	beq r4, zero, .LBB0_235
.LBB0_233:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	bneq r4, zero, .LBB0_217
	j .LBB0_236
.LBB0_234:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r25
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	bneq r4, zero, .LBB0_233
.LBB0_235:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r20, r4, r15
	setlt.u r4, r3, r19
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	bneq r4, zero, .LBB0_217
.LBB0_236:                              # %vector.body281
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r24, 16
	andi r4, r4, 1
	add.s r4, r24, r4
	add.s r4, r4, r1
	and r13, r4, r15
	j .LBB0_217
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	addli r9, zero, 4
	.loc	1 351 7 is_stmt 1               # parallel-rne.mlir:351:7
	mfence { sm }
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -384(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -352(r30)              # 8-byte Folded Reload
	zext_int2long r[4:5], r4
	min.ul r[12:13], r[4:5], r[12:13]
	addli.d r[12:13], r[12:13], 128
	max.ul r[12:13], r[12:13], r[4:5]
	sub.sl r[4:5], r[12:13], r[4:5]
	min.ul r[4:5], r[4:5], r[10:11]
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	store.d r[4:5], -424(r30)               # 8-byte Folded Spill
	addli r4, zero, 255
	csr_set csr5, r4
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r4, zero, 3
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	sync_core
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	bneq r23, r4, .LBB0_241
# %bb.239:                              # %.thread59.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 11
	addli r4, zero, 18
	addli r13, zero, 128
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	xsignal r5, 0
	.loc	1 381 7 is_stmt 1               # parallel-rne.mlir:381:7
	xsignal r4, 0
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r4, zero, 19
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	xwait r5, 0
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	xwait r4, 0
.LBB0_240:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 1
	j .LBB0_245
.LBB0_241:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r13,  -388(r30)                # 4-byte Folded Reload
	addli r6, zero, 5
	lui r5, 144
	.loc	1 383 7 is_stmt 1               # parallel-rne.mlir:383:7
	addli r12, zero, 1
	addli r18, zero, 22
	mod.s r4, r13, r6
	slli r4, r4, 9
	add.s r5, r4, r5
	bneq r23, r12, .LBB0_453
# %bb.242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, r13, 0
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	load.d r[19:20], -416(r30)              # 8-byte Folded Reload
	load.d r[12:13], 16(r30)
	xwait r18, 0
	add.ul r[12:13], r[12:13], r[19:20]
	blt.s r9, r6, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r9, zero, 5
	addli r17, zero, 1
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	addli r6, zero, 2
	addli r14, zero, 4
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 3
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 7
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
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
	addli r6, zero, 23
	dma_cfg zero, zero, r18, 10
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
	addli r6, zero, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r6, 3
	addli r6, zero, 128
	dma_cfg r6, zero, r14, 4
	addli r6, zero, 512
	dma_cfg r6, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	addli r9, zero, 4
.LBB0_244:                              # %.thread59.thread61
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r17, zero, 1
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	lock zero, r9
	lui r6, 144
	addli r18, zero, 64
	addli r14, zero, 2
	addli r21, zero, 21
	dma_cfg r17, r17, zero, 0
	ori r6, r6, 64
	dma_cfg zero, r13, zero, 2
	load.d r[19:20], -424(r30)              # 8-byte Folded Reload
	add.s r4, r4, r6
	dma_cfg r4, r12, r18, 3
	addli r13, zero, 128
	addli r12, zero, 256
	addli r6, r19, 31
	srli r4, r6, 5
	slli r6, r19, 1
	addli r19, zero, 512
	addli r20, zero, 22
	dma_cfg r13, r18, r4, 4
	andi r6, r6, 62
	dma_cfg r19, r12, r17, 5
	addli r12, zero, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 3
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r12, 10
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
	addli r9, zero, 4
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 18
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 20
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 23
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r20, 10
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r18, 3
	addli r5, zero, 1
	dma_cfg r13, zero, r4, 4
	dma_cfg r19, zero, r5, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r21, 0
.LBB0_245:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 389 7 is_stmt 1               # parallel-rne.mlir:389:7
	xfence
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	addli r4, zero, 255
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	mfence { lm, sm, gm }
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	csr_set csr5, r4
	sync_core
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	beq r23, zero, .LBB0_253
# %bb.246:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	beq r23, r5, .LBB0_277
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	addli r4, zero, 2
	beq r23, r4, .LBB0_301
.LBB0_248:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	addli r4, zero, 3
	beq r23, r4, .LBB0_325
.LBB0_249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	beq r23, r9, .LBB0_349
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	addli r4, zero, 5
	beq r23, r4, .LBB0_373
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	addli r4, zero, 6
	beq r23, r4, .LBB0_397
.LBB0_252:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	addli r4, zero, 7
	beq r23, r4, .LBB0_421
	j .LBB0_445
.LBB0_253:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 392 7 is_stmt 1               # parallel-rne.mlir:392:7
	xfence
	mfence { lm, sm, gm }
	store.d r[4:5], -384(r30)               # 8-byte Folded Spill
	addli.d r[5:6], r[4:5], 0
	j .LBB0_255
.LBB0_254:                              # %middle.block276
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 399 9                         # parallel-rne.mlir:399:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_276
.LBB0_255:                              # %.preheader76
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[26:27], r[5:6], r4
	load.d r[5:6], -384(r30)                # 8-byte Folded Reload
	j .LBB0_257
.LBB0_256:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 400 11 is_stmt 1              # parallel-rne.mlir:400:11
	addli.d r[5:6], r[5:6], 4
	.loc	1 415 13                        # parallel-rne.mlir:415:13
	add.s r9, r16, r9
	.loc	1 400 11                        # parallel-rne.mlir:400:11
	setneq.d r4, r[5:6], r[10:11]
	.loc	1 415 13                        # parallel-rne.mlir:415:13
	stores.w r21, 12(r9)
	stores.w r14, 8(r9)
	stores.w r12, 4(r9)
	stores.w r17, 0(r9)
	.loc	1 400 11                        # parallel-rne.mlir:400:11
	beq r4, zero, .LBB0_254
.LBB0_257:                              # %vector.body272
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	add.ul r[12:13], r[5:6], r[26:27]
	slli r9, r12, 2
	add.s r12, r2, r9
	loads.w r13, 12(r12)
	loads.w r24, 0(r12)
	loads.w r4, 4(r12)
	loads.w r20, 8(r12)
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	and r19, r13, r28
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	setlt.u r12, r8, r19
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r12, zero, .LBB0_259
# %bb.258:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_257 Depth=3
	or r21, r13, r7
.LBB0_260:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	and r25, r20, r28
	setlt.u r12, r8, r25
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r12, zero, .LBB0_262
# %bb.261:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_257 Depth=3
	or r14, r20, r7
.LBB0_263:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	and r18, r4, r28
	setlt.u r12, r8, r18
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r12, zero, .LBB0_265
# %bb.264:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_257 Depth=3
	or r12, r4, r7
.LBB0_266:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	and r22, r24, r28
	setlt.u r17, r8, r22
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r17, zero, .LBB0_268
# %bb.267:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r24, 0
	.loc	1 412 19 is_stmt 1              # parallel-rne.mlir:412:19
	setlt.u r22, r3, r22
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r22, zero, .LBB0_269
	j .LBB0_270
.LBB0_268:                              #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r24, r7
	.loc	1 412 19 is_stmt 1              # parallel-rne.mlir:412:19
	setlt.u r22, r3, r22
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r22, zero, .LBB0_270
.LBB0_269:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r17, r24, 16
	andi r17, r17, 1
	add.s r17, r24, r17
	add.s r17, r17, r1
	and r17, r17, r15
.LBB0_270:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	setlt.u r18, r3, r18
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r18, zero, .LBB0_273
# %bb.271:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r25
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r4, zero, .LBB0_274
.LBB0_272:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r19
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r4, zero, .LBB0_256
	j .LBB0_275
.LBB0_273:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r1
	and r12, r4, r15
	setlt.u r4, r3, r25
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r4, zero, .LBB0_272
.LBB0_274:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r1
	and r14, r4, r15
	setlt.u r4, r3, r19
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r4, zero, .LBB0_256
.LBB0_275:                              # %vector.body272
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r21, r4, r15
	j .LBB0_256
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	addli r5, zero, 1
	.loc	1 392 7 is_stmt 1               # parallel-rne.mlir:392:7
	mfence { sm }
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	bneq r23, r5, .LBB0_247
.LBB0_277:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_279
.LBB0_278:                              # %middle.block267
                                        #   in Loop: Header=BB0_279 Depth=2
	.loc	1 427 9 is_stmt 1               # parallel-rne.mlir:427:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_300
.LBB0_279:                              # %.preheader75
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_281 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_281
.LBB0_280:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 428 11 is_stmt 1              # parallel-rne.mlir:428:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	add.s r9, r16, r9
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	beq r6, zero, .LBB0_278
.LBB0_281:                              # %vector.body263
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	and r19, r13, r28
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	setlt.u r4, r8, r19
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_283
# %bb.282:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_284
.LBB0_283:                              #   in Loop: Header=BB0_281 Depth=3
	or r21, r13, r7
.LBB0_284:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_286
# %bb.285:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_281 Depth=3
	or r20, r14, r7
.LBB0_287:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_289
# %bb.288:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_281 Depth=3
	or r4, r12, r7
.LBB0_290:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r5, zero, .LBB0_292
# %bb.291:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 440 19 is_stmt 1              # parallel-rne.mlir:440:19
	setlt.u r22, r3, r22
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r22, zero, .LBB0_293
	j .LBB0_294
.LBB0_292:                              #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 440 19 is_stmt 1              # parallel-rne.mlir:440:19
	setlt.u r22, r3, r22
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r22, zero, .LBB0_294
.LBB0_293:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_294:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	setlt.u r6, r3, r6
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r6, zero, .LBB0_297
# %bb.295:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r6, zero, .LBB0_298
.LBB0_296:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r6, zero, .LBB0_280
	j .LBB0_299
.LBB0_297:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r6, zero, .LBB0_296
.LBB0_298:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r6, zero, .LBB0_280
.LBB0_299:                              # %vector.body263
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_280
.LBB0_300:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 420 7 is_stmt 1               # parallel-rne.mlir:420:7
	mfence { sm }
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	addli r4, zero, 2
	bneq r23, r4, .LBB0_248
.LBB0_301:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 32
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_303
.LBB0_302:                              # %middle.block258
                                        #   in Loop: Header=BB0_303 Depth=2
	.loc	1 455 9 is_stmt 1               # parallel-rne.mlir:455:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_324
.LBB0_303:                              # %.preheader74
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_305
.LBB0_304:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 456 11 is_stmt 1              # parallel-rne.mlir:456:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	add.s r9, r16, r9
	.loc	1 456 11                        # parallel-rne.mlir:456:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 456 11                        # parallel-rne.mlir:456:11
	beq r6, zero, .LBB0_302
.LBB0_305:                              # %vector.body254
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	and r19, r13, r28
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	setlt.u r4, r8, r19
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r4, zero, .LBB0_307
# %bb.306:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_305 Depth=3
	or r21, r13, r7
.LBB0_308:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r4, zero, .LBB0_310
# %bb.309:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_305 Depth=3
	or r20, r14, r7
.LBB0_311:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r4, zero, .LBB0_313
# %bb.312:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_305 Depth=3
	or r4, r12, r7
.LBB0_314:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r5, zero, .LBB0_316
# %bb.315:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 468 19 is_stmt 1              # parallel-rne.mlir:468:19
	setlt.u r22, r3, r22
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	beq r22, zero, .LBB0_317
	j .LBB0_318
.LBB0_316:                              #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 468 19 is_stmt 1              # parallel-rne.mlir:468:19
	setlt.u r22, r3, r22
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r22, zero, .LBB0_318
.LBB0_317:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_318:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	setlt.u r6, r3, r6
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	beq r6, zero, .LBB0_321
# %bb.319:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	beq r6, zero, .LBB0_322
.LBB0_320:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r6, zero, .LBB0_304
	j .LBB0_323
.LBB0_321:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r6, zero, .LBB0_320
.LBB0_322:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r6, zero, .LBB0_304
.LBB0_323:                              # %vector.body254
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_304
.LBB0_324:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 448 7 is_stmt 1               # parallel-rne.mlir:448:7
	mfence { sm }
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	addli r4, zero, 3
	bneq r23, r4, .LBB0_249
.LBB0_325:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 48
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_327
.LBB0_326:                              # %middle.block249
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 483 9 is_stmt 1               # parallel-rne.mlir:483:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_348
.LBB0_327:                              # %.preheader73
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_329 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_329
.LBB0_328:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 484 11 is_stmt 1              # parallel-rne.mlir:484:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	add.s r9, r16, r9
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	beq r6, zero, .LBB0_326
.LBB0_329:                              # %vector.body245
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	and r19, r13, r28
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	setlt.u r4, r8, r19
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r4, zero, .LBB0_331
# %bb.330:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_329 Depth=3
	or r21, r13, r7
.LBB0_332:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r4, zero, .LBB0_334
# %bb.333:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_329 Depth=3
	or r20, r14, r7
.LBB0_335:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r4, zero, .LBB0_337
# %bb.336:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_329 Depth=3
	or r4, r12, r7
.LBB0_338:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r5, zero, .LBB0_340
# %bb.339:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 496 19 is_stmt 1              # parallel-rne.mlir:496:19
	setlt.u r22, r3, r22
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r22, zero, .LBB0_341
	j .LBB0_342
.LBB0_340:                              #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 496 19 is_stmt 1              # parallel-rne.mlir:496:19
	setlt.u r22, r3, r22
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r22, zero, .LBB0_342
.LBB0_341:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_342:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	setlt.u r6, r3, r6
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r6, zero, .LBB0_345
# %bb.343:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r6, zero, .LBB0_346
.LBB0_344:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r6, zero, .LBB0_328
	j .LBB0_347
.LBB0_345:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r6, zero, .LBB0_344
.LBB0_346:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r6, zero, .LBB0_328
.LBB0_347:                              # %vector.body245
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_328
.LBB0_348:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 476 7 is_stmt 1               # parallel-rne.mlir:476:7
	mfence { sm }
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	bneq r23, r9, .LBB0_250
.LBB0_349:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 64
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_351
.LBB0_350:                              # %middle.block240
                                        #   in Loop: Header=BB0_351 Depth=2
	.loc	1 511 9 is_stmt 1               # parallel-rne.mlir:511:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_372
.LBB0_351:                              # %.preheader72
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_353
.LBB0_352:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 512 11 is_stmt 1              # parallel-rne.mlir:512:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	add.s r9, r16, r9
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	beq r6, zero, .LBB0_350
.LBB0_353:                              # %vector.body236
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	and r19, r13, r28
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	setlt.u r4, r8, r19
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r4, zero, .LBB0_355
# %bb.354:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_353 Depth=3
	or r21, r13, r7
.LBB0_356:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r4, zero, .LBB0_358
# %bb.357:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_353 Depth=3
	or r20, r14, r7
.LBB0_359:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r4, zero, .LBB0_361
# %bb.360:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_353 Depth=3
	or r4, r12, r7
.LBB0_362:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r5, zero, .LBB0_364
# %bb.363:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 524 19 is_stmt 1              # parallel-rne.mlir:524:19
	setlt.u r22, r3, r22
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	beq r22, zero, .LBB0_365
	j .LBB0_366
.LBB0_364:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 524 19 is_stmt 1              # parallel-rne.mlir:524:19
	setlt.u r22, r3, r22
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r22, zero, .LBB0_366
.LBB0_365:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_366:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	setlt.u r6, r3, r6
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	beq r6, zero, .LBB0_369
# %bb.367:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	beq r6, zero, .LBB0_370
.LBB0_368:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r6, zero, .LBB0_352
	j .LBB0_371
.LBB0_369:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r6, zero, .LBB0_368
.LBB0_370:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r6, zero, .LBB0_352
.LBB0_371:                              # %vector.body236
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_352
.LBB0_372:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 504 7 is_stmt 1               # parallel-rne.mlir:504:7
	mfence { sm }
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	addli r4, zero, 5
	bneq r23, r4, .LBB0_251
.LBB0_373:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 80
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_375
.LBB0_374:                              # %middle.block231
                                        #   in Loop: Header=BB0_375 Depth=2
	.loc	1 539 9 is_stmt 1               # parallel-rne.mlir:539:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_396
.LBB0_375:                              # %.preheader71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_377 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_377
.LBB0_376:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 540 11 is_stmt 1              # parallel-rne.mlir:540:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	add.s r9, r16, r9
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	beq r6, zero, .LBB0_374
.LBB0_377:                              # %vector.body227
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	and r19, r13, r28
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	setlt.u r4, r8, r19
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r4, zero, .LBB0_379
# %bb.378:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_377 Depth=3
	or r21, r13, r7
.LBB0_380:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r4, zero, .LBB0_382
# %bb.381:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_377 Depth=3
	or r20, r14, r7
.LBB0_383:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r4, zero, .LBB0_385
# %bb.384:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_377 Depth=3
	or r4, r12, r7
.LBB0_386:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r5, zero, .LBB0_388
# %bb.387:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r22, r3, r22
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r22, zero, .LBB0_389
	j .LBB0_390
.LBB0_388:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r22, r3, r22
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r22, zero, .LBB0_390
.LBB0_389:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_390:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	setlt.u r6, r3, r6
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r6, zero, .LBB0_393
# %bb.391:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r6, zero, .LBB0_394
.LBB0_392:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r6, zero, .LBB0_376
	j .LBB0_395
.LBB0_393:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r6, zero, .LBB0_392
.LBB0_394:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r6, zero, .LBB0_376
.LBB0_395:                              # %vector.body227
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_376
.LBB0_396:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 532 7 is_stmt 1               # parallel-rne.mlir:532:7
	mfence { sm }
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	addli r4, zero, 6
	bneq r23, r4, .LBB0_252
.LBB0_397:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 96
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_399
.LBB0_398:                              # %middle.block222
                                        #   in Loop: Header=BB0_399 Depth=2
	.loc	1 567 9 is_stmt 1               # parallel-rne.mlir:567:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_420
.LBB0_399:                              # %.preheader70
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_401 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_401
.LBB0_400:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 568 11 is_stmt 1              # parallel-rne.mlir:568:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r9, r16, r9
	.loc	1 568 11                        # parallel-rne.mlir:568:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 568 11                        # parallel-rne.mlir:568:11
	beq r6, zero, .LBB0_398
.LBB0_401:                              # %vector.body218
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_399 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	and r19, r13, r28
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	setlt.u r4, r8, r19
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r4, zero, .LBB0_403
# %bb.402:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_401 Depth=3
	or r21, r13, r7
.LBB0_404:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r4, zero, .LBB0_406
# %bb.405:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_401 Depth=3
	or r20, r14, r7
.LBB0_407:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r4, zero, .LBB0_409
# %bb.408:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_401 Depth=3
	or r4, r12, r7
.LBB0_410:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r5, zero, .LBB0_412
# %bb.411:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 580 19 is_stmt 1              # parallel-rne.mlir:580:19
	setlt.u r22, r3, r22
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	beq r22, zero, .LBB0_413
	j .LBB0_414
.LBB0_412:                              #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 580 19 is_stmt 1              # parallel-rne.mlir:580:19
	setlt.u r22, r3, r22
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r22, zero, .LBB0_414
.LBB0_413:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_414:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	setlt.u r6, r3, r6
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	beq r6, zero, .LBB0_417
# %bb.415:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	beq r6, zero, .LBB0_418
.LBB0_416:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r6, zero, .LBB0_400
	j .LBB0_419
.LBB0_417:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r6, zero, .LBB0_416
.LBB0_418:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r6, zero, .LBB0_400
.LBB0_419:                              # %vector.body218
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_400
.LBB0_420:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 560 7 is_stmt 1               # parallel-rne.mlir:560:7
	mfence { sm }
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	addli r4, zero, 7
	bneq r23, r4, .LBB0_445
.LBB0_421:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 112
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r4
	j .LBB0_423
.LBB0_422:                              # %middle.block213
                                        #   in Loop: Header=BB0_423 Depth=2
	.loc	1 595 9 is_stmt 1               # parallel-rne.mlir:595:9
	load.d r[4:5], -288(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_444
.LBB0_423:                              # %.preheader69
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_425 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	zext_int2long r[26:27], zero
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r4
	j .LBB0_425
.LBB0_424:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 596 11 is_stmt 1              # parallel-rne.mlir:596:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 611 13                        # parallel-rne.mlir:611:13
	add.s r9, r16, r9
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	setneq.d r6, r[26:27], r[10:11]
	.loc	1 611 13                        # parallel-rne.mlir:611:13
	stores.w r21, 12(r9)
	stores.w r20, 8(r9)
	stores.w r4, 4(r9)
	stores.w r5, 0(r9)
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	beq r6, zero, .LBB0_422
.LBB0_425:                              # %vector.body209
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_423 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	add.ul r[4:5], r[26:27], r[17:18]
	slli r9, r4, 2
	add.s r4, r2, r9
	loads.w r13, 12(r4)
	loads.w r24, 0(r4)
	loads.w r12, 4(r4)
	loads.w r14, 8(r4)
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	and r19, r13, r28
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	setlt.u r4, r8, r19
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r4, zero, .LBB0_427
# %bb.426:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_428
.LBB0_427:                              #   in Loop: Header=BB0_425 Depth=3
	or r21, r13, r7
.LBB0_428:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	and r25, r14, r28
	setlt.u r4, r8, r25
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r4, zero, .LBB0_430
# %bb.429:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_425 Depth=3
	or r20, r14, r7
.LBB0_431:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	and r6, r12, r28
	setlt.u r4, r8, r6
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r4, zero, .LBB0_433
# %bb.432:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r12, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_425 Depth=3
	or r4, r12, r7
.LBB0_434:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	and r22, r24, r28
	setlt.u r5, r8, r22
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r5, zero, .LBB0_436
# %bb.435:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r24, 0
	.loc	1 608 19 is_stmt 1              # parallel-rne.mlir:608:19
	setlt.u r22, r3, r22
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	beq r22, zero, .LBB0_437
	j .LBB0_438
.LBB0_436:                              #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r24, r7
	.loc	1 608 19 is_stmt 1              # parallel-rne.mlir:608:19
	setlt.u r22, r3, r22
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r22, zero, .LBB0_438
.LBB0_437:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r24, 16
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r1
	and r5, r5, r15
.LBB0_438:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	setlt.u r6, r3, r6
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	beq r6, zero, .LBB0_441
# %bb.439:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	beq r6, zero, .LBB0_442
.LBB0_440:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r19
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r6, zero, .LBB0_424
	j .LBB0_443
.LBB0_441:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r1
	and r4, r4, r15
	setlt.u r6, r3, r25
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r6, zero, .LBB0_440
.LBB0_442:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r1
	and r20, r6, r15
	setlt.u r6, r3, r19
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r6, zero, .LBB0_424
.LBB0_443:                              # %vector.body209
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r1
	and r21, r6, r15
	j .LBB0_424
.LBB0_444:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 588 7 is_stmt 1               # parallel-rne.mlir:588:7
	mfence { sm }
.LBB0_445:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r2, zero, 3
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	sync_core
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	bneq r23, r2, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	addli r4, zero, 5
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	xsignal r2, 0
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r2, zero, 15
	xsignal r2, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r2,  -48(r30)
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r5,  -24(r30)
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r4, 16
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	addli r4, r5, 1
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	storeli.w r4, -24(r30)
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r4, zero, 13
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	add.s r2, r2, r5
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	xwait r4, 0
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r4, zero, 23
	xwait r4, 0
	j .LBB0_458
.LBB0_447:                              # %.critedge10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r2,  -48(r30)
	addli r6, zero, 5
	mod.s r4, r2, r6
	addli r5, r2, 1
	loadli.w r2,  -460(r30)                 # 4-byte Folded Reload
	storeli.w r5, -48(r30)
	slli r4, r4, 16
	add.s r2, r4, r2
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	bneq r23, r6, .LBB0_457
# %bb.448:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	addli r12, zero, 2
	addli r14, zero, 1
	lui r17, 790528
	addli r5, zero, 0
	xwait r4, 0
	addli r4, zero, 24
	xwait r4, 0
	lock zero, r12
	addli r4, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 13
	ew_cfg r9, zero, zero, 3
	ew_cfg r9, r9, zero, 19
	ew_cfg r4, zero, zero, 10
	loadli.w r4,  -464(r30)                 # 4-byte Folded Reload
	ew_cfg r12, r14, r4, 11
	addli r4, zero, 3
	ew_cfg zero, zero, r4, 13
	lui r4, 266232
	ew_cfg r17, r9, r4, 14
	lui r4, 260096
	ew_cfg zero, r4, zero, 15
	sslut r2, r16, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r12
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r4,  -24(r30)
	mod.s r6, r4, r6
	addli r4, r4, 1
	storeli.w r4, -24(r30)
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r4, zero, 14
	xwait r4, 0
	addli r4, zero, 25
	xwait r4, 0
	lock zero, r12
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	slli r4, r6, 16
	addli r12, zero, 1
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	ew_cfg zero, zero, zero, 1
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r6,  -468(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r6
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	ew_cfg r14, zero, zero, 3
	lui r14, 16
	loadli.w r6,  -472(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r6, zero, zero, 0
.LBB0_449:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r4, r5
	add.s r9, r16, r5
	addli r5, r5, 512
	dscmpnsel r6, r9, r9, 0
	bneq r5, r14, .LBB0_449
# %bb.450:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 2
	addli r5, zero, 0
	lui r9, 16
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	unlock r6
	.loc	1 627 7 is_stmt 1               # parallel-rne.mlir:627:7
	lock zero, r6
	addli r6, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r6, zero, 2
	ew_cfg r12, zero, zero, 3
	ewcoeff_cfg r3, zero, zero, 0
.LBB0_451:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r4, r5
	addli r5, r5, 512
	dscmpnsel r6, r6, r6, 4
	bneq r5, r9, .LBB0_451
# %bb.452:                              # %.critedge14.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 628 7 is_stmt 1               # parallel-rne.mlir:628:7
	addli r6, zero, 15
	lui r12, 260096
	addli r9, zero, 4
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	unlock r5
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	xwait r6, 0
	lock zero, r5
	lui r6, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r12, r6, zero, 0
	addli r6, zero, 4095
	ew_cfg zero, r6, zero, 2
	ew_cfg r9, zero, zero, 3
	ew_cfg r9, r9, r9, 19
	dsmadd r16, r16, r4, 0
	addli r4, zero, 25
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r4, 0
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	lock zero, r5
	addli r4, zero, 13
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r12, r12, zero, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r9, zero, zero, 3
	ew_cfg r9, r9, r9, 19
	dsmadd r2, r2, r16, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r4, 0
	addli r4, zero, 23
	xsignal r4, 0
	j .LBB0_458
.LBB0_453:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 128
	.loc	1 384 7 is_stmt 1               # parallel-rne.mlir:384:7
	bneq r23, r6, .LBB0_240
# %bb.454:                              #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 18
	addli r4, zero, 0
	lui r12, 16
	xwait r6, 0
	addli r6, zero, 21
	xwait r6, 0
	addli r6, zero, 2
	lock zero, r6
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_455:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r2, r4
	addli r4, r4, 512
	dsmadd r6, r6, r5, 0
	bneq r4, r12, .LBB0_455
# %bb.456:                              # %.thread59
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 2
	unlock r4
	addli r4, zero, 19
	xsignal r4, 0
	xsignal r18, 0
	j .LBB0_240
.LBB0_457:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r4,  -24(r30)
	addli r4, r4, 1
	storeli.w r4, -24(r30)
.LBB0_458:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r5, zero, 255
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	xfence
	addli r4, zero, 1
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	mfence { lm, sm, gm }
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	csr_set csr5, r5
	sub.s r5, r16, r2
	storeli.w r5, -388(r30)                 # 4-byte Folded Spill
	addli r5, zero, 64
	sync_core
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	beq r23, zero, .LBB0_466
# %bb.459:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 665 7                         # parallel-rne.mlir:665:7
	beq r23, r4, .LBB0_497
.LBB0_460:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	addli r4, zero, 2
	beq r23, r4, .LBB0_528
.LBB0_461:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 721 7                         # parallel-rne.mlir:721:7
	addli r4, zero, 3
	beq r23, r4, .LBB0_559
.LBB0_462:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	beq r23, r9, .LBB0_590
.LBB0_463:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 777 7                         # parallel-rne.mlir:777:7
	addli r4, zero, 5
	beq r23, r4, .LBB0_621
.LBB0_464:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	addli r4, zero, 6
	beq r23, r4, .LBB0_652
.LBB0_465:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 833 7                         # parallel-rne.mlir:833:7
	addli r4, zero, 7
	beq r23, r4, .LBB0_683
	j .LBB0_714
.LBB0_466:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	zext_int2long r[5:6], zero
	.loc	1 637 7 is_stmt 1               # parallel-rne.mlir:637:7
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_468
.LBB0_467:                              # %middle.block204
                                        #   in Loop: Header=BB0_468 Depth=2
	.loc	1 644 9                         # parallel-rne.mlir:644:9
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	load.d r[12:13], -376(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_496
.LBB0_468:                              # %.preheader68
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_477 Depth 3
                                        #       Child Loop BB0_471 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 645 11 is_stmt 1              # parallel-rne.mlir:645:11
	loadli.w r4,  -384(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_475
# %bb.469:                              # %scalar.ph198.preheader
                                        #   in Loop: Header=BB0_468 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_471
.LBB0_470:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_471 Depth=3
	.loc	1 645 11                        # parallel-rne.mlir:645:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 660 13 is_stmt 1              # parallel-rne.mlir:660:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 645 11                        # parallel-rne.mlir:645:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_467
.LBB0_471:                              # %scalar.ph198
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_468 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	and r17, r14, r28
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	setlt.u r9, r8, r17
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	bneq r9, zero, .LBB0_473
# %bb.472:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 657 19 is_stmt 1              # parallel-rne.mlir:657:19
	setlt.u r17, r3, r17
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r17, zero, .LBB0_470
	j .LBB0_474
.LBB0_473:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 657 19 is_stmt 1              # parallel-rne.mlir:657:19
	setlt.u r17, r3, r17
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r17, zero, .LBB0_470
.LBB0_474:                              # %scalar.ph198
                                        #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_470
.LBB0_475:                              # %vector.body200.preheader
                                        #   in Loop: Header=BB0_468 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_477
.LBB0_476:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 645 11 is_stmt 1              # parallel-rne.mlir:645:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	add.s r13, r16, r26
	.loc	1 645 11                        # parallel-rne.mlir:645:11
	seteq.d r4, r[24:25], r[10:11]
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	stores.w r27, 12(r13)
	stores.w r19, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 645 11                        # parallel-rne.mlir:645:11
	bneq r4, zero, .LBB0_467
.LBB0_477:                              # %vector.body200
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_468 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	add.ul r[12:13], r[24:25], r[5:6]
	slli r26, r12, 2
	add.s r12, r2, r26
	loads.w r13, 12(r12)
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	and r21, r13, r28
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	setlt.u r4, r8, r21
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	bneq r4, zero, .LBB0_479
# %bb.478:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r13, 0
	j .LBB0_480
.LBB0_479:                              #   in Loop: Header=BB0_477 Depth=3
	or r27, r13, r7
.LBB0_480:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	loads.w r4, 8(r12)
	and r20, r4, r28
	setlt.u r9, r8, r20
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	bneq r9, zero, .LBB0_482
# %bb.481:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_483
.LBB0_482:                              #   in Loop: Header=BB0_477 Depth=3
	or r19, r4, r7
.LBB0_483:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	bneq r9, zero, .LBB0_485
# %bb.484:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_486
.LBB0_485:                              #   in Loop: Header=BB0_477 Depth=3
	or r9, r14, r7
.LBB0_486:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	bneq r12, zero, .LBB0_488
# %bb.487:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 657 19 is_stmt 1              # parallel-rne.mlir:657:19
	setlt.u r22, r3, r22
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	beq r22, zero, .LBB0_489
	j .LBB0_490
.LBB0_488:                              #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 657 19 is_stmt 1              # parallel-rne.mlir:657:19
	setlt.u r22, r3, r22
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r22, zero, .LBB0_490
.LBB0_489:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_490:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	setlt.u r17, r3, r17
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	beq r17, zero, .LBB0_493
# %bb.491:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r20
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	beq r14, zero, .LBB0_494
.LBB0_492:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r4, zero, .LBB0_476
	j .LBB0_495
.LBB0_493:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r20
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r14, zero, .LBB0_492
.LBB0_494:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r19, r4, r15
	setlt.u r4, r3, r21
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r4, zero, .LBB0_476
.LBB0_495:                              # %vector.body200
                                        #   in Loop: Header=BB0_477 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r27, r4, r15
	j .LBB0_476
.LBB0_496:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	addli r4, zero, 1
	addli r5, zero, 64
	.loc	1 637 7 is_stmt 1               # parallel-rne.mlir:637:7
	mfence { sm }
	.loc	1 665 7                         # parallel-rne.mlir:665:7
	bneq r23, r4, .LBB0_460
.LBB0_497:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r5, r5, r4
	storeli.w r5, -376(r30)                 # 4-byte Folded Spill
	zext_int2long r[5:6], r4
	.loc	1 665 7                         # parallel-rne.mlir:665:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_499
.LBB0_498:                              # %middle.block195
                                        #   in Loop: Header=BB0_499 Depth=2
	.loc	1 672 9 is_stmt 1               # parallel-rne.mlir:672:9
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	load.d r[12:13], -360(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_527
.LBB0_499:                              # %.preheader67
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_508 Depth 3
                                        #       Child Loop BB0_502 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -360(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 673 11 is_stmt 1              # parallel-rne.mlir:673:11
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_506
# %bb.500:                              # %scalar.ph189.preheader
                                        #   in Loop: Header=BB0_499 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_502
.LBB0_501:                              # %scalar.ph189
                                        #   in Loop: Header=BB0_502 Depth=3
	.loc	1 673 11                        # parallel-rne.mlir:673:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 688 13 is_stmt 1              # parallel-rne.mlir:688:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 673 11                        # parallel-rne.mlir:673:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_498
.LBB0_502:                              # %scalar.ph189
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_499 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	and r17, r14, r28
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	setlt.u r9, r8, r17
	.loc	1 679 19                        # parallel-rne.mlir:679:19
	bneq r9, zero, .LBB0_504
# %bb.503:                              # %scalar.ph189
                                        #   in Loop: Header=BB0_502 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 685 19 is_stmt 1              # parallel-rne.mlir:685:19
	setlt.u r17, r3, r17
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	bneq r17, zero, .LBB0_501
	j .LBB0_505
.LBB0_504:                              #   in Loop: Header=BB0_502 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 685 19 is_stmt 1              # parallel-rne.mlir:685:19
	setlt.u r17, r3, r17
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	bneq r17, zero, .LBB0_501
.LBB0_505:                              # %scalar.ph189
                                        #   in Loop: Header=BB0_502 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_501
.LBB0_506:                              # %vector.body191.preheader
                                        #   in Loop: Header=BB0_499 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_508
.LBB0_507:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 673 11 is_stmt 1              # parallel-rne.mlir:673:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 688 13                        # parallel-rne.mlir:688:13
	add.s r13, r16, r26
	.loc	1 673 11                        # parallel-rne.mlir:673:11
	seteq.d r4, r[24:25], r[10:11]
	.loc	1 688 13                        # parallel-rne.mlir:688:13
	stores.w r27, 12(r13)
	stores.w r19, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 673 11                        # parallel-rne.mlir:673:11
	bneq r4, zero, .LBB0_498
.LBB0_508:                              # %vector.body191
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_499 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	add.ul r[12:13], r[24:25], r[5:6]
	slli r26, r12, 2
	add.s r12, r2, r26
	loads.w r13, 12(r12)
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	and r21, r13, r28
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	setlt.u r4, r8, r21
	.loc	1 679 19                        # parallel-rne.mlir:679:19
	bneq r4, zero, .LBB0_510
# %bb.509:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r13, 0
	j .LBB0_511
.LBB0_510:                              #   in Loop: Header=BB0_508 Depth=3
	or r27, r13, r7
.LBB0_511:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	loads.w r4, 8(r12)
	and r20, r4, r28
	setlt.u r9, r8, r20
	.loc	1 679 19                        # parallel-rne.mlir:679:19
	bneq r9, zero, .LBB0_513
# %bb.512:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_514
.LBB0_513:                              #   in Loop: Header=BB0_508 Depth=3
	or r19, r4, r7
.LBB0_514:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 679 19                        # parallel-rne.mlir:679:19
	bneq r9, zero, .LBB0_516
# %bb.515:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_517
.LBB0_516:                              #   in Loop: Header=BB0_508 Depth=3
	or r9, r14, r7
.LBB0_517:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 679 19                        # parallel-rne.mlir:679:19
	bneq r12, zero, .LBB0_519
# %bb.518:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 685 19 is_stmt 1              # parallel-rne.mlir:685:19
	setlt.u r22, r3, r22
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r22, zero, .LBB0_520
	j .LBB0_521
.LBB0_519:                              #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 685 19 is_stmt 1              # parallel-rne.mlir:685:19
	setlt.u r22, r3, r22
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	bneq r22, zero, .LBB0_521
.LBB0_520:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_521:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	setlt.u r17, r3, r17
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r17, zero, .LBB0_524
# %bb.522:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r20
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r14, zero, .LBB0_525
.LBB0_523:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	bneq r4, zero, .LBB0_507
	j .LBB0_526
.LBB0_524:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r20
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	bneq r14, zero, .LBB0_523
.LBB0_525:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r19, r4, r15
	setlt.u r4, r3, r21
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	bneq r4, zero, .LBB0_507
.LBB0_526:                              # %vector.body191
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r27, r4, r15
	j .LBB0_507
.LBB0_527:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	addli r5, zero, 64
	.loc	1 665 7 is_stmt 1               # parallel-rne.mlir:665:7
	mfence { sm }
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	addli r4, zero, 2
	bneq r23, r4, .LBB0_461
.LBB0_528:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	addli r4, zero, 32
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_530
.LBB0_529:                              # %middle.block186
                                        #   in Loop: Header=BB0_530 Depth=2
	.loc	1 700 9 is_stmt 1               # parallel-rne.mlir:700:9
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	load.d r[12:13], -344(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_558
.LBB0_530:                              # %.preheader66
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_539 Depth 3
                                        #       Child Loop BB0_533 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -344(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 701 11 is_stmt 1              # parallel-rne.mlir:701:11
	loadli.w r4,  -360(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_537
# %bb.531:                              # %scalar.ph180.preheader
                                        #   in Loop: Header=BB0_530 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_533
.LBB0_532:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 701 11                        # parallel-rne.mlir:701:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 716 13 is_stmt 1              # parallel-rne.mlir:716:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 701 11                        # parallel-rne.mlir:701:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_529
.LBB0_533:                              # %scalar.ph180
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_530 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	and r17, r14, r28
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	setlt.u r9, r8, r17
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	bneq r9, zero, .LBB0_535
# %bb.534:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 713 19 is_stmt 1              # parallel-rne.mlir:713:19
	setlt.u r17, r3, r17
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r17, zero, .LBB0_532
	j .LBB0_536
.LBB0_535:                              #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 713 19 is_stmt 1              # parallel-rne.mlir:713:19
	setlt.u r17, r3, r17
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r17, zero, .LBB0_532
.LBB0_536:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_532
.LBB0_537:                              # %vector.body182.preheader
                                        #   in Loop: Header=BB0_530 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_539
.LBB0_538:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 701 11 is_stmt 1              # parallel-rne.mlir:701:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 716 13                        # parallel-rne.mlir:716:13
	add.s r13, r16, r24
	.loc	1 701 11                        # parallel-rne.mlir:701:11
	seteq.d r4, r[19:20], r[10:11]
	.loc	1 716 13                        # parallel-rne.mlir:716:13
	stores.w r25, 12(r13)
	stores.w r26, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 701 11                        # parallel-rne.mlir:701:11
	bneq r4, zero, .LBB0_529
.LBB0_539:                              # %vector.body182
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_530 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	add.ul r[12:13], r[19:20], r[5:6]
	slli r24, r12, 2
	add.s r12, r2, r24
	loads.w r13, 12(r12)
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	and r21, r13, r28
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	setlt.u r4, r8, r21
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	bneq r4, zero, .LBB0_541
# %bb.540:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r13, 0
	j .LBB0_542
.LBB0_541:                              #   in Loop: Header=BB0_539 Depth=3
	or r25, r13, r7
.LBB0_542:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r9, r8, r27
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	bneq r9, zero, .LBB0_544
# %bb.543:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_545
.LBB0_544:                              #   in Loop: Header=BB0_539 Depth=3
	or r26, r4, r7
.LBB0_545:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	bneq r9, zero, .LBB0_547
# %bb.546:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_548
.LBB0_547:                              #   in Loop: Header=BB0_539 Depth=3
	or r9, r14, r7
.LBB0_548:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	bneq r12, zero, .LBB0_550
# %bb.549:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 713 19 is_stmt 1              # parallel-rne.mlir:713:19
	setlt.u r22, r3, r22
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	beq r22, zero, .LBB0_551
	j .LBB0_552
.LBB0_550:                              #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 713 19 is_stmt 1              # parallel-rne.mlir:713:19
	setlt.u r22, r3, r22
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r22, zero, .LBB0_552
.LBB0_551:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_552:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	setlt.u r17, r3, r17
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	beq r17, zero, .LBB0_555
# %bb.553:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r27
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	beq r14, zero, .LBB0_556
.LBB0_554:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r4, zero, .LBB0_538
	j .LBB0_557
.LBB0_555:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r27
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r14, zero, .LBB0_554
.LBB0_556:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r26, r4, r15
	setlt.u r4, r3, r21
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	bneq r4, zero, .LBB0_538
.LBB0_557:                              # %vector.body182
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r25, r4, r15
	j .LBB0_538
.LBB0_558:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	addli r5, zero, 64
	.loc	1 693 7 is_stmt 1               # parallel-rne.mlir:693:7
	mfence { sm }
	.loc	1 721 7                         # parallel-rne.mlir:721:7
	addli r4, zero, 3
	bneq r23, r4, .LBB0_462
.LBB0_559:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	addli r4, zero, 48
	.loc	1 721 7                         # parallel-rne.mlir:721:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_561
.LBB0_560:                              # %middle.block177
                                        #   in Loop: Header=BB0_561 Depth=2
	.loc	1 728 9 is_stmt 1               # parallel-rne.mlir:728:9
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	load.d r[12:13], -336(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_589
.LBB0_561:                              # %.preheader65
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_570 Depth 3
                                        #       Child Loop BB0_564 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -336(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 729 11 is_stmt 1              # parallel-rne.mlir:729:11
	loadli.w r4,  -344(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_568
# %bb.562:                              # %scalar.ph171.preheader
                                        #   in Loop: Header=BB0_561 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_564
.LBB0_563:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 729 11                        # parallel-rne.mlir:729:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 744 13 is_stmt 1              # parallel-rne.mlir:744:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 729 11                        # parallel-rne.mlir:729:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_560
.LBB0_564:                              # %scalar.ph171
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_561 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	and r17, r14, r28
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	setlt.u r9, r8, r17
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r9, zero, .LBB0_566
# %bb.565:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 741 19 is_stmt 1              # parallel-rne.mlir:741:19
	setlt.u r17, r3, r17
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	bneq r17, zero, .LBB0_563
	j .LBB0_567
.LBB0_566:                              #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 741 19 is_stmt 1              # parallel-rne.mlir:741:19
	setlt.u r17, r3, r17
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	bneq r17, zero, .LBB0_563
.LBB0_567:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_563
.LBB0_568:                              # %vector.body173.preheader
                                        #   in Loop: Header=BB0_561 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_570
.LBB0_569:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 729 11 is_stmt 1              # parallel-rne.mlir:729:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 744 13                        # parallel-rne.mlir:744:13
	add.s r13, r16, r24
	.loc	1 729 11                        # parallel-rne.mlir:729:11
	seteq.d r4, r[19:20], r[10:11]
	.loc	1 744 13                        # parallel-rne.mlir:744:13
	stores.w r25, 12(r13)
	stores.w r26, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 729 11                        # parallel-rne.mlir:729:11
	bneq r4, zero, .LBB0_560
.LBB0_570:                              # %vector.body173
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_561 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	add.ul r[12:13], r[19:20], r[5:6]
	slli r24, r12, 2
	add.s r12, r2, r24
	loads.w r13, 12(r12)
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	and r21, r13, r28
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	setlt.u r4, r8, r21
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r4, zero, .LBB0_572
# %bb.571:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r13, 0
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_570 Depth=3
	or r25, r13, r7
.LBB0_573:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r9, r8, r27
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r9, zero, .LBB0_575
# %bb.574:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_576
.LBB0_575:                              #   in Loop: Header=BB0_570 Depth=3
	or r26, r4, r7
.LBB0_576:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r9, zero, .LBB0_578
# %bb.577:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_579
.LBB0_578:                              #   in Loop: Header=BB0_570 Depth=3
	or r9, r14, r7
.LBB0_579:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r12, zero, .LBB0_581
# %bb.580:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 741 19 is_stmt 1              # parallel-rne.mlir:741:19
	setlt.u r22, r3, r22
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r22, zero, .LBB0_582
	j .LBB0_583
.LBB0_581:                              #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 741 19 is_stmt 1              # parallel-rne.mlir:741:19
	setlt.u r22, r3, r22
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	bneq r22, zero, .LBB0_583
.LBB0_582:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_583:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	setlt.u r17, r3, r17
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r17, zero, .LBB0_586
# %bb.584:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r27
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r14, zero, .LBB0_587
.LBB0_585:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	bneq r4, zero, .LBB0_569
	j .LBB0_588
.LBB0_586:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r27
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	bneq r14, zero, .LBB0_585
.LBB0_587:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r26, r4, r15
	setlt.u r4, r3, r21
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	bneq r4, zero, .LBB0_569
.LBB0_588:                              # %vector.body173
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r25, r4, r15
	j .LBB0_569
.LBB0_589:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	addli r5, zero, 64
	.loc	1 721 7 is_stmt 1               # parallel-rne.mlir:721:7
	mfence { sm }
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	bneq r23, r9, .LBB0_463
.LBB0_590:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r6,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r6, r4
	zext_int2long r[5:6], r5
	storeli.w r4, -336(r30)                 # 4-byte Folded Spill
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_592
.LBB0_591:                              # %middle.block168
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 756 9 is_stmt 1               # parallel-rne.mlir:756:9
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	load.d r[12:13], -328(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_620
.LBB0_592:                              # %.preheader64
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_601 Depth 3
                                        #       Child Loop BB0_595 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 757 11 is_stmt 1              # parallel-rne.mlir:757:11
	loadli.w r4,  -336(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_599
# %bb.593:                              # %scalar.ph162.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_595
.LBB0_594:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 772 13 is_stmt 1              # parallel-rne.mlir:772:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_591
.LBB0_595:                              # %scalar.ph162
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	and r17, r14, r28
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	setlt.u r9, r8, r17
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r9, zero, .LBB0_597
# %bb.596:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 769 19 is_stmt 1              # parallel-rne.mlir:769:19
	setlt.u r17, r3, r17
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r17, zero, .LBB0_594
	j .LBB0_598
.LBB0_597:                              #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 769 19 is_stmt 1              # parallel-rne.mlir:769:19
	setlt.u r17, r3, r17
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r17, zero, .LBB0_594
.LBB0_598:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_594
.LBB0_599:                              # %vector.body164.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_601
.LBB0_600:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 757 11 is_stmt 1              # parallel-rne.mlir:757:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 772 13                        # parallel-rne.mlir:772:13
	add.s r13, r16, r24
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	seteq.d r4, r[19:20], r[10:11]
	.loc	1 772 13                        # parallel-rne.mlir:772:13
	stores.w r25, 12(r13)
	stores.w r26, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	bneq r4, zero, .LBB0_591
.LBB0_601:                              # %vector.body164
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	add.ul r[12:13], r[19:20], r[5:6]
	slli r24, r12, 2
	add.s r12, r2, r24
	loads.w r13, 12(r12)
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	and r21, r13, r28
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	setlt.u r4, r8, r21
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r4, zero, .LBB0_603
# %bb.602:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r13, 0
	j .LBB0_604
.LBB0_603:                              #   in Loop: Header=BB0_601 Depth=3
	or r25, r13, r7
.LBB0_604:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r9, r8, r27
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r9, zero, .LBB0_606
# %bb.605:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_607
.LBB0_606:                              #   in Loop: Header=BB0_601 Depth=3
	or r26, r4, r7
.LBB0_607:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r9, zero, .LBB0_609
# %bb.608:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_610
.LBB0_609:                              #   in Loop: Header=BB0_601 Depth=3
	or r9, r14, r7
.LBB0_610:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r12, zero, .LBB0_612
# %bb.611:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 769 19 is_stmt 1              # parallel-rne.mlir:769:19
	setlt.u r22, r3, r22
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	beq r22, zero, .LBB0_613
	j .LBB0_614
.LBB0_612:                              #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 769 19 is_stmt 1              # parallel-rne.mlir:769:19
	setlt.u r22, r3, r22
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r22, zero, .LBB0_614
.LBB0_613:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_614:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	setlt.u r17, r3, r17
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	beq r17, zero, .LBB0_617
# %bb.615:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r27
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	beq r14, zero, .LBB0_618
.LBB0_616:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r4, zero, .LBB0_600
	j .LBB0_619
.LBB0_617:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r27
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r14, zero, .LBB0_616
.LBB0_618:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r26, r4, r15
	setlt.u r4, r3, r21
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r4, zero, .LBB0_600
.LBB0_619:                              # %vector.body164
                                        #   in Loop: Header=BB0_601 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r25, r4, r15
	j .LBB0_600
.LBB0_620:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 749 7 is_stmt 1               # parallel-rne.mlir:749:7
	mfence { sm }
	.loc	1 777 7                         # parallel-rne.mlir:777:7
	addli r4, zero, 5
	bneq r23, r4, .LBB0_464
.LBB0_621:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	addli r4, zero, 80
	.loc	1 777 7                         # parallel-rne.mlir:777:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_623
.LBB0_622:                              # %middle.block159
                                        #   in Loop: Header=BB0_623 Depth=2
	.loc	1 784 9 is_stmt 1               # parallel-rne.mlir:784:9
	load.d r[4:5], -312(r30)                # 8-byte Folded Reload
	load.d r[12:13], -320(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_651
.LBB0_623:                              # %.preheader63
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_632 Depth 3
                                        #       Child Loop BB0_626 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -320(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 785 11 is_stmt 1              # parallel-rne.mlir:785:11
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_630
# %bb.624:                              # %scalar.ph153.preheader
                                        #   in Loop: Header=BB0_623 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_626
.LBB0_625:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_626 Depth=3
	.loc	1 785 11                        # parallel-rne.mlir:785:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 800 13 is_stmt 1              # parallel-rne.mlir:800:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 785 11                        # parallel-rne.mlir:785:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_622
.LBB0_626:                              # %scalar.ph153
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_623 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	and r17, r14, r28
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	setlt.u r9, r8, r17
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	bneq r9, zero, .LBB0_628
# %bb.627:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_626 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 797 19 is_stmt 1              # parallel-rne.mlir:797:19
	setlt.u r17, r3, r17
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	bneq r17, zero, .LBB0_625
	j .LBB0_629
.LBB0_628:                              #   in Loop: Header=BB0_626 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 797 19 is_stmt 1              # parallel-rne.mlir:797:19
	setlt.u r17, r3, r17
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	bneq r17, zero, .LBB0_625
.LBB0_629:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_626 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_625
.LBB0_630:                              # %vector.body155.preheader
                                        #   in Loop: Header=BB0_623 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_632
.LBB0_631:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 785 11 is_stmt 1              # parallel-rne.mlir:785:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	add.s r13, r16, r24
	.loc	1 785 11                        # parallel-rne.mlir:785:11
	seteq.d r4, r[19:20], r[10:11]
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	stores.w r25, 12(r13)
	stores.w r26, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 785 11                        # parallel-rne.mlir:785:11
	bneq r4, zero, .LBB0_622
.LBB0_632:                              # %vector.body155
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_623 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	add.ul r[12:13], r[19:20], r[5:6]
	slli r24, r12, 2
	add.s r12, r2, r24
	loads.w r13, 12(r12)
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	and r21, r13, r28
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	setlt.u r4, r8, r21
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	bneq r4, zero, .LBB0_634
# %bb.633:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r13, 0
	j .LBB0_635
.LBB0_634:                              #   in Loop: Header=BB0_632 Depth=3
	or r25, r13, r7
.LBB0_635:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r9, r8, r27
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	bneq r9, zero, .LBB0_637
# %bb.636:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_638
.LBB0_637:                              #   in Loop: Header=BB0_632 Depth=3
	or r26, r4, r7
.LBB0_638:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	bneq r9, zero, .LBB0_640
# %bb.639:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_641
.LBB0_640:                              #   in Loop: Header=BB0_632 Depth=3
	or r9, r14, r7
.LBB0_641:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	bneq r12, zero, .LBB0_643
# %bb.642:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 797 19 is_stmt 1              # parallel-rne.mlir:797:19
	setlt.u r22, r3, r22
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r22, zero, .LBB0_644
	j .LBB0_645
.LBB0_643:                              #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 797 19 is_stmt 1              # parallel-rne.mlir:797:19
	setlt.u r22, r3, r22
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	bneq r22, zero, .LBB0_645
.LBB0_644:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_645:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	setlt.u r17, r3, r17
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r17, zero, .LBB0_648
# %bb.646:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r27
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r14, zero, .LBB0_649
.LBB0_647:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	bneq r4, zero, .LBB0_631
	j .LBB0_650
.LBB0_648:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r27
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	bneq r14, zero, .LBB0_647
.LBB0_649:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r26, r4, r15
	setlt.u r4, r3, r21
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	bneq r4, zero, .LBB0_631
.LBB0_650:                              # %vector.body155
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r25, r4, r15
	j .LBB0_631
.LBB0_651:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 777 7 is_stmt 1               # parallel-rne.mlir:777:7
	mfence { sm }
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	addli r4, zero, 6
	bneq r23, r4, .LBB0_465
.LBB0_652:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -320(r30)                 # 4-byte Folded Spill
	addli r4, zero, 96
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_654
.LBB0_653:                              # %middle.block150
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 812 9 is_stmt 1               # parallel-rne.mlir:812:9
	load.d r[4:5], -304(r30)                # 8-byte Folded Reload
	load.d r[12:13], -312(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_682
.LBB0_654:                              # %.preheader62
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_663 Depth 3
                                        #       Child Loop BB0_657 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -312(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 813 11 is_stmt 1              # parallel-rne.mlir:813:11
	loadli.w r4,  -320(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_661
# %bb.655:                              # %scalar.ph144.preheader
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_657
.LBB0_656:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 813 11                        # parallel-rne.mlir:813:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 828 13 is_stmt 1              # parallel-rne.mlir:828:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 813 11                        # parallel-rne.mlir:813:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_653
.LBB0_657:                              # %scalar.ph144
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_654 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	and r17, r14, r28
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	setlt.u r9, r8, r17
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	bneq r9, zero, .LBB0_659
# %bb.658:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 825 19 is_stmt 1              # parallel-rne.mlir:825:19
	setlt.u r17, r3, r17
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r17, zero, .LBB0_656
	j .LBB0_660
.LBB0_659:                              #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 825 19 is_stmt 1              # parallel-rne.mlir:825:19
	setlt.u r17, r3, r17
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r17, zero, .LBB0_656
.LBB0_660:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_657 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_656
.LBB0_661:                              # %vector.body146.preheader
                                        #   in Loop: Header=BB0_654 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_663
.LBB0_662:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 813 11 is_stmt 1              # parallel-rne.mlir:813:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 828 13                        # parallel-rne.mlir:828:13
	add.s r13, r16, r24
	.loc	1 813 11                        # parallel-rne.mlir:813:11
	seteq.d r4, r[19:20], r[10:11]
	.loc	1 828 13                        # parallel-rne.mlir:828:13
	stores.w r25, 12(r13)
	stores.w r26, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 813 11                        # parallel-rne.mlir:813:11
	bneq r4, zero, .LBB0_653
.LBB0_663:                              # %vector.body146
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_654 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	add.ul r[12:13], r[19:20], r[5:6]
	slli r24, r12, 2
	add.s r12, r2, r24
	loads.w r13, 12(r12)
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	and r21, r13, r28
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	setlt.u r4, r8, r21
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	bneq r4, zero, .LBB0_665
# %bb.664:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r13, 0
	j .LBB0_666
.LBB0_665:                              #   in Loop: Header=BB0_663 Depth=3
	or r25, r13, r7
.LBB0_666:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r9, r8, r27
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	bneq r9, zero, .LBB0_668
# %bb.667:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_669
.LBB0_668:                              #   in Loop: Header=BB0_663 Depth=3
	or r26, r4, r7
.LBB0_669:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	bneq r9, zero, .LBB0_671
# %bb.670:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_672
.LBB0_671:                              #   in Loop: Header=BB0_663 Depth=3
	or r9, r14, r7
.LBB0_672:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	bneq r12, zero, .LBB0_674
# %bb.673:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 825 19 is_stmt 1              # parallel-rne.mlir:825:19
	setlt.u r22, r3, r22
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	beq r22, zero, .LBB0_675
	j .LBB0_676
.LBB0_674:                              #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 825 19 is_stmt 1              # parallel-rne.mlir:825:19
	setlt.u r22, r3, r22
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r22, zero, .LBB0_676
.LBB0_675:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_676:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	setlt.u r17, r3, r17
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	beq r17, zero, .LBB0_679
# %bb.677:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r27
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	beq r14, zero, .LBB0_680
.LBB0_678:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r4, zero, .LBB0_662
	j .LBB0_681
.LBB0_679:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r27
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r14, zero, .LBB0_678
.LBB0_680:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r26, r4, r15
	setlt.u r4, r3, r21
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r4, zero, .LBB0_662
.LBB0_681:                              # %vector.body146
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r25, r4, r15
	j .LBB0_662
.LBB0_682:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 805 7 is_stmt 1               # parallel-rne.mlir:805:7
	mfence { sm }
	.loc	1 833 7                         # parallel-rne.mlir:833:7
	addli r4, zero, 7
	bneq r23, r4, .LBB0_714
.LBB0_683:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -388(r30)                 # 4-byte Folded Reload
	addli r4, zero, 16
	setlt.u r4, r5, r4
	storeli.w r4, -312(r30)                 # 4-byte Folded Spill
	addli r4, zero, 112
	.loc	1 833 7                         # parallel-rne.mlir:833:7
	xfence
	zext_int2long r[5:6], r4
	mfence { lm, sm, gm }
	j .LBB0_685
.LBB0_684:                              # %middle.block
                                        #   in Loop: Header=BB0_685 Depth=2
	.loc	1 840 9 is_stmt 1               # parallel-rne.mlir:840:9
	load.d r[4:5], -288(r30)                # 8-byte Folded Reload
	load.d r[12:13], -304(r30)              # 8-byte Folded Reload
	setlt.ul r4, r[12:13], r[4:5]
	addli.d r[5:6], r[12:13], 1
	beq r4, zero, .LBB0_713
.LBB0_685:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_694 Depth 3
                                        #       Child Loop BB0_688 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 7
	store.d r[5:6], -304(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r4
	.loc	1 841 11 is_stmt 1              # parallel-rne.mlir:841:11
	loadli.w r4,  -312(r30)                 # 4-byte Folded Reload
	beq r4, zero, .LBB0_692
# %bb.686:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_685 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_688
.LBB0_687:                              # %scalar.ph
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	.loc	1 856 13 is_stmt 1              # parallel-rne.mlir:856:13
	add.s r4, r16, r4
	stores.w r9, 0(r4)
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	setlt.ul r14, r[12:13], r[17:18]
	addli.d r[12:13], r[12:13], 1
	beq r14, zero, .LBB0_684
.LBB0_688:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_685 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.ul r[17:18], r[12:13], r[5:6]
	slli r4, r17, 2
	add.s r9, r2, r4
	loads.w r14, 0(r9)
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	and r17, r14, r28
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	setlt.u r9, r8, r17
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r9, zero, .LBB0_690
# %bb.689:                              # %scalar.ph
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r14, 0
	.loc	1 853 19 is_stmt 1              # parallel-rne.mlir:853:19
	setlt.u r17, r3, r17
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r17, zero, .LBB0_687
	j .LBB0_691
.LBB0_690:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r14, r7
	.loc	1 853 19 is_stmt 1              # parallel-rne.mlir:853:19
	setlt.u r17, r3, r17
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r17, zero, .LBB0_687
.LBB0_691:                              # %scalar.ph
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	j .LBB0_687
.LBB0_692:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_685 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_694
.LBB0_693:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 841 11 is_stmt 1              # parallel-rne.mlir:841:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 856 13                        # parallel-rne.mlir:856:13
	add.s r13, r16, r24
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	seteq.d r4, r[19:20], r[10:11]
	.loc	1 856 13                        # parallel-rne.mlir:856:13
	stores.w r25, 12(r13)
	stores.w r26, 8(r13)
	stores.w r9, 4(r13)
	stores.w r12, 0(r13)
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	bneq r4, zero, .LBB0_684
.LBB0_694:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_685 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.ul r[12:13], r[19:20], r[5:6]
	slli r24, r12, 2
	add.s r12, r2, r24
	loads.w r13, 12(r12)
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	and r21, r13, r28
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	setlt.u r4, r8, r21
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r4, zero, .LBB0_696
# %bb.695:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r13, 0
	j .LBB0_697
.LBB0_696:                              #   in Loop: Header=BB0_694 Depth=3
	or r25, r13, r7
.LBB0_697:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	loads.w r4, 8(r12)
	and r27, r4, r28
	setlt.u r9, r8, r27
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r9, zero, .LBB0_699
# %bb.698:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r4, 0
	j .LBB0_700
.LBB0_699:                              #   in Loop: Header=BB0_694 Depth=3
	or r26, r4, r7
.LBB0_700:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	loads.w r14, 4(r12)
	and r17, r14, r28
	setlt.u r9, r8, r17
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r9, zero, .LBB0_702
# %bb.701:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_703
.LBB0_702:                              #   in Loop: Header=BB0_694 Depth=3
	or r9, r14, r7
.LBB0_703:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	loads.w r18, 0(r12)
	and r22, r18, r28
	setlt.u r12, r8, r22
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r12, zero, .LBB0_705
# %bb.704:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 853 19 is_stmt 1              # parallel-rne.mlir:853:19
	setlt.u r22, r3, r22
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	beq r22, zero, .LBB0_706
	j .LBB0_707
.LBB0_705:                              #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r18, r7
	.loc	1 853 19 is_stmt 1              # parallel-rne.mlir:853:19
	setlt.u r22, r3, r22
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r22, zero, .LBB0_707
.LBB0_706:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r18, 16
	andi r12, r12, 1
	add.s r12, r18, r12
	add.s r12, r12, r1
	and r12, r12, r15
.LBB0_707:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	setlt.u r17, r3, r17
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	beq r17, zero, .LBB0_710
# %bb.708:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r3, r27
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	beq r14, zero, .LBB0_711
.LBB0_709:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r3, r21
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r4, zero, .LBB0_693
	j .LBB0_712
.LBB0_710:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r15
	setlt.u r14, r3, r27
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r14, zero, .LBB0_709
.LBB0_711:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r4, 16
	andi r14, r14, 1
	add.s r4, r4, r14
	add.s r4, r4, r1
	and r26, r4, r15
	setlt.u r4, r3, r21
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	bneq r4, zero, .LBB0_693
.LBB0_712:                              # %vector.body
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r1
	and r25, r4, r15
	j .LBB0_693
.LBB0_713:                              #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 128
	addli r9, zero, 4
	.loc	1 833 7 is_stmt 1               # parallel-rne.mlir:833:7
	mfence { sm }
.LBB0_714:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 861 7                         # parallel-rne.mlir:861:7
	addli r2, zero, 255
	addli r19, zero, 1
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 862 7                         # parallel-rne.mlir:862:7
	beq r23, r2, .LBB0_5
# %bb.715:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	bneq r23, zero, .LBB0_7
# %bb.716:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -436(r30)                 # 4-byte Folded Reload
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	load.d r[12:13], -432(r30)              # 8-byte Folded Reload
	load.d r[19:20], 24(r30)
	load.d r[17:18], -352(r30)              # 8-byte Folded Reload
	addli r9, zero, 5
	addli r14, zero, 1
	sext_int2long r[4:5], r2
	addli r2, zero, 19
	sll.d r[12:13], r[12:13], r2
	addli r2, zero, 16
	min.sl r[17:18], r[4:5], r[17:18]
	xwait r2, 0
	add.ul r[12:13], r[19:20], r[12:13]
	load.d r[19:20], -416(r30)              # 8-byte Folded Reload
	lock zero, r9
	addli.d r[17:18], r[17:18], 128
	ori r2, r16, 64
	addli r16, zero, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r14, zero, 1
	max.sl r[17:18], r[17:18], r[4:5]
	add.ul r[12:13], r[12:13], r[19:20]
	addli r19, zero, 1
	sub.sl r[4:5], r[17:18], r[4:5]
	dma_cfg r13, zero, zero, 2
	dma_cfg r12, r2, r16, 3
	addli r13, zero, 128
	.loc	1 867 13 is_stmt 1              # parallel-rne.mlir:867:13
	min.sl r[4:5], r[4:5], r[10:11]
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r10, zero, 4096
	load.d r[17:18], -424(r30)              # 8-byte Folded Reload
	addli r2, r17, 31
	slli r6, r17, 1
	srli r2, r2, 5
	dma_cfg r16, r13, r2, 4
	andi r2, r6, 62
	addli r6, zero, 512
	dma_cfg r10, r6, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 17
	dma_cfg zero, zero, zero, 8
	unlock r9
	addli r9, zero, 4
	j .LBB0_6
.LBB0_717:                              # %._crit_edge
	.loc	1 873 5                         # parallel-rne.mlir:873:5
	xsignal zero, 0
	bneq r23, zero, .LBB0_719
# %bb.718:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 873 5                         # parallel-rne.mlir:873:5
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
.LBB0_719:
	.loc	1 874 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:874:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-vplvxszu" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
