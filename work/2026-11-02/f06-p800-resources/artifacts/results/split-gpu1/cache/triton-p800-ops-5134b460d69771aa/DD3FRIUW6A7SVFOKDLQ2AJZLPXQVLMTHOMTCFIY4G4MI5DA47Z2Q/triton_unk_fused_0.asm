	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-dh6etokd" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -720
	addli r2, zero, 1
.Ltmp0:
	.loc	1 37 5 prologue_end             # parallel-rne.mlir:37:5
	core_id r1
	core_id r10
	addli r30, sp, 656
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	xwait r2, 0
	xwait r2, 0
	xwait zero, 0
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r5, zero, 2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	uni_sram_cfg r2, r2
	addli r1, zero, 4
	load.d r[3:4], 32(r30)
	addli r6, zero, 4096
	lock zero, r5
	ew_cfg r2, zero, zero, 16
	unlock r5
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg zero, r3, r6, 3
	addli r3, zero, 1024
	dma_cfg zero, zero, r2, 4
	dma_run zero
	unlock r1
	xsignal r2, 0
	xwait r2, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r5, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	addli r3, zero, 5
	unlock zero
	xsignal r2, 0
	xwait r2, 0
	lock zero, r5
	lui r2, 17
	ewtable_cfg r6, 0
	ewtable_cfg r2, 1
	lui r2, 1048575
	unlock r5
	xsignal zero, 0
	xwait zero, 0
	ori r2, r2, 4095
	csr_set csr3, r2
	addli r2, zero, 18
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 20
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 26
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 28
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 30
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 35
	xsignal r3, 0
	xsignal r3, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r2, zero, 38
	addli r1, zero, 40
	xsignal r2, 0
	xsignal r2, 0
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
	storeli.w zero, -12(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -24(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -36(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -48(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -60(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -72(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -84(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -96(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -108(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -136(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -300(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -328(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -428(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -440(r30)
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
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -296(r30)
	storeli.w r3, -292(r30)
	storeli.w r3, -288(r30)
	storeli.w r3, -284(r30)
	storeli.w r3, -280(r30)
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
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -324(r30)
	storeli.w r3, -320(r30)
	storeli.w r3, -316(r30)
	storeli.w r3, -312(r30)
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -424(r30)
	storeli.w r3, -420(r30)
	storeli.w r3, -416(r30)
	storeli.w r3, -412(r30)
	storeli.w r3, -408(r30)
	storeli.w r3, -404(r30)
	storeli.w r3, -400(r30)
	storeli.w r3, -396(r30)
	storeli.w r3, -392(r30)
	storeli.w r3, -388(r30)
	storeli.w r3, -384(r30)
	storeli.w r3, -380(r30)
	storeli.w r3, -376(r30)
	storeli.w r3, -372(r30)
	storeli.w r3, -368(r30)
	storeli.w r3, -364(r30)
	storeli.w r3, -360(r30)
	storeli.w r3, -356(r30)
	storeli.w r3, -352(r30)
	storeli.w r3, -348(r30)
	storeli.w r3, -344(r30)
	storeli.w r3, -340(r30)
	storeli.w r3, -336(r30)
	storeli.w r3, -332(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -436(r30)
	storeli.w r3, -432(r30)
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r1, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	fmac.s r2, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	min.s r2, r2, r4
	.loc	1 64 5                          # parallel-rne.mlir:64:5
	ble.s r2, r1, .LBB0_1050
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 48 11 is_stmt 1               # parallel-rne.mlir:48:11
	sext_int2long r[4:5], r1
	lui r1, 31
	addli r16, zero, 128
	addli r23, zero, 2
	addli r24, zero, 4
	addli r21, zero, 6
	lui r15, 522240
	lui r28, 268288
	store.d r[2:3], -608(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r3, 250738
	lui r1, 1047552
	store.d r[1:2], -616(r30)               # 8-byte Folded Spill
	lui r1, 160
	lui r2, 224
	ori r1, r1, 1024
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	lui r1, 192
	ori r1, r1, 1024
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 524287
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	lui r1, 256
	ori r26, r2, 4095
	lui r2, 320
	ori r1, r1, 1024
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
	lui r1, 288
	ori r1, r1, 1024
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 352
	ori r2, r2, 1024
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	lui r1, 2047
	storeli.w r2, -644(r30)                 # 4-byte Folded Spill
	lui r2, 56
	ori r1, r1, 4095
	ori r2, r2, 2115
	storeli.w r2, -648(r30)                 # 4-byte Folded Spill
	ori r2, r3, 1811
	lui r3, 1023
	storeli.w r2, -652(r30)                 # 4-byte Folded Spill
	lui r2, 259268
	ori r2, r2, 554
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	ori r2, r3, 4095
	storeli.w r2, -532(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	addli r2, zero, 17
	addli r16, zero, 128
	addli r23, zero, 2
	addli r24, zero, 4
	addli r21, zero, 6
	xsignal r2, 0
	.loc	1 1293 7                        # parallel-rne.mlir:1293:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	addli r2, zero, 38
	xsignal r2, 0
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	addli r2, zero, 40
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -552(r30)                # 8-byte Folded Reload
	.loc	1 64 5 is_stmt 1                # parallel-rne.mlir:64:5
	load.d r[2:3], -608(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r2, r[4:5], r[2:3]
	beq r2, zero, .LBB0_1050
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_158 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #     Child Loop BB0_187 Depth 2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #     Child Loop BB0_216 Depth 2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #     Child Loop BB0_245 Depth 2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
                                        #     Child Loop BB0_300 Depth 2
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_301 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #     Child Loop BB0_307 Depth 2
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_308 Depth 3
                                        #     Child Loop BB0_286 Depth 2
                                        #       Child Loop BB0_288 Depth 3
                                        #       Child Loop BB0_287 Depth 3
                                        #     Child Loop BB0_314 Depth 2
                                        #       Child Loop BB0_316 Depth 3
                                        #       Child Loop BB0_315 Depth 3
                                        #     Child Loop BB0_293 Depth 2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #     Child Loop BB0_321 Depth 2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_322 Depth 3
                                        #     Child Loop BB0_327 Depth 2
                                        #       Child Loop BB0_329 Depth 3
                                        #       Child Loop BB0_328 Depth 3
                                        #     Child Loop BB0_403 Depth 2
                                        #       Child Loop BB0_405 Depth 3
                                        #     Child Loop BB0_337 Depth 2
                                        #       Child Loop BB0_339 Depth 3
                                        #     Child Loop BB0_425 Depth 2
                                        #       Child Loop BB0_427 Depth 3
                                        #     Child Loop BB0_359 Depth 2
                                        #       Child Loop BB0_361 Depth 3
                                        #     Child Loop BB0_447 Depth 2
                                        #       Child Loop BB0_449 Depth 3
                                        #     Child Loop BB0_381 Depth 2
                                        #       Child Loop BB0_383 Depth 3
                                        #     Child Loop BB0_469 Depth 2
                                        #       Child Loop BB0_471 Depth 3
                                        #     Child Loop BB0_490 Depth 2
                                        #       Child Loop BB0_492 Depth 3
                                        #     Child Loop BB0_629 Depth 2
                                        #       Child Loop BB0_639 Depth 3
                                        #       Child Loop BB0_633 Depth 3
                                        #     Child Loop BB0_518 Depth 2
                                        #       Child Loop BB0_528 Depth 3
                                        #       Child Loop BB0_522 Depth 3
                                        #     Child Loop BB0_666 Depth 2
                                        #       Child Loop BB0_676 Depth 3
                                        #       Child Loop BB0_670 Depth 3
                                        #     Child Loop BB0_555 Depth 2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_559 Depth 3
                                        #     Child Loop BB0_703 Depth 2
                                        #       Child Loop BB0_713 Depth 3
                                        #       Child Loop BB0_707 Depth 3
                                        #     Child Loop BB0_592 Depth 2
                                        #       Child Loop BB0_602 Depth 3
                                        #       Child Loop BB0_596 Depth 3
                                        #     Child Loop BB0_740 Depth 2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_744 Depth 3
                                        #     Child Loop BB0_776 Depth 2
                                        #       Child Loop BB0_786 Depth 3
                                        #       Child Loop BB0_780 Depth 3
                                        #     Child Loop BB0_906 Depth 2
                                        #       Child Loop BB0_923 Depth 3
                                        #       Child Loop BB0_909 Depth 3
                                        #     Child Loop BB0_819 Depth 2
                                        #       Child Loop BB0_836 Depth 3
                                        #       Child Loop BB0_822 Depth 3
                                        #     Child Loop BB0_935 Depth 2
                                        #       Child Loop BB0_952 Depth 3
                                        #       Child Loop BB0_938 Depth 3
                                        #     Child Loop BB0_848 Depth 2
                                        #       Child Loop BB0_865 Depth 3
                                        #       Child Loop BB0_851 Depth 3
                                        #     Child Loop BB0_964 Depth 2
                                        #       Child Loop BB0_981 Depth 3
                                        #       Child Loop BB0_967 Depth 3
                                        #     Child Loop BB0_877 Depth 2
                                        #       Child Loop BB0_894 Depth 3
                                        #       Child Loop BB0_880 Depth 3
                                        #     Child Loop BB0_993 Depth 2
                                        #       Child Loop BB0_1010 Depth 3
                                        #       Child Loop BB0_996 Depth 3
                                        #     Child Loop BB0_1021 Depth 2
                                        #       Child Loop BB0_1038 Depth 3
                                        #       Child Loop BB0_1024 Depth 3
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	loadli.w r2,  -440(r30)
	addli r3, r2, 1
	storeli.w r3, -440(r30)
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	bneq r10, r24, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 18
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  48(r30)
	store.d r[4:5], -552(r30)               # 8-byte Folded Spill
	addli r6, zero, 8
	mod.s r8, r2, r23
	loadli.w r2,  -428(r30)
	loadli.w r7,  -136(r30)
	addli r14, zero, 0
	div.s r3, r4, r3
	loadli.w r4,  44(r30)
	addli r5, zero, 16
	slli r22, r8, 16
	div.s r3, r3, r4
	div.s r4, r3, r16
	slli r9, r4, 3
	slli r4, r4, 7
	sub.s r5, r5, r9
	sub.s r4, r3, r4
	min.s r5, r5, r6
	loadli.w r6,  -300(r30)
	mod.s r3, r3, r5
	div.s r4, r4, r5
	loadli.w r5,  -328(r30)
	add.s r8, r9, r3
	zext_int2long r[11:12], r4
	slli r25, r4, 7
	slli r3, r8, 7
	zext_int2long r[8:9], r8
	storeli.w r3, -580(r30)                 # 4-byte Folded Spill
	addli r3, zero, 7
	store.d r[8:9], -576(r30)               # 8-byte Folded Spill
	sll.d r[11:12], r[11:12], r3
	addli r3, zero, 18
	sll.d r[8:9], r[8:9], r3
	.loc	1 90 7 is_stmt 1                # parallel-rne.mlir:90:7
	load.d r[3:4], 8(r30)
	sll.d r[10:11], r[11:12], r23
	store.d r[10:11], -568(r30)             # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[10:11]
	store.d r[3:4], -448(r30)               # 8-byte Folded Spill
	load.d r[3:4], -616(r30)                # 8-byte Folded Reload
	and.d r[17:18], r[8:9], r[3:4]
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r3, zero, 2048
	.loc	1 99 15 is_stmt 1               # parallel-rne.mlir:99:15
	sub.sl r[23:24], r[19:20], r[23:24]
	addli r10, zero, 1920
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	load.d r[12:13], 0(r30)
	addli r16, zero, 128
	zext_int2long r[3:4], r3
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	div.sl r[3:4], r[23:24], r[3:4]
	zext_int2long r[23:24], r10
	addli r10, zero, 2
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	sll.d r[19:20], r[19:20], r10
	addli r10, zero, 3
	xwait r10, 0
	addli r10, zero, 4
	add.ul r[19:20], r[12:13], r[19:20]
	lock zero, r10
	addli r10, zero, 256
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r20, zero, 2
	dma_cfg r11, r19, r10, 3
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	min.sl r[23:24], r[3:4], r[23:24]
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	sub.sl r[3:4], r[23:24], r[3:4]
	addli r24, zero, 4
	addli r23, zero, 2
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r3, r3, 128
	addli r4, zero, 8192
	dma_cfg r10, r4, r3, 4
	dma_run zero
	unlock r24
	xsignal r23, 0
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
.LBB0_12:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r2, r2, 1
	addli r5, r5, 1
	.loc	1 124 15 is_stmt 1              # parallel-rne.mlir:124:15
	addli r6, r6, 1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r14, r14, 1
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r7, r7, 1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r4, zero, 32
	beq r14, r4, .LBB0_28
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r4, r5, r21
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	addli r10, zero, 24
	mod.s r11, r2, r10
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	lui r10, 32
	slli r19, r4, 15
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	slli r4, r11, 15
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	add.s r11, r19, r10
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	beq r3, r23, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[20:21], r14
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r10, zero, 1
	bneq r3, r10, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 6
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	sll.d r[19:20], r[20:21], r3
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	addli r21, zero, 6
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	add.ul r[19:20], r[19:20], r[8:9]
	zext_int2long r[23:24], r3
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	setlt.ul r4, r[23:24], r[19:20]
	addli.d r[23:24], r[17:18], 0
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	bneq r4, zero, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[23:24], zero
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 114 9 is_stmt 1               # parallel-rne.mlir:114:9
	addli r10, zero, 5
	xwait r23, 0
	xwait r10, 0
	lock zero, zero
	addli r10, zero, 64
	ds_cfg r23, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r4, r11, r10, 1
	addli r4, zero, 3
	unlock zero
	xsignal r4, 0
	xsignal r24, 0
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 6
	.loc	1 124 15 is_stmt 1              # parallel-rne.mlir:124:15
	addli r10, zero, 40
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	mod.s r3, r7, r27
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	mod.s r11, r6, r10
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	lui r10, 80
	slli r3, r3, 15
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	slli r11, r11, 15
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	add.s r19, r3, r10
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	.loc	1 130 9                         # parallel-rne.mlir:130:9
	addli r10, zero, 7
	beq r3, r10, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r3, r27, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r10, zero, 7
	addli r3, zero, 19
	xwait r10, 0
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	sll.d r[3:4], r[20:21], r3
	lock zero, r24
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[10:11], r[3:4]
	addli r10, zero, 512
	addli r11, zero, 8192
	dma_cfg zero, r4, zero, 2
	dma_cfg r19, r3, r10, 3
	addli r4, zero, 64
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	.loc	1 130 9                         # parallel-rne.mlir:130:9
	dma_cfg r10, r11, r4, 4
	dma_run zero
	unlock r24
	xsignal r27, 0
	j .LBB0_27
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	addli r4, zero, 9
	xwait r27, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 64
	ds_cfg r23, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r11, r19, r4, 2
	addli r4, zero, 7
	unlock zero
	xsignal r4, 0
	addli r4, zero, 8
	xsignal r4, 0
	j .LBB0_27
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 6
	.loc	1 133 9 is_stmt 1               # parallel-rne.mlir:133:9
	bneq r3, r24, .LBB0_12
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 8
	addli r19, zero, 1
	addli r20, zero, 1
	addli r21, zero, 0
	addli r10, zero, 64
	xwait r24, 0
	xwait r3, 0
	beq r14, zero, .LBB0_25
.LBB0_24:                               # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r21, 14
	slli r21, r21, 8
	lock zero, r19
	mm_cfg r10, r10, r16, 0
	or r3, r3, r11
	or r21, r21, r22
	mm_cfg r24, r24, r19, 2
	mm_acc r21, r4, r3, 8
	andi r3, r20, 1
	addli r21, zero, 1
	addli r20, zero, 0
	unlock r19
	bneq r3, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r21, 14
	slli r21, r21, 8
	lock zero, r19
	mm_cfg r10, r10, r16, 0
	or r3, r3, r11
	or r21, r21, r22
	mm_cfg r24, r24, r19, 2
	mm r21, r4, r3, 8
	andi r3, r20, 1
	addli r21, zero, 1
	addli r20, zero, 0
	unlock r19
	bneq r3, zero, .LBB0_25
.LBB0_26:                               # %.loopexit
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
.LBB0_27:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r21, zero, 6
	j .LBB0_12
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 15 is_stmt 1              # parallel-rne.mlir:107:15
	storeli.w r2, -428(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r5, -328(r30)
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	storeli.w r6, -300(r30)
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	storeli.w r7, -136(r30)
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r3, r24, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1920
	.loc	1 151 13 is_stmt 1              # parallel-rne.mlir:151:13
	loadli.w r8,  -108(r30)
	zext_int2long r[6:7], r16
	lui r10, 16
	zext_int2long r[4:5], r2
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	zext_int2long r[2:3], r25
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	mod.s r9, r8, r23
	store.d r[4:5], -592(r30)               # 8-byte Folded Spill
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	min.ul r[4:5], r[2:3], r[4:5]
	addli.d r[4:5], r[4:5], 128
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r4, r9, 9
	addli r9, zero, 1
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	min.ul r[12:13], r[2:3], r[6:7]
	lui r3, 128
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	add.s r2, r4, r3
	addli r4, r8, 1
	ori r3, r3, 1024
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	store.d r[12:13], -600(r30)             # 8-byte Folded Spill
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	storeli.w r4, -108(r30)
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	bneq r8, r9, .LBB0_32
# %bb.31:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], 16(r30)
	load.d r[10:11], -568(r30)              # 8-byte Folded Reload
	addli r8, zero, 20
	lui r25, 524288
	xwait r8, 0
	lock zero, r24
	slli r8, r12, 2
	add.ul r[4:5], r[4:5], r[10:11]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r8, 3
	addli r2, zero, 512
	dma_cfg r2, r2, r9, 4
	addli r2, zero, 19
	dma_run zero
	unlock r24
	xsignal r2, 0
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	loadli.w r2,  -96(r30)
	mod.s r4, r2, r23
	addli r2, r2, 1
	storeli.w r2, -96(r30)
	slli r4, r4, 16
	add.s r10, r4, r3
	j .LBB0_37
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r4,  -96(r30)
	addli r9, zero, 1
	lui r25, 524288
	mod.s r5, r4, r23
	addli r4, r4, 1
	storeli.w r4, -96(r30)
	slli r5, r5, 16
	add.s r5, r5, r3
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r3, zero, 5
	bneq r8, r3, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	xwait r4, 0
	addli r4, zero, 19
	xwait r4, 0
	addli r4, zero, 23
	xwait r4, 0
	lock zero, r23
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r9, zero, zero, 3
	addli r9, r5, 0
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r9, r3
	add.s r5, r22, r3
	addli r3, r3, 512
	dsmadd r4, r5, r2, 0
	bneq r3, r10, .LBB0_34
# %bb.35:                               # %.thread198
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	unlock r23
	addli r8, zero, 4095
	lui r4, 260096
	addli r10, r9, 0
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r2,  -84(r30)
	mod.s r3, r2, r23
	addli r2, r2, 1
	storeli.w r2, -84(r30)
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r23
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	slli r2, r3, 16
	loadli.w r3,  -620(r30)                 # 4-byte Folded Reload
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	ew_cfg zero, zero, zero, 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r3, r2, r3
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r8, zero, 2
	ew_cfg r24, zero, zero, 3
	ew_cfg r24, r24, zero, 19
	storeli.w r3, -448(r30)                 # 4-byte Folded Spill
	hp_ssmul r3, r9, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r23
	xsignal r2, 0
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	loadli.w r2,  -72(r30)
	mod.s r3, r2, r23
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	loadli.w r2,  -624(r30)                 # 4-byte Folded Reload
	slli r3, r3, 16
	add.s r21, r3, r2
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r23
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r24, zero, zero, 3
	ew_cfg r24, r24, r24, 19
	dsmul r21, r9, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r23
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r2,  -60(r30)
	mod.s r3, r2, r23
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	loadli.w r2,  -628(r30)                 # 4-byte Folded Reload
	slli r3, r3, 16
	add.s r5, r3, r2
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 30
	xwait r2, 0
	lock zero, r23
	addli r2, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r24, zero, zero, 3
	ew_cfg r24, r24, r24, 19
	dsmul r5, r21, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r23
	xsignal r2, 0
	addli r2, zero, 27
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r2, 0
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	loadli.w r2,  -48(r30)
	storeli.w r2, -556(r30)                 # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	j .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r10, r5, 0
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	loadli.w r2,  -84(r30)
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	loadli.w r3,  -72(r30)
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r8,  -60(r30)
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	loadli.w r9,  -48(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	mod.s r4, r2, r23
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	mod.s r5, r3, r23
	addli r3, r3, 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	addli r2, r2, 1
	storeli.w r9, -556(r30)                 # 4-byte Folded Spill
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	storeli.w r3, -72(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	storeli.w r2, -84(r30)
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	mod.s r2, r8, r23
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	slli r3, r4, 16
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	slli r4, r5, 16
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r5,  -620(r30)                 # 4-byte Folded Reload
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	slli r2, r2, 16
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r3, r3, r5
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	storeli.w r3, -448(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -624(r30)                 # 4-byte Folded Reload
	add.s r21, r4, r3
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	addli r3, r8, 1
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	storeli.w r3, -60(r30)
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	addli r3, r9, 1
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	add.s r5, r2, r4
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	storeli.w r3, -48(r30)
	.loc	1 170 7                         # parallel-rne.mlir:170:7
	addli r3, zero, 3
	bneq r2, r3, .LBB0_39
# %bb.38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	addli r3, zero, 21
	xwait r3, 0
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r3, zero, 27
	xwait r3, 0
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	addli r3, zero, 29
	xwait r3, 0
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	addli r3, zero, 255
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	xfence
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	mfence { lm, sm, gm }
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	csr_set csr5, r3
	sub.s r3, r22, r21
	storeli.w r3, -536(r30)                 # 4-byte Folded Spill
	sub.s r3, r22, r10
	storeli.w r3, -540(r30)                 # 4-byte Folded Spill
	sub.s r3, r22, r5
	storeli.w r3, -544(r30)                 # 4-byte Folded Spill
	addli r3, zero, 15
	zext_int2long r[3:4], r3
	store.d r[3:4], -512(r30)               # 8-byte Folded Spill
	addli r3, zero, 127
	sync_core
	storeli.w r10, -456(r30)                # 4-byte Folded Spill
	zext_int2long r[23:24], r3
	addli r3, zero, 1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	bneq r2, zero, .LBB0_68
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block709
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -464(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_67
.LBB0_42:                               # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_57
# %bb.43:                               # %scalar.ph701.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 208 13 is_stmt 1              # parallel-rne.mlir:208:13
	add.s r8, r22, r11
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r14, 0(r8)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r2, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph701
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[8:9], r[3:4], r[12:13]
	lui r14, 523264
	lui r18, 523264
	slli r11, r8, 2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.s r2, r10, r11
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r8, r5, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r2, 0(r2)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r19, 0(r8)
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	and r2, r2, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r2, r15, .LBB0_47
# %bb.46:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_47:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	add.s r8, r21, r11
	loads.w r8, 0(r8)
	and r17, r8, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r17, zero, .LBB0_55
# %bb.48:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_56
.LBB0_49:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	beq r17, r15, .LBB0_51
.LBB0_50:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_51:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r8, r15, r2
	lui r2, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r8, zero, .LBB0_53
# %bb.52:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_53:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r8, r15, r17
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r8, zero, .LBB0_44
# %bb.54:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_44
.LBB0_55:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	lui r19, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r2, zero, .LBB0_49
.LBB0_56:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r17, r15, .LBB0_50
	j .LBB0_51
.LBB0_57:                               # %vector.body703.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_59
.LBB0_58:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	add.s r9, r22, r14
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r8, r[3:4], r[6:7]
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r17, 12(r9)
	stores.w r2, 8(r9)
	stores.w r27, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r8, zero, .LBB0_41
.LBB0_59:                               # %vector.body703
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[17:18], r[3:4], r[12:13]
	slli r14, r17, 2
	add.s r18, r21, r14
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.s r19, r10, r14
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	loads.w r2, 0(r18)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r11, 0(r19)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r2, r2, r26
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	and r11, r11, r26
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	seteq r17, r2, r15
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	seteq r20, r11, zero
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	seteq r8, r2, zero
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r27, r11, r15
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	max.u r2, r2, r11
	lui r11, 523264
	setlt.u r2, r15, r2
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r9, r17, r20
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r8, r8, r27
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r20, r5, r14
	lui r17, 523264
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	or r8, r9, r8
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	or r2, r2, r8
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_61
# %bb.60:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_61:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r2, 4(r18)
	loads.w r8, 4(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r25, r2, zero
	seteq r27, r8, zero
	seteq r10, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r27
	and r9, r25, r10
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_63
# %bb.62:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_63:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r2, 8(r18)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r16, r2, zero
	seteq r10, r8, zero
	seteq r25, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r16, r25
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r8, zero, .LBB0_65
# %bb.64:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_65:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r8, 12(r18)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r16, r9, zero
	seteq r18, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r16
	and r10, r19, r18
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r8, zero, .LBB0_58
# %bb.66:                               # %vector.body703
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_58
.LBB0_67:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r3, zero, 1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { sm }
.LBB0_68:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 31
	zext_int2long r[8:9], r4
	.loc	1 213 7 is_stmt 1               # parallel-rne.mlir:213:7
	store.d r[8:9], -464(r30)               # 8-byte Folded Spill
	bneq r2, r3, .LBB0_97
# %bb.69:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	.loc	1 213 7                         # parallel-rne.mlir:213:7
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block694
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 220 9 is_stmt 1               # parallel-rne.mlir:220:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	load.d r[8:9], -472(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_96
.LBB0_71:                               # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 221 11 is_stmt 1              # parallel-rne.mlir:221:11
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_86
# %bb.72:                               # %scalar.ph686.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r8, r22, r11
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r14, 0(r8)
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	beq r2, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph686
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	add.ul r[8:9], r[3:4], r[12:13]
	lui r14, 523264
	lui r18, 523264
	slli r11, r8, 2
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.s r2, r10, r11
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.s r8, r5, r11
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	loads.w r2, 0(r2)
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loads.w r19, 0(r8)
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	and r2, r2, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r2, r15, .LBB0_76
# %bb.75:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_76:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	add.s r8, r21, r11
	loads.w r8, 0(r8)
	and r17, r8, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r17, zero, .LBB0_84
# %bb.77:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_85
.LBB0_78:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	beq r17, r15, .LBB0_80
.LBB0_79:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_80:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.u r8, r15, r2
	lui r2, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_82
# %bb.81:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_82:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.u r8, r15, r17
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_73
# %bb.83:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_73
.LBB0_84:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	lui r19, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r2, zero, .LBB0_78
.LBB0_85:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r17, r15, .LBB0_79
	j .LBB0_80
.LBB0_86:                               # %vector.body688.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_88
.LBB0_87:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 221 11 is_stmt 1              # parallel-rne.mlir:221:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r9, r22, r14
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	seteq.d r8, r[3:4], r[6:7]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r17, 12(r9)
	stores.w r2, 8(r9)
	stores.w r27, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	bneq r8, zero, .LBB0_70
.LBB0_88:                               # %vector.body688
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r2, r10, 0
	.loc	1 222 19 is_stmt 1              # parallel-rne.mlir:222:19
	add.ul r[10:11], r[3:4], r[12:13]
	slli r14, r10, 2
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.s r19, r2, r14
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	add.s r18, r21, r14
	loads.w r2, 0(r18)
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	loads.w r10, 0(r19)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r2, r2, r26
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	and r10, r10, r26
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	seteq r11, r2, r15
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	seteq r20, r2, zero
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	seteq r16, r10, zero
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	seteq r17, r10, r15
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r10, r11, r16
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r11, r20, r17
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.s r20, r5, r14
	lui r17, 523264
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	or r2, r2, r10
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_90
# %bb.89:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_90:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r2, 4(r18)
	loads.w r10, 4(r19)
	and r2, r2, r26
	and r10, r10, r26
	seteq r16, r2, r15
	seteq r25, r10, zero
	seteq r8, r2, zero
	seteq r27, r10, r15
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_92
# %bb.91:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_92:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r2, 8(r18)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r25, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_94
# %bb.93:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_94:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r8, 12(r18)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r16, r9, zero
	seteq r18, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r16
	and r10, r19, r18
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_87
# %bb.95:                               # %vector.body688
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_87
.LBB0_96:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 213 7                         # parallel-rne.mlir:213:7
	mfence { sm }
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 47
	zext_int2long r[3:4], r3
	.loc	1 248 7 is_stmt 1               # parallel-rne.mlir:248:7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	addli r3, zero, 2
	bneq r2, r3, .LBB0_126
# %bb.98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_100
.LBB0_99:                               # %middle.block679
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[8:9], -480(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_125
.LBB0_100:                              # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -480(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_115
# %bb.101:                              # %scalar.ph671.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_103
.LBB0_102:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 278 13 is_stmt 1              # parallel-rne.mlir:278:13
	add.s r8, r22, r11
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r14, 0(r8)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r2, zero, .LBB0_99
.LBB0_103:                              # %scalar.ph671
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[8:9], r[3:4], r[12:13]
	lui r14, 523264
	lui r18, 523264
	slli r11, r8, 2
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.s r2, r10, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.s r8, r5, r11
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	loads.w r2, 0(r2)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	loads.w r19, 0(r8)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r2, r2, r26
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r2, r15, .LBB0_105
# %bb.104:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_105:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	add.s r8, r21, r11
	loads.w r8, 0(r8)
	and r17, r8, r26
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r17, zero, .LBB0_113
# %bb.106:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r2, zero, .LBB0_114
.LBB0_107:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	beq r17, r15, .LBB0_109
.LBB0_108:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_109:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r8, r15, r2
	lui r2, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_111
# %bb.110:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_111:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r8, r15, r17
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_102
# %bb.112:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_102
.LBB0_113:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	lui r19, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r2, zero, .LBB0_107
.LBB0_114:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r17, r15, .LBB0_108
	j .LBB0_109
.LBB0_115:                              # %vector.body673.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_117
.LBB0_116:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	add.s r9, r22, r14
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r8, r[3:4], r[6:7]
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r17, 12(r9)
	stores.w r2, 8(r9)
	stores.w r27, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r8, zero, .LBB0_99
.LBB0_117:                              # %vector.body673
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r2, r10, 0
	.loc	1 257 19 is_stmt 1              # parallel-rne.mlir:257:19
	add.ul r[10:11], r[3:4], r[12:13]
	slli r14, r10, 2
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.s r19, r2, r14
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.s r18, r21, r14
	loads.w r2, 0(r18)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	loads.w r10, 0(r19)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r2, r2, r26
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r10, r10, r26
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	seteq r11, r2, r15
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	seteq r20, r2, zero
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	seteq r16, r10, zero
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	seteq r17, r10, r15
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r10, r11, r16
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r11, r20, r17
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.s r20, r5, r14
	lui r17, 523264
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	or r2, r2, r10
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_119:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r2, 4(r18)
	loads.w r10, 4(r19)
	and r2, r2, r26
	and r10, r10, r26
	seteq r16, r2, r15
	seteq r25, r10, zero
	seteq r8, r2, zero
	seteq r27, r10, r15
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_121:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r2, 8(r18)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r25, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_123
# %bb.122:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_123:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r8, 12(r18)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r16, r9, zero
	seteq r18, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r16
	and r10, r19, r18
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_116
# %bb.124:                              # %vector.body673
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_116
.LBB0_125:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 63
	zext_int2long r[3:4], r3
	.loc	1 283 7 is_stmt 1               # parallel-rne.mlir:283:7
	store.d r[3:4], -480(r30)               # 8-byte Folded Spill
	addli r3, zero, 3
	bneq r2, r3, .LBB0_155
# %bb.127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_129
.LBB0_128:                              # %middle.block664
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[8:9], -488(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_154
.LBB0_129:                              # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -488(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_144
# %bb.130:                              # %scalar.ph656.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_132
.LBB0_131:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 313 13 is_stmt 1              # parallel-rne.mlir:313:13
	add.s r8, r22, r11
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r14, 0(r8)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r2, zero, .LBB0_128
.LBB0_132:                              # %scalar.ph656
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[8:9], r[3:4], r[12:13]
	lui r14, 523264
	lui r18, 523264
	slli r11, r8, 2
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.s r2, r10, r11
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.s r8, r5, r11
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	loads.w r2, 0(r2)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	loads.w r19, 0(r8)
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	and r2, r2, r26
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r2, r15, .LBB0_134
# %bb.133:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_134:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	add.s r8, r21, r11
	loads.w r8, 0(r8)
	and r17, r8, r26
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r17, zero, .LBB0_142
# %bb.135:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r2, zero, .LBB0_143
.LBB0_136:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	beq r17, r15, .LBB0_138
.LBB0_137:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_138:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r8, r15, r2
	lui r2, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r8, zero, .LBB0_140
# %bb.139:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_140:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r8, r15, r17
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r8, zero, .LBB0_131
# %bb.141:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r2, 0
	j .LBB0_131
.LBB0_142:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	lui r19, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r2, zero, .LBB0_136
.LBB0_143:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r17, r15, .LBB0_137
	j .LBB0_138
.LBB0_144:                              # %vector.body658.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_146
.LBB0_145:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	add.s r9, r22, r14
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	seteq.d r8, r[3:4], r[6:7]
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r17, 12(r9)
	stores.w r2, 8(r9)
	stores.w r27, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	bneq r8, zero, .LBB0_128
.LBB0_146:                              # %vector.body658
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r2, r10, 0
	.loc	1 292 19 is_stmt 1              # parallel-rne.mlir:292:19
	add.ul r[10:11], r[3:4], r[12:13]
	slli r14, r10, 2
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.s r19, r2, r14
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.s r18, r21, r14
	loads.w r2, 0(r18)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	loads.w r10, 0(r19)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	and r2, r2, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	and r10, r10, r26
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	seteq r11, r2, r15
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	seteq r20, r2, zero
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	seteq r16, r10, zero
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	seteq r17, r10, r15
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r10, r11, r16
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r11, r20, r17
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.s r20, r5, r14
	lui r17, 523264
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	or r2, r2, r10
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r2, zero, .LBB0_148
# %bb.147:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_148:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r2, 4(r18)
	loads.w r10, 4(r19)
	and r2, r2, r26
	and r10, r10, r26
	seteq r16, r2, r15
	seteq r25, r10, zero
	seteq r8, r2, zero
	seteq r27, r10, r15
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r2, zero, .LBB0_150
# %bb.149:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_150:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r2, 8(r18)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r25, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r8, zero, .LBB0_152
# %bb.151:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_152:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r8, 12(r18)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r16, r9, zero
	seteq r18, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r16
	and r10, r19, r18
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r8, zero, .LBB0_145
# %bb.153:                              # %vector.body658
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_145
.LBB0_154:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	mfence { sm }
.LBB0_155:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 79
	zext_int2long r[3:4], r3
	.loc	1 318 7 is_stmt 1               # parallel-rne.mlir:318:7
	store.d r[3:4], -488(r30)               # 8-byte Folded Spill
	addli r3, zero, 4
	bneq r2, r3, .LBB0_184
# %bb.156:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_158
.LBB0_157:                              # %middle.block649
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 325 9 is_stmt 1               # parallel-rne.mlir:325:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[8:9], -496(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_183
.LBB0_158:                              # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -496(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	loadli.w r2,  -504(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_173
# %bb.159:                              # %scalar.ph641.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_161
.LBB0_160:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 348 13 is_stmt 1              # parallel-rne.mlir:348:13
	add.s r8, r22, r11
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r12, 0(r8)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	beq r2, zero, .LBB0_157
.LBB0_161:                              # %scalar.ph641
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[8:9], r[3:4], r[17:18]
	lui r12, 523264
	lui r14, 523264
	slli r11, r8, 2
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	add.s r2, r10, r11
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.s r8, r5, r11
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	loads.w r2, 0(r2)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	loads.w r19, 0(r8)
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	and r2, r2, r26
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r2, r15, .LBB0_163
# %bb.162:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r19, 0
.LBB0_163:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	add.s r8, r21, r11
	loads.w r8, 0(r8)
	and r13, r8, r26
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r13, zero, .LBB0_171
# %bb.164:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	lui r19, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_172
.LBB0_165:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	beq r13, r15, .LBB0_167
.LBB0_166:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
.LBB0_167:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r8, r15, r2
	lui r2, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_169
# %bb.168:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_169:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r8, r15, r13
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_160
# %bb.170:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_160
.LBB0_171:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	lui r19, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r2, zero, .LBB0_165
.LBB0_172:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r13, r15, .LBB0_166
	j .LBB0_167
.LBB0_173:                              # %vector.body643.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_175
.LBB0_174:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r9, r22, r12
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	seteq.d r8, r[3:4], r[6:7]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r13, 12(r9)
	stores.w r2, 8(r9)
	stores.w r27, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	bneq r8, zero, .LBB0_157
.LBB0_175:                              # %vector.body643
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r2, r10, 0
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	add.ul r[10:11], r[3:4], r[17:18]
	slli r12, r10, 2
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	add.s r19, r2, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.s r14, r21, r12
	loads.w r2, 0(r14)
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	loads.w r10, 0(r19)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r2, r2, r26
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	and r10, r10, r26
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	seteq r11, r2, r15
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	seteq r20, r2, zero
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	seteq r13, r10, zero
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	seteq r16, r10, r15
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	and r10, r11, r13
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r11, r20, r16
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.s r20, r5, r12
	lui r13, 523264
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	or r2, r2, r10
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_177
# %bb.176:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_177:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r2, 4(r14)
	loads.w r10, 4(r19)
	and r2, r2, r26
	and r10, r10, r26
	seteq r16, r2, r15
	seteq r25, r10, zero
	seteq r8, r2, zero
	seteq r27, r10, r15
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_179:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r2, 8(r14)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r25, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_181
# %bb.180:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_181:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r8, 12(r14)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r14, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r14
	and r10, r19, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_174
# %bb.182:                              # %vector.body643
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r20)
	j .LBB0_174
.LBB0_183:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	mfence { sm }
.LBB0_184:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 95
	zext_int2long r[3:4], r3
	.loc	1 353 7 is_stmt 1               # parallel-rne.mlir:353:7
	store.d r[3:4], -496(r30)               # 8-byte Folded Spill
	addli r3, zero, 5
	bneq r2, r3, .LBB0_213
# %bb.185:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_187
.LBB0_186:                              # %middle.block634
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 360 9 is_stmt 1               # parallel-rne.mlir:360:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[8:9], -504(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_212
.LBB0_187:                              # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -504(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	.loc	1 361 11 is_stmt 1              # parallel-rne.mlir:361:11
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_202
# %bb.188:                              # %scalar.ph626.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 383 13 is_stmt 1              # parallel-rne.mlir:383:13
	add.s r8, r22, r11
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	stores.w r12, 0(r8)
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	beq r2, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph626
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	add.ul r[8:9], r[3:4], r[17:18]
	lui r12, 523264
	lui r14, 523264
	slli r11, r8, 2
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	add.s r2, r10, r11
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.s r8, r5, r11
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	loads.w r2, 0(r2)
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	loads.w r19, 0(r8)
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r2, r2, r26
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r2, r15, .LBB0_192
# %bb.191:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r19, 0
.LBB0_192:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	add.s r8, r21, r11
	loads.w r8, 0(r8)
	and r13, r8, r26
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r13, zero, .LBB0_200
# %bb.193:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	lui r19, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r2, zero, .LBB0_201
.LBB0_194:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	beq r13, r15, .LBB0_196
.LBB0_195:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
.LBB0_196:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r8, r15, r2
	lui r2, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r8, zero, .LBB0_198
# %bb.197:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_198:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r8, r15, r13
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r8, zero, .LBB0_189
# %bb.199:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_189
.LBB0_200:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	lui r19, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r2, zero, .LBB0_194
.LBB0_201:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r13, r15, .LBB0_195
	j .LBB0_196
.LBB0_202:                              # %vector.body628.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 361 11 is_stmt 1              # parallel-rne.mlir:361:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	add.s r9, r22, r12
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	seteq.d r8, r[3:4], r[6:7]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	stores.w r13, 12(r9)
	stores.w r2, 8(r9)
	stores.w r27, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	bneq r8, zero, .LBB0_186
.LBB0_204:                              # %vector.body628
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r2, r10, 0
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	add.ul r[10:11], r[3:4], r[17:18]
	slli r12, r10, 2
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	add.s r19, r2, r12
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	add.s r14, r21, r12
	loads.w r2, 0(r14)
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	loads.w r10, 0(r19)
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	and r2, r2, r26
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r10, r10, r26
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	seteq r11, r2, r15
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	seteq r20, r2, zero
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	seteq r13, r10, zero
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	seteq r16, r10, r15
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	and r10, r11, r13
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	and r11, r20, r16
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.s r20, r5, r12
	lui r13, 523264
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	or r2, r2, r10
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r2, zero, .LBB0_206
# %bb.205:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_206:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r2, 4(r14)
	loads.w r10, 4(r19)
	and r2, r2, r26
	and r10, r10, r26
	seteq r16, r2, r15
	seteq r25, r10, zero
	seteq r8, r2, zero
	seteq r27, r10, r15
	max.u r2, r2, r10
	setlt.u r2, r15, r2
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r2, zero, .LBB0_208
# %bb.207:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_208:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r2, 8(r14)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r25, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r8, zero, .LBB0_210
# %bb.209:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_210:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r8, 12(r14)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r14, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r14
	and r10, r19, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r8, zero, .LBB0_203
# %bb.211:                              # %vector.body628
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r20)
	j .LBB0_203
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	mfence { sm }
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 111
	zext_int2long r[3:4], r3
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	store.d r[3:4], -504(r30)               # 8-byte Folded Spill
	addli r3, zero, 6
	bneq r2, r3, .LBB0_242
# %bb.214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_216
.LBB0_215:                              # %middle.block619
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 395 9 is_stmt 1               # parallel-rne.mlir:395:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_241
.LBB0_216:                              # %.preheader124
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	.loc	1 396 11 is_stmt 1              # parallel-rne.mlir:396:11
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_231
# %bb.217:                              # %scalar.ph611.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_219
.LBB0_218:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 418 13 is_stmt 1              # parallel-rne.mlir:418:13
	add.s r4, r22, r4
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 418 13                        # parallel-rne.mlir:418:13
	stores.w r11, 0(r4)
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	beq r8, zero, .LBB0_215
.LBB0_219:                              # %scalar.ph611
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	add.ul r[8:9], r[2:3], r[17:18]
	lui r11, 523264
	lui r14, 523264
	slli r4, r8, 2
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	add.s r8, r10, r4
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	add.s r9, r5, r4
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	loads.w r8, 0(r8)
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	loads.w r19, 0(r9)
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r12, r8, r26
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	beq r12, r15, .LBB0_221
# %bb.220:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r19, 0
.LBB0_221:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	add.s r8, r21, r4
	loads.w r8, 0(r8)
	and r13, r8, r26
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	beq r13, zero, .LBB0_229
# %bb.222:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	lui r19, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r12, zero, .LBB0_230
.LBB0_223:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	beq r13, r15, .LBB0_225
.LBB0_224:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
.LBB0_225:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r8, r15, r12
	lui r12, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_227
# %bb.226:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
.LBB0_227:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r8, r15, r13
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_218
# %bb.228:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_218
.LBB0_229:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	lui r19, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	beq r12, zero, .LBB0_223
.LBB0_230:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r13, r15, .LBB0_224
	j .LBB0_225
.LBB0_231:                              # %vector.body613.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_233
.LBB0_232:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 396 11 is_stmt 1              # parallel-rne.mlir:396:11
	addli.d r[12:13], r[12:13], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 418 13                        # parallel-rne.mlir:418:13
	add.s r2, r22, r2
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	seteq.d r8, r[12:13], r[6:7]
	.loc	1 418 13                        # parallel-rne.mlir:418:13
	stores.w r4, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	bneq r8, zero, .LBB0_215
.LBB0_233:                              # %vector.body613
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	add.ul r[2:3], r[12:13], r[17:18]
	slli r2, r2, 2
	add.s r11, r21, r2
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	add.s r19, r10, r2
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	loads.w r3, 0(r11)
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	loads.w r4, 0(r19)
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	and r3, r3, r26
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r4, r4, r26
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	seteq r10, r3, r15
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	seteq r20, r3, zero
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	seteq r14, r4, zero
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	seteq r16, r4, r15
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	and r4, r10, r14
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r10, r20, r16
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	add.s r20, r5, r2
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	or r4, r4, r10
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r10, zero, .LBB0_235
# %bb.234:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_235:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r10, 4(r11)
	loads.w r14, 4(r19)
	and r10, r10, r26
	and r14, r14, r26
	seteq r16, r10, r15
	seteq r25, r14, zero
	seteq r27, r14, r15
	seteq r8, r10, zero
	max.u r9, r10, r14
	setlt.u r9, r15, r9
	and r8, r8, r27
	and r10, r16, r25
	lui r27, 523264
	or r8, r10, r8
	or r8, r9, r8
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_237
# %bb.236:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_237:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r8, 8(r11)
	loads.w r9, 8(r19)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r25, r8, zero
	seteq r14, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r14
	and r10, r25, r16
	lui r14, 523264
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_239
# %bb.238:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r20)
.LBB0_239:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r8, 12(r11)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r19, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r8, zero, .LBB0_232
# %bb.240:                              # %vector.body613
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r20)
	j .LBB0_232
.LBB0_241:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	mfence { sm }
.LBB0_242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 423 7                         # parallel-rne.mlir:423:7
	addli r3, zero, 7
	bneq r2, r3, .LBB0_271
# %bb.243:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 423 7                         # parallel-rne.mlir:423:7
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_245
.LBB0_244:                              # %middle.block604
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -520(r30)                # 8-byte Folded Reload
	.loc	1 430 9 is_stmt 1               # parallel-rne.mlir:430:9
	setlt.ul r2, r[3:4], r[23:24]
	addli.d r[3:4], r[3:4], 1
	beq r2, zero, .LBB0_270
.LBB0_245:                              # %.preheader123
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	.loc	1 431 11 is_stmt 1              # parallel-rne.mlir:431:11
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_260
# %bb.246:                              # %scalar.ph596.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_248
.LBB0_247:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 453 13 is_stmt 1              # parallel-rne.mlir:453:13
	add.s r4, r22, r4
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	stores.w r11, 0(r4)
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	beq r8, zero, .LBB0_244
.LBB0_248:                              # %scalar.ph596
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	add.ul r[8:9], r[2:3], r[17:18]
	lui r11, 523264
	lui r14, 523264
	slli r4, r8, 2
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	add.s r8, r10, r4
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	add.s r9, r5, r4
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	loads.w r8, 0(r8)
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	loads.w r19, 0(r9)
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r12, r8, r26
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r12, r15, .LBB0_250
# %bb.249:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r19, 0
.LBB0_250:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	add.s r8, r21, r4
	loads.w r8, 0(r8)
	and r13, r8, r26
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r13, zero, .LBB0_258
# %bb.251:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	lui r19, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r12, zero, .LBB0_259
.LBB0_252:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	beq r13, r15, .LBB0_254
.LBB0_253:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
.LBB0_254:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r8, r15, r12
	lui r12, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r8, zero, .LBB0_256
# %bb.255:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
.LBB0_256:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r8, r15, r13
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r8, zero, .LBB0_247
# %bb.257:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_247
.LBB0_258:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	lui r19, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r12, zero, .LBB0_252
.LBB0_259:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r13, r15, .LBB0_253
	j .LBB0_254
.LBB0_260:                              # %vector.body598.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_262
.LBB0_261:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 431 11 is_stmt 1              # parallel-rne.mlir:431:11
	addli.d r[12:13], r[12:13], 4
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	add.s r2, r22, r2
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	seteq.d r8, r[12:13], r[6:7]
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	stores.w r4, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	bneq r8, zero, .LBB0_244
.LBB0_262:                              # %vector.body598
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	add.ul r[2:3], r[12:13], r[17:18]
	slli r2, r2, 2
	add.s r11, r21, r2
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	add.s r19, r10, r2
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	loads.w r3, 0(r11)
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	loads.w r4, 0(r19)
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	and r3, r3, r26
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r4, r4, r26
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	seteq r10, r3, r15
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	seteq r20, r3, zero
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	seteq r14, r4, zero
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	seteq r16, r4, r15
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	and r4, r10, r14
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r10, r20, r16
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	add.s r20, r5, r2
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	or r4, r4, r10
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r10, zero, .LBB0_264
# %bb.263:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_264:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r10, 4(r11)
	loads.w r14, 4(r19)
	and r10, r10, r26
	and r14, r14, r26
	seteq r16, r10, r15
	seteq r25, r14, zero
	seteq r27, r14, r15
	seteq r8, r10, zero
	max.u r9, r10, r14
	setlt.u r9, r15, r9
	and r8, r8, r27
	and r10, r16, r25
	lui r27, 523264
	or r8, r10, r8
	or r8, r9, r8
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r8, zero, .LBB0_266
# %bb.265:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_266:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r8, 8(r11)
	loads.w r9, 8(r19)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r25, r8, zero
	seteq r14, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r14
	and r10, r25, r16
	lui r14, 523264
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r8, zero, .LBB0_268
# %bb.267:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r20)
.LBB0_268:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r8, 12(r11)
	loads.w r9, 12(r19)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r19, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r19, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r8, zero, .LBB0_261
# %bb.269:                              # %vector.body598
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r20)
	j .LBB0_261
.LBB0_270:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 423 7 is_stmt 1               # parallel-rne.mlir:423:7
	mfence { sm }
.LBB0_271:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r2, zero, 255
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	addli r3, zero, 3
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	sync_core
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	bneq r2, r3, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	addli r4, zero, 2
	xsignal r2, 0
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	loadli.w r2,  -36(r30)
	mod.s r3, r2, r4
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	loadli.w r2,  -636(r30)                 # 4-byte Folded Reload
	slli r3, r3, 16
	add.s r21, r3, r2
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r2, zero, 31
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	xwait r2, 0
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r2, zero, 35
	xwait r2, 0
	j .LBB0_275
.LBB0_273:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	loadli.w r2,  -36(r30)
	addli r4, zero, 2
	loadli.w r5,  -636(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r4
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	addli r2, zero, 5
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	slli r3, r3, 16
	add.s r21, r3, r5
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	bneq r3, r2, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	lui r5, 260096
	addli r8, zero, 4095
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -652(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, r2, zero, 0
	addli r2, zero, 4
	addli r5, zero, 13
	ew_cfg zero, r8, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd r21, r10, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r5, 0
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	loadli.w r5,  -656(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, zero, zero, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	addli r2, zero, 31
	hp_ssmul r21, r21, r21, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
.LBB0_275:                              # %.critedge12
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	.loc	1 471 7 is_stmt 1               # parallel-rne.mlir:471:7
	xfence
	mod.s r2, r2, r4
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	mfence { lm, sm, gm }
	slli r2, r2, 16
	add.s r5, r2, r4
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r5, r21
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	beq r3, zero, .LBB0_298
# %bb.276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	addli r2, zero, 1
	bneq r3, r2, .LBB0_304
.LBB0_277:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 16
	zext_int2long r[3:4], r3
	j .LBB0_279
.LBB0_278:                              # %middle.block579
                                        #   in Loop: Header=BB0_279 Depth=2
	.loc	1 497 9 is_stmt 1               # parallel-rne.mlir:497:9
	load.d r[8:9], -464(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_282
.LBB0_279:                              # %.preheader121
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_280 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 498 11 is_stmt 1              # parallel-rne.mlir:498:11
	beq r2, zero, .LBB0_281
.LBB0_280:                              # %scalar.ph572
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.s r13, r21, r10
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	add.s r10, r5, r10
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	loads.w r13, 0(r13)
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	stores.w r13, 0(r10)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	bneq r14, zero, .LBB0_280
	j .LBB0_278
.LBB0_281:                              # %vector.body574
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	slli r10, r13, 2
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.s r14, r21, r10
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	add.s r10, r5, r10
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	beq r13, zero, .LBB0_281
	j .LBB0_278
.LBB0_282:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	addli r2, zero, 2
	beq r3, r2, .LBB0_305
.LBB0_283:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	addli r2, zero, 3
	bneq r3, r2, .LBB0_311
.LBB0_284:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 48
	zext_int2long r[3:4], r3
	j .LBB0_286
.LBB0_285:                              # %middle.block559
                                        #   in Loop: Header=BB0_286 Depth=2
	.loc	1 529 9 is_stmt 1               # parallel-rne.mlir:529:9
	load.d r[8:9], -480(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_289
.LBB0_286:                              # %.preheader119
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_288 Depth 3
                                        #       Child Loop BB0_287 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 530 11 is_stmt 1              # parallel-rne.mlir:530:11
	beq r2, zero, .LBB0_288
.LBB0_287:                              # %scalar.ph552
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.s r13, r21, r10
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	add.s r10, r5, r10
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	loads.w r13, 0(r13)
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r13, 0(r10)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	bneq r14, zero, .LBB0_287
	j .LBB0_285
.LBB0_288:                              # %vector.body554
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	slli r10, r13, 2
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.s r14, r21, r10
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	add.s r10, r5, r10
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	beq r13, zero, .LBB0_288
	j .LBB0_285
.LBB0_289:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	addli r2, zero, 4
	beq r3, r2, .LBB0_312
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 5
	bneq r3, r2, .LBB0_318
.LBB0_291:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 80
	zext_int2long r[3:4], r3
	j .LBB0_293
.LBB0_292:                              # %middle.block539
                                        #   in Loop: Header=BB0_293 Depth=2
	.loc	1 561 9 is_stmt 1               # parallel-rne.mlir:561:9
	load.d r[8:9], -496(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_296
.LBB0_293:                              # %.preheader117
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_294 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 562 11 is_stmt 1              # parallel-rne.mlir:562:11
	beq r2, zero, .LBB0_295
.LBB0_294:                              # %scalar.ph532
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_293 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.s r13, r21, r10
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	add.s r10, r5, r10
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	loads.w r13, 0(r13)
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	stores.w r13, 0(r10)
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	bneq r14, zero, .LBB0_294
	j .LBB0_292
.LBB0_295:                              # %vector.body534
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_293 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	slli r10, r13, 2
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.s r14, r21, r10
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	add.s r10, r5, r10
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	beq r13, zero, .LBB0_295
	j .LBB0_292
.LBB0_296:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	addli r2, zero, 6
	beq r3, r2, .LBB0_319
.LBB0_297:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	addli r2, zero, 7
	beq r3, r2, .LBB0_325
	j .LBB0_331
.LBB0_298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 474 7 is_stmt 1               # parallel-rne.mlir:474:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	zext_int2long r[3:4], zero
	j .LBB0_300
.LBB0_299:                              # %middle.block589
                                        #   in Loop: Header=BB0_300 Depth=2
	.loc	1 481 9                         # parallel-rne.mlir:481:9
	load.d r[8:9], -512(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_303
.LBB0_300:                              # %.preheader122
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_301 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 482 11 is_stmt 1              # parallel-rne.mlir:482:11
	beq r2, zero, .LBB0_302
.LBB0_301:                              # %scalar.ph582
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_300 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.s r13, r21, r10
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r10, r5, r10
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	loads.w r13, 0(r13)
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	stores.w r13, 0(r10)
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	bneq r14, zero, .LBB0_301
	j .LBB0_299
.LBB0_302:                              # %vector.body584
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_300 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.ul r[16:17], r[11:12], r[8:9]
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	slli r10, r16, 2
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.s r16, r21, r10
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r10, r5, r10
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r25, 28(r16)
	loads.w r27, 24(r16)
	loads.w r14, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	stores.w r17, 12(r10)
	stores.w r18, 8(r10)
	stores.w r19, 4(r10)
	stores.w r20, 0(r10)
	stores.w r25, 28(r10)
	stores.w r27, 24(r10)
	stores.w r14, 20(r10)
	stores.w r16, 16(r10)
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	beq r13, zero, .LBB0_302
	j .LBB0_299
.LBB0_303:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	addli r2, zero, 1
	beq r3, r2, .LBB0_277
.LBB0_304:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	addli r2, zero, 2
	bneq r3, r2, .LBB0_283
.LBB0_305:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	j .LBB0_307
.LBB0_306:                              # %middle.block569
                                        #   in Loop: Header=BB0_307 Depth=2
	.loc	1 513 9 is_stmt 1               # parallel-rne.mlir:513:9
	load.d r[8:9], -472(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_310
.LBB0_307:                              # %.preheader120
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 514 11 is_stmt 1              # parallel-rne.mlir:514:11
	beq r2, zero, .LBB0_309
.LBB0_308:                              # %scalar.ph562
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.s r13, r21, r10
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	add.s r10, r5, r10
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	loads.w r13, 0(r13)
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r13, 0(r10)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	bneq r14, zero, .LBB0_308
	j .LBB0_306
.LBB0_309:                              # %vector.body564
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	slli r10, r13, 2
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.s r14, r21, r10
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	add.s r10, r5, r10
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	beq r13, zero, .LBB0_309
	j .LBB0_306
.LBB0_310:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	addli r2, zero, 3
	beq r3, r2, .LBB0_284
.LBB0_311:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	addli r2, zero, 4
	bneq r3, r2, .LBB0_290
.LBB0_312:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 64
	zext_int2long r[3:4], r3
	j .LBB0_314
.LBB0_313:                              # %middle.block549
                                        #   in Loop: Header=BB0_314 Depth=2
	.loc	1 545 9 is_stmt 1               # parallel-rne.mlir:545:9
	load.d r[8:9], -488(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_317
.LBB0_314:                              # %.preheader118
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_316 Depth 3
                                        #       Child Loop BB0_315 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 546 11 is_stmt 1              # parallel-rne.mlir:546:11
	beq r2, zero, .LBB0_316
.LBB0_315:                              # %scalar.ph542
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.s r13, r21, r10
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r10, r5, r10
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r13, 0(r13)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r13, 0(r10)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	bneq r14, zero, .LBB0_315
	j .LBB0_313
.LBB0_316:                              # %vector.body544
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r10, r13, 2
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.s r14, r21, r10
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r10, r5, r10
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	beq r13, zero, .LBB0_316
	j .LBB0_313
.LBB0_317:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 5
	beq r3, r2, .LBB0_291
.LBB0_318:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	addli r2, zero, 6
	bneq r3, r2, .LBB0_297
.LBB0_319:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 96
	zext_int2long r[3:4], r3
	j .LBB0_321
.LBB0_320:                              # %middle.block529
                                        #   in Loop: Header=BB0_321 Depth=2
	.loc	1 577 9 is_stmt 1               # parallel-rne.mlir:577:9
	load.d r[8:9], -504(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_324
.LBB0_321:                              # %.preheader116
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_322 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	beq r2, zero, .LBB0_323
.LBB0_322:                              # %scalar.ph522
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.s r13, r21, r10
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	add.s r10, r5, r10
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	loads.w r13, 0(r13)
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	stores.w r13, 0(r10)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	bneq r14, zero, .LBB0_322
	j .LBB0_320
.LBB0_323:                              # %vector.body524
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	slli r10, r13, 2
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.s r14, r21, r10
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	add.s r10, r5, r10
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	beq r13, zero, .LBB0_323
	j .LBB0_320
.LBB0_324:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	addli r2, zero, 7
	bneq r3, r2, .LBB0_331
.LBB0_325:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 112
	zext_int2long r[3:4], r3
	j .LBB0_327
.LBB0_326:                              # %middle.block519
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 593 9 is_stmt 1               # parallel-rne.mlir:593:9
	setlt.ul r8, r[3:4], r[23:24]
	addli.d r[3:4], r[3:4], 1
	beq r8, zero, .LBB0_330
.LBB0_327:                              # %.preheader115
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_329 Depth 3
                                        #       Child Loop BB0_328 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[11:12], zero
	sll.d r[8:9], r[3:4], r8
	.loc	1 594 11 is_stmt 1              # parallel-rne.mlir:594:11
	beq r2, zero, .LBB0_329
.LBB0_328:                              # %scalar.ph512
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[13:14], r[11:12], r[8:9]
	slli r10, r13, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	setlt.ul r14, r[11:12], r[23:24]
	addli.d r[11:12], r[11:12], 1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r13, r21, r10
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r10, r5, r10
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r13, 0(r13)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r13, 0(r10)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	bneq r14, zero, .LBB0_328
	j .LBB0_326
.LBB0_329:                              # %vector.body514
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[13:14], r[11:12], r[8:9]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r10, r13, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	seteq.d r13, r[11:12], r[6:7]
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r14, r21, r10
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r10, r5, r10
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r16, 12(r14)
	loads.w r17, 8(r14)
	loads.w r18, 4(r14)
	loads.w r19, 0(r14)
	loads.w r20, 28(r14)
	loads.w r25, 24(r14)
	loads.w r27, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r16, 12(r10)
	stores.w r17, 8(r10)
	stores.w r18, 4(r10)
	stores.w r19, 0(r10)
	stores.w r20, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r14, 16(r10)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	beq r13, zero, .LBB0_329
	j .LBB0_326
.LBB0_330:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	lui r25, 524288
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
.LBB0_331:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	addli r2, zero, 3
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	sync_core
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	bneq r3, r2, .LBB0_333
# %bb.332:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 32
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r4, zero, 13
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	xsignal r2, 0
	addli r2, zero, 33
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	xsignal r2, 0
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	xwait r4, 0
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	xwait r2, 0
.LBB0_333:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	xfence
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	addli r2, zero, 255
	addli r4, zero, 6
	addli r8, zero, 64
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	mfence { lm, sm, gm }
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	csr_set csr5, r2
	sync_core
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	beq r3, zero, .LBB0_401
# %bb.334:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r2, zero, 1
	bneq r3, r2, .LBB0_422
.LBB0_335:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_337
.LBB0_336:                              # %middle.block499
                                        #   in Loop: Header=BB0_337 Depth=2
	.loc	1 640 9 is_stmt 1               # parallel-rne.mlir:640:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_355
.LBB0_337:                              # %.preheader113
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_339 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_339
.LBB0_338:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	.loc	1 641 11 is_stmt 1              # parallel-rne.mlir:641:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 649 13                        # parallel-rne.mlir:649:13
	add.s r10, r22, r27
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 649 13                        # parallel-rne.mlir:649:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	beq r16, zero, .LBB0_336
.LBB0_339:                              # %vector.body494
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_337 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	and r10, r2, r26
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_341:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_343
# %bb.342:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_343:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_345
# %bb.344:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_345:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_347:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_349:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_351:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_353:                              # %vector.body494
                                        #   in Loop: Header=BB0_339 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r10, zero, .LBB0_338
# %bb.354:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_338
.LBB0_355:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 633 7 is_stmt 1               # parallel-rne.mlir:633:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	addli r4, zero, 6
	addli r8, zero, 64
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	addli r2, zero, 2
	beq r3, r2, .LBB0_423
.LBB0_356:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 675 7                         # parallel-rne.mlir:675:7
	addli r2, zero, 3
	bneq r3, r2, .LBB0_444
.LBB0_357:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 675 7                         # parallel-rne.mlir:675:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_359
.LBB0_358:                              # %middle.block479
                                        #   in Loop: Header=BB0_359 Depth=2
	.loc	1 682 9 is_stmt 1               # parallel-rne.mlir:682:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_377
.LBB0_359:                              # %.preheader111
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_361 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_361
.LBB0_360:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	.loc	1 683 11 is_stmt 1              # parallel-rne.mlir:683:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 691 13                        # parallel-rne.mlir:691:13
	add.s r10, r22, r27
	.loc	1 683 11                        # parallel-rne.mlir:683:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 691 13                        # parallel-rne.mlir:691:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 683 11                        # parallel-rne.mlir:683:11
	beq r16, zero, .LBB0_358
.LBB0_361:                              # %vector.body474
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_359 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	and r10, r2, r26
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_363:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_365:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_367:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_369
# %bb.368:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_369:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_371:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_373:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_375:                              # %vector.body474
                                        #   in Loop: Header=BB0_361 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r10, zero, .LBB0_360
# %bb.376:                              #   in Loop: Header=BB0_361 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_360
.LBB0_377:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 675 7 is_stmt 1               # parallel-rne.mlir:675:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	addli r4, zero, 6
	addli r8, zero, 64
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	addli r2, zero, 4
	beq r3, r2, .LBB0_445
.LBB0_378:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r2, zero, 5
	bneq r3, r2, .LBB0_466
.LBB0_379:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_381
.LBB0_380:                              # %middle.block459
                                        #   in Loop: Header=BB0_381 Depth=2
	.loc	1 724 9 is_stmt 1               # parallel-rne.mlir:724:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_399
.LBB0_381:                              # %.preheader109
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_383 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_383
.LBB0_382:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	.loc	1 725 11 is_stmt 1              # parallel-rne.mlir:725:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 733 13                        # parallel-rne.mlir:733:13
	add.s r10, r22, r27
	.loc	1 725 11                        # parallel-rne.mlir:725:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 733 13                        # parallel-rne.mlir:733:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 725 11                        # parallel-rne.mlir:725:11
	beq r16, zero, .LBB0_380
.LBB0_383:                              # %vector.body454
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_381 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	and r10, r2, r26
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_385:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_387:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_389:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_391:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_393:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_395
# %bb.394:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_395:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_397:                              # %vector.body454
                                        #   in Loop: Header=BB0_383 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r10, zero, .LBB0_382
# %bb.398:                              #   in Loop: Header=BB0_383 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_382
.LBB0_399:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 717 7 is_stmt 1               # parallel-rne.mlir:717:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	addli r4, zero, 6
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	beq r3, r4, .LBB0_467
.LBB0_400:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 7
	beq r3, r2, .LBB0_488
	j .LBB0_509
.LBB0_401:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 612 7 is_stmt 1               # parallel-rne.mlir:612:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -528(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_403
.LBB0_402:                              # %middle.block509
                                        #   in Loop: Header=BB0_403 Depth=2
	.loc	1 619 9                         # parallel-rne.mlir:619:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_421
.LBB0_403:                              # %.preheader114
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_405 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[8:9], -528(r30)                # 8-byte Folded Reload
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	j .LBB0_405
.LBB0_404:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	.loc	1 620 11 is_stmt 1              # parallel-rne.mlir:620:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	add.s r10, r22, r12
	.loc	1 620 11                        # parallel-rne.mlir:620:11
	setneq.d r12, r[8:9], r[6:7]
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	stores.w r20, 12(r10)
	stores.w r19, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r21, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 620 11                        # parallel-rne.mlir:620:11
	beq r12, zero, .LBB0_402
.LBB0_405:                              # %vector.body504
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_403 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 621 19                        # parallel-rne.mlir:621:19
	add.ul r[2:3], r[8:9], r[17:18]
	slli r12, r2, 2
	add.s r3, r5, r12
	loads.w r2, 0(r3)
	loads.w r20, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r21, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 624 19                        # parallel-rne.mlir:624:19
	and r10, r2, r26
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_407:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_409:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
.LBB0_411:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_413:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_415:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_417
# %bb.416:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_417:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_419:                              # %vector.body504
                                        #   in Loop: Header=BB0_405 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r10, zero, .LBB0_404
# %bb.420:                              #   in Loop: Header=BB0_405 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
	j .LBB0_404
.LBB0_421:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 612 7 is_stmt 1               # parallel-rne.mlir:612:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	addli r4, zero, 6
	addli r8, zero, 64
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r2, zero, 1
	beq r3, r2, .LBB0_335
.LBB0_422:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	addli r2, zero, 2
	bneq r3, r2, .LBB0_356
.LBB0_423:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_425
.LBB0_424:                              # %middle.block489
                                        #   in Loop: Header=BB0_425 Depth=2
	.loc	1 661 9 is_stmt 1               # parallel-rne.mlir:661:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_443
.LBB0_425:                              # %.preheader112
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_427 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_427
.LBB0_426:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	.loc	1 662 11 is_stmt 1              # parallel-rne.mlir:662:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 670 13                        # parallel-rne.mlir:670:13
	add.s r10, r22, r27
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 670 13                        # parallel-rne.mlir:670:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	beq r16, zero, .LBB0_424
.LBB0_427:                              # %vector.body484
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_425 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	and r10, r2, r26
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_429:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_431:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_433:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_435:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_437:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_439:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_441
# %bb.440:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_441:                              # %vector.body484
                                        #   in Loop: Header=BB0_427 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r10, zero, .LBB0_426
# %bb.442:                              #   in Loop: Header=BB0_427 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_426
.LBB0_443:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	addli r4, zero, 6
	addli r8, zero, 64
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 675 7                         # parallel-rne.mlir:675:7
	addli r2, zero, 3
	beq r3, r2, .LBB0_357
.LBB0_444:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	addli r2, zero, 4
	bneq r3, r2, .LBB0_378
.LBB0_445:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[8:9], r8
	mfence { lm, sm, gm }
	j .LBB0_447
.LBB0_446:                              # %middle.block469
                                        #   in Loop: Header=BB0_447 Depth=2
	.loc	1 703 9                         # parallel-rne.mlir:703:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_465
.LBB0_447:                              # %.preheader110
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_449 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_449
.LBB0_448:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 704 11 is_stmt 1              # parallel-rne.mlir:704:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	add.s r10, r22, r27
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	beq r16, zero, .LBB0_446
.LBB0_449:                              # %vector.body464
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_447 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	and r10, r2, r26
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_451:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_453:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_455:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_457:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_459:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_461:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_463:                              # %vector.body464
                                        #   in Loop: Header=BB0_449 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r10, zero, .LBB0_448
# %bb.464:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_448
.LBB0_465:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 696 7 is_stmt 1               # parallel-rne.mlir:696:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	addli r4, zero, 6
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r2, zero, 5
	beq r3, r2, .LBB0_379
.LBB0_466:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	bneq r3, r4, .LBB0_400
.LBB0_467:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_469
.LBB0_468:                              # %middle.block449
                                        #   in Loop: Header=BB0_469 Depth=2
	.loc	1 745 9 is_stmt 1               # parallel-rne.mlir:745:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_487
.LBB0_469:                              # %.preheader108
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_471 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_471
.LBB0_470:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	.loc	1 746 11 is_stmt 1              # parallel-rne.mlir:746:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	add.s r10, r22, r27
	.loc	1 746 11                        # parallel-rne.mlir:746:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 746 11                        # parallel-rne.mlir:746:11
	beq r16, zero, .LBB0_468
.LBB0_471:                              # %vector.body444
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_469 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	and r10, r2, r26
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_473:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_475
# %bb.474:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_475:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_477:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_479:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_481:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_483:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_485
# %bb.484:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_485:                              # %vector.body444
                                        #   in Loop: Header=BB0_471 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r10, zero, .LBB0_470
# %bb.486:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_470
.LBB0_487:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 738 7 is_stmt 1               # parallel-rne.mlir:738:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 7
	bneq r3, r2, .LBB0_509
.LBB0_488:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_490
.LBB0_489:                              # %middle.block439
                                        #   in Loop: Header=BB0_490 Depth=2
	.loc	1 766 9 is_stmt 1               # parallel-rne.mlir:766:9
	setlt.ul r2, r[8:9], r[23:24]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_508
.LBB0_490:                              # %.preheader107
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_492 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_492
.LBB0_491:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 767 11 is_stmt 1              # parallel-rne.mlir:767:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 775 13                        # parallel-rne.mlir:775:13
	add.s r10, r22, r27
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	setneq.d r16, r[17:18], r[6:7]
	.loc	1 775 13                        # parallel-rne.mlir:775:13
	stores.w r21, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r4, 20(r10)
	stores.w r3, 16(r10)
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	beq r16, zero, .LBB0_489
.LBB0_492:                              # %vector.body434
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_490 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.ul r[2:3], r[17:18], r[12:13]
	slli r27, r2, 2
	add.s r3, r5, r27
	loads.w r2, 0(r3)
	loads.w r21, 12(r3)
	loads.w r20, 8(r3)
	loads.w r11, 4(r3)
	loads.w r19, 28(r3)
	loads.w r14, 24(r3)
	loads.w r4, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	and r10, r2, r26
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r28
.LBB0_494:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r11, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r28
.LBB0_496:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r20, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r28
.LBB0_498:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r21, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r21, r25
	or r21, r10, r28
.LBB0_500:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r3, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r25
	or r3, r3, r28
.LBB0_502:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r4, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_504
# %bb.503:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r28
.LBB0_504:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r14, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_506
# %bb.505:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r28
.LBB0_506:                              # %vector.body434
                                        #   in Loop: Header=BB0_492 Depth=3
	and r10, r19, r26
	setlt.u r10, r28, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r10, zero, .LBB0_491
# %bb.507:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r28
	j .LBB0_491
.LBB0_508:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 759 7 is_stmt 1               # parallel-rne.mlir:759:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
.LBB0_509:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 780 7                         # parallel-rne.mlir:780:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r2, zero, 3
	.loc	1 780 7                         # parallel-rne.mlir:780:7
	sync_core
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	bneq r3, r2, .LBB0_511
# %bb.510:                              # %.critedge20
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	addli r4, zero, 34
	lui r25, 1024
	xsignal r2, 0
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	xsignal r4, 0
	.loc	1 785 13                        # parallel-rne.mlir:785:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
	.loc	1 787 7                         # parallel-rne.mlir:787:7
	addli r3, zero, 15
	xwait r3, 0
	.loc	1 789 7                         # parallel-rne.mlir:789:7
	addli r3, zero, 38
	.loc	1 788 7                         # parallel-rne.mlir:788:7
	xwait r4, 0
	.loc	1 789 7                         # parallel-rne.mlir:789:7
	xwait r3, 0
	j .LBB0_514
.LBB0_511:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r2, zero, 5
	lui r25, 1024
	bneq r3, r2, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	addli r3, zero, 4095
	addli r4, zero, 3
	addli r8, zero, 1
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r3, zero, 2
	addli r3, zero, 4
	ew_cfg r3, zero, zero, 3
	ew_cfg r3, r3, zero, 19
	ew_cfg r4, zero, zero, 10
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	ew_cfg r2, r8, r4, 11
	lui r4, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r3, r4, 14
	ew_cfg zero, zero, zero, 15
	sslut r22, r22, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 15
	xsignal r2, 0
.LBB0_513:                              # %.thread86
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 785 13                        # parallel-rne.mlir:785:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
.LBB0_514:                              # %.critedge21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 2
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	xfence
	.loc	1 792 7                         # parallel-rne.mlir:792:7
	mfence { lm, sm, gm }
	.loc	1 785 13                        # parallel-rne.mlir:785:13
	mod.s r2, r2, r3
	loadli.w r3,  -640(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r21, r2, r3
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	sync_core
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	beq r2, zero, .LBB0_627
# %bb.515:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_663
.LBB0_516:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_518
.LBB0_517:                              # %middle.block415
                                        #   in Loop: Header=BB0_518 Depth=2
	.loc	1 826 9 is_stmt 1               # parallel-rne.mlir:826:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_551
.LBB0_518:                              # %.preheader105
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_528 Depth 3
                                        #       Child Loop BB0_522 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 827 11 is_stmt 1              # parallel-rne.mlir:827:11
	bneq r21, r5, .LBB0_525
# %bb.519:                              # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_518 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_522
.LBB0_520:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_522 Depth=3
	addli r11, r12, 0
.LBB0_521:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_522 Depth=3
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 839 13 is_stmt 1              # parallel-rne.mlir:839:13
	add.s r4, r21, r4
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r11, 0(r4)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	beq r10, zero, .LBB0_517
.LBB0_522:                              # %scalar.ph406
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_518 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r10, r13, r1
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r10, zero, .LBB0_524
# %bb.523:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_522 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r10, r15, .LBB0_521
	j .LBB0_520
.LBB0_524:                              #   in Loop: Header=BB0_522 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r10, r15, .LBB0_521
	j .LBB0_520
.LBB0_525:                              # %vector.body408.preheader
                                        #   in Loop: Header=BB0_518 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_528
.LBB0_526:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r19, 28(r20)
.LBB0_527:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 839 13 is_stmt 1              # parallel-rne.mlir:839:13
	add.s r10, r21, r14
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r11, 12(r10)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	bneq r11, zero, .LBB0_517
.LBB0_528:                              # %vector.body408
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_518 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.s r20, r22, r14
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	loads.w r2, 0(r19)
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r3, r2, r15
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r4, r2, r1
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	seteq r3, r3, r15
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	setneq r4, r4, zero
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_530
# %bb.529:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_531
.LBB0_530:                              #   in Loop: Header=BB0_528 Depth=3
	or r4, r2, r25
.LBB0_531:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_533
# %bb.532:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_534
.LBB0_533:                              #   in Loop: Header=BB0_528 Depth=3
	or r2, r2, r25
.LBB0_534:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r10, zero, .LBB0_536
# %bb.535:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_537
.LBB0_536:                              #   in Loop: Header=BB0_528 Depth=3
	or r3, r3, r25
.LBB0_537:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r10, zero, .LBB0_539
# %bb.538:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_540
.LBB0_539:                              #   in Loop: Header=BB0_528 Depth=3
	or r11, r11, r25
.LBB0_540:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r10, zero, .LBB0_542
# %bb.541:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_543
.LBB0_542:                              #   in Loop: Header=BB0_528 Depth=3
	or r27, r17, r25
.LBB0_543:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r10, zero, .LBB0_545
# %bb.544:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_546
.LBB0_545:                              #   in Loop: Header=BB0_528 Depth=3
	or r17, r17, r25
.LBB0_546:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r10, zero, .LBB0_548
# %bb.547:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_528 Depth=3
	or r18, r18, r25
.LBB0_549:                              # %vector.body408
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r10, zero, .LBB0_526
# %bb.550:                              #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	j .LBB0_527
.LBB0_551:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 819 7 is_stmt 1               # parallel-rne.mlir:819:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	addli r3, zero, 2
	beq r2, r3, .LBB0_664
.LBB0_552:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	addli r3, zero, 3
	bneq r2, r3, .LBB0_700
.LBB0_553:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_555
.LBB0_554:                              # %middle.block387
                                        #   in Loop: Header=BB0_555 Depth=2
	.loc	1 876 9 is_stmt 1               # parallel-rne.mlir:876:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_588
.LBB0_555:                              # %.preheader103
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_559 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 877 11 is_stmt 1              # parallel-rne.mlir:877:11
	bneq r21, r5, .LBB0_562
# %bb.556:                              # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_555 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_559
.LBB0_557:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_559 Depth=3
	addli r11, r12, 0
.LBB0_558:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 889 13 is_stmt 1              # parallel-rne.mlir:889:13
	add.s r4, r21, r4
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 889 13                        # parallel-rne.mlir:889:13
	stores.w r11, 0(r4)
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	beq r10, zero, .LBB0_554
.LBB0_559:                              # %scalar.ph378
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_555 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	and r10, r13, r1
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r10, zero, .LBB0_561
# %bb.560:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	beq r10, r15, .LBB0_558
	j .LBB0_557
.LBB0_561:                              #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	beq r10, r15, .LBB0_558
	j .LBB0_557
.LBB0_562:                              # %vector.body380.preheader
                                        #   in Loop: Header=BB0_555 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_565
.LBB0_563:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r19, 28(r20)
.LBB0_564:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 889 13 is_stmt 1              # parallel-rne.mlir:889:13
	add.s r10, r21, r14
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 889 13                        # parallel-rne.mlir:889:13
	stores.w r11, 12(r10)
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 889 13                        # parallel-rne.mlir:889:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	bneq r11, zero, .LBB0_554
.LBB0_565:                              # %vector.body380
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_555 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	add.s r20, r22, r14
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	loads.w r2, 0(r19)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	and r3, r2, r15
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	and r4, r2, r1
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	seteq r3, r3, r15
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	setneq r4, r4, zero
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_567
# %bb.566:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_565 Depth=3
	or r4, r2, r25
.LBB0_568:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_570
# %bb.569:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_571
.LBB0_570:                              #   in Loop: Header=BB0_565 Depth=3
	or r2, r2, r25
.LBB0_571:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r10, zero, .LBB0_573
# %bb.572:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_574
.LBB0_573:                              #   in Loop: Header=BB0_565 Depth=3
	or r3, r3, r25
.LBB0_574:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r10, zero, .LBB0_576
# %bb.575:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_577
.LBB0_576:                              #   in Loop: Header=BB0_565 Depth=3
	or r11, r11, r25
.LBB0_577:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r10, zero, .LBB0_579
# %bb.578:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_580
.LBB0_579:                              #   in Loop: Header=BB0_565 Depth=3
	or r27, r17, r25
.LBB0_580:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r10, zero, .LBB0_582
# %bb.581:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_583
.LBB0_582:                              #   in Loop: Header=BB0_565 Depth=3
	or r17, r17, r25
.LBB0_583:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r10, zero, .LBB0_585
# %bb.584:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_586
.LBB0_585:                              #   in Loop: Header=BB0_565 Depth=3
	or r18, r18, r25
.LBB0_586:                              # %vector.body380
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	beq r10, zero, .LBB0_563
# %bb.587:                              #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	j .LBB0_564
.LBB0_588:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 869 7 is_stmt 1               # parallel-rne.mlir:869:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 894 7                         # parallel-rne.mlir:894:7
	addli r3, zero, 4
	beq r2, r3, .LBB0_701
.LBB0_589:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_737
.LBB0_590:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_592
.LBB0_591:                              # %middle.block359
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 926 9 is_stmt 1               # parallel-rne.mlir:926:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_625
.LBB0_592:                              # %.preheader101
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_602 Depth 3
                                        #       Child Loop BB0_596 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 927 11 is_stmt 1              # parallel-rne.mlir:927:11
	bneq r21, r5, .LBB0_599
# %bb.593:                              # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_596
.LBB0_594:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_596 Depth=3
	addli r11, r12, 0
.LBB0_595:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 939 13 is_stmt 1              # parallel-rne.mlir:939:13
	add.s r4, r21, r4
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 939 13                        # parallel-rne.mlir:939:13
	stores.w r11, 0(r4)
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	beq r10, zero, .LBB0_591
.LBB0_596:                              # %scalar.ph350
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r10, r13, r1
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r10, zero, .LBB0_598
# %bb.597:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	beq r10, r15, .LBB0_595
	j .LBB0_594
.LBB0_598:                              #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	beq r10, r15, .LBB0_595
	j .LBB0_594
.LBB0_599:                              # %vector.body352.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_602
.LBB0_600:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r19, 28(r20)
.LBB0_601:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 939 13 is_stmt 1              # parallel-rne.mlir:939:13
	add.s r10, r21, r14
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 939 13                        # parallel-rne.mlir:939:13
	stores.w r11, 12(r10)
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 939 13                        # parallel-rne.mlir:939:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	bneq r11, zero, .LBB0_591
.LBB0_602:                              # %vector.body352
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	add.s r20, r22, r14
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	loads.w r2, 0(r19)
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	and r3, r2, r15
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r4, r2, r1
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	seteq r3, r3, r15
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	setneq r4, r4, zero
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_604
# %bb.603:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_602 Depth=3
	or r4, r2, r25
.LBB0_605:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_607
# %bb.606:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_602 Depth=3
	or r2, r2, r25
.LBB0_608:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r10, zero, .LBB0_610
# %bb.609:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_602 Depth=3
	or r3, r3, r25
.LBB0_611:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r10, zero, .LBB0_613
# %bb.612:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_602 Depth=3
	or r11, r11, r25
.LBB0_614:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r10, zero, .LBB0_616
# %bb.615:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_617
.LBB0_616:                              #   in Loop: Header=BB0_602 Depth=3
	or r27, r17, r25
.LBB0_617:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r10, zero, .LBB0_619
# %bb.618:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_620
.LBB0_619:                              #   in Loop: Header=BB0_602 Depth=3
	or r17, r17, r25
.LBB0_620:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r10, zero, .LBB0_622
# %bb.621:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_623
.LBB0_622:                              #   in Loop: Header=BB0_602 Depth=3
	or r18, r18, r25
.LBB0_623:                              # %vector.body352
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	beq r10, zero, .LBB0_600
# %bb.624:                              #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	j .LBB0_601
.LBB0_625:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 919 7 is_stmt 1               # parallel-rne.mlir:919:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	addli r3, zero, 6
	beq r2, r3, .LBB0_738
.LBB0_626:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	addli r3, zero, 7
	beq r2, r3, .LBB0_774
	j .LBB0_810
.LBB0_627:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_629
.LBB0_628:                              # %middle.block429
                                        #   in Loop: Header=BB0_629 Depth=2
	.loc	1 801 9                         # parallel-rne.mlir:801:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_662
.LBB0_629:                              # %.preheader106
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_639 Depth 3
                                        #       Child Loop BB0_633 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 802 11 is_stmt 1              # parallel-rne.mlir:802:11
	bneq r21, r5, .LBB0_636
# %bb.630:                              # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_629 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_633
.LBB0_631:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_633 Depth=3
	addli r11, r12, 0
.LBB0_632:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 814 13 is_stmt 1              # parallel-rne.mlir:814:13
	add.s r4, r21, r4
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 814 13                        # parallel-rne.mlir:814:13
	stores.w r11, 0(r4)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	beq r10, zero, .LBB0_628
.LBB0_633:                              # %scalar.ph420
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_629 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	and r10, r13, r1
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r10, zero, .LBB0_635
# %bb.634:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	beq r10, r15, .LBB0_632
	j .LBB0_631
.LBB0_635:                              #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	beq r10, r15, .LBB0_632
	j .LBB0_631
.LBB0_636:                              # %vector.body422.preheader
                                        #   in Loop: Header=BB0_629 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_639
.LBB0_637:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r19, 28(r20)
.LBB0_638:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 814 13 is_stmt 1              # parallel-rne.mlir:814:13
	add.s r10, r21, r14
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 814 13                        # parallel-rne.mlir:814:13
	stores.w r11, 12(r10)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 814 13                        # parallel-rne.mlir:814:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	bneq r11, zero, .LBB0_628
.LBB0_639:                              # %vector.body422
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_629 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	add.s r20, r22, r14
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	loads.w r2, 0(r19)
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	and r3, r2, r15
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	and r4, r2, r1
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	seteq r3, r3, r15
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	setneq r4, r4, zero
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_641
# %bb.640:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_639 Depth=3
	or r4, r2, r25
.LBB0_642:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_644
# %bb.643:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_639 Depth=3
	or r2, r2, r25
.LBB0_645:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r10, zero, .LBB0_647
# %bb.646:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_639 Depth=3
	or r3, r3, r25
.LBB0_648:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r10, zero, .LBB0_650
# %bb.649:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_651
.LBB0_650:                              #   in Loop: Header=BB0_639 Depth=3
	or r11, r11, r25
.LBB0_651:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r10, zero, .LBB0_653
# %bb.652:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_654
.LBB0_653:                              #   in Loop: Header=BB0_639 Depth=3
	or r27, r17, r25
.LBB0_654:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r10, zero, .LBB0_656
# %bb.655:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_657
.LBB0_656:                              #   in Loop: Header=BB0_639 Depth=3
	or r17, r17, r25
.LBB0_657:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r10, zero, .LBB0_659
# %bb.658:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_660
.LBB0_659:                              #   in Loop: Header=BB0_639 Depth=3
	or r18, r18, r25
.LBB0_660:                              # %vector.body422
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	beq r10, zero, .LBB0_637
# %bb.661:                              #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	j .LBB0_638
.LBB0_662:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 794 7 is_stmt 1               # parallel-rne.mlir:794:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	addli r3, zero, 1
	beq r2, r3, .LBB0_516
.LBB0_663:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	addli r3, zero, 2
	bneq r2, r3, .LBB0_552
.LBB0_664:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_666
.LBB0_665:                              # %middle.block401
                                        #   in Loop: Header=BB0_666 Depth=2
	.loc	1 851 9 is_stmt 1               # parallel-rne.mlir:851:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_699
.LBB0_666:                              # %.preheader104
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_676 Depth 3
                                        #       Child Loop BB0_670 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 852 11 is_stmt 1              # parallel-rne.mlir:852:11
	bneq r21, r5, .LBB0_673
# %bb.667:                              # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_666 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_670
.LBB0_668:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_670 Depth=3
	addli r11, r12, 0
.LBB0_669:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 864 13 is_stmt 1              # parallel-rne.mlir:864:13
	add.s r4, r21, r4
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r11, 0(r4)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	beq r10, zero, .LBB0_665
.LBB0_670:                              # %scalar.ph392
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r10, r13, r1
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_672
# %bb.671:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r10, r15, .LBB0_669
	j .LBB0_668
.LBB0_672:                              #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r10, r15, .LBB0_669
	j .LBB0_668
.LBB0_673:                              # %vector.body394.preheader
                                        #   in Loop: Header=BB0_666 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_676
.LBB0_674:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r19, 28(r20)
.LBB0_675:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 864 13 is_stmt 1              # parallel-rne.mlir:864:13
	add.s r10, r21, r14
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r11, 12(r10)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	bneq r11, zero, .LBB0_665
.LBB0_676:                              # %vector.body394
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.s r20, r22, r14
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	loads.w r2, 0(r19)
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	and r3, r2, r15
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r4, r2, r1
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	seteq r3, r3, r15
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	setneq r4, r4, zero
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_678
# %bb.677:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_679
.LBB0_678:                              #   in Loop: Header=BB0_676 Depth=3
	or r4, r2, r25
.LBB0_679:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_681
# %bb.680:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_682
.LBB0_681:                              #   in Loop: Header=BB0_676 Depth=3
	or r2, r2, r25
.LBB0_682:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_684
# %bb.683:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_685
.LBB0_684:                              #   in Loop: Header=BB0_676 Depth=3
	or r3, r3, r25
.LBB0_685:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_687
# %bb.686:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_688
.LBB0_687:                              #   in Loop: Header=BB0_676 Depth=3
	or r11, r11, r25
.LBB0_688:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_690
# %bb.689:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_691
.LBB0_690:                              #   in Loop: Header=BB0_676 Depth=3
	or r27, r17, r25
.LBB0_691:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_693
# %bb.692:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_694
.LBB0_693:                              #   in Loop: Header=BB0_676 Depth=3
	or r17, r17, r25
.LBB0_694:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_696
# %bb.695:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_697
.LBB0_696:                              #   in Loop: Header=BB0_676 Depth=3
	or r18, r18, r25
.LBB0_697:                              # %vector.body394
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r10, zero, .LBB0_674
# %bb.698:                              #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	j .LBB0_675
.LBB0_699:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 844 7 is_stmt 1               # parallel-rne.mlir:844:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	addli r3, zero, 3
	beq r2, r3, .LBB0_553
.LBB0_700:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 894 7                         # parallel-rne.mlir:894:7
	addli r3, zero, 4
	bneq r2, r3, .LBB0_589
.LBB0_701:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 894 7                         # parallel-rne.mlir:894:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_703
.LBB0_702:                              # %middle.block373
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 901 9 is_stmt 1               # parallel-rne.mlir:901:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_736
.LBB0_703:                              # %.preheader102
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_713 Depth 3
                                        #       Child Loop BB0_707 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 902 11 is_stmt 1              # parallel-rne.mlir:902:11
	bneq r21, r5, .LBB0_710
# %bb.704:                              # %scalar.ph364.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_707
.LBB0_705:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_707 Depth=3
	addli r11, r12, 0
.LBB0_706:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 914 13 is_stmt 1              # parallel-rne.mlir:914:13
	add.s r4, r21, r4
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r11, 0(r4)
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	beq r10, zero, .LBB0_702
.LBB0_707:                              # %scalar.ph364
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	and r10, r13, r1
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r10, zero, .LBB0_709
# %bb.708:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	beq r10, r15, .LBB0_706
	j .LBB0_705
.LBB0_709:                              #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	beq r10, r15, .LBB0_706
	j .LBB0_705
.LBB0_710:                              # %vector.body366.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_713
.LBB0_711:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r19, 28(r20)
.LBB0_712:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 914 13 is_stmt 1              # parallel-rne.mlir:914:13
	add.s r10, r21, r14
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r11, 12(r10)
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	bneq r11, zero, .LBB0_702
.LBB0_713:                              # %vector.body366
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	add.s r20, r22, r14
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	loads.w r2, 0(r19)
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	and r3, r2, r15
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	and r4, r2, r1
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	seteq r3, r3, r15
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	setneq r4, r4, zero
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_715
# %bb.714:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_713 Depth=3
	or r4, r2, r25
.LBB0_716:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_718
# %bb.717:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_713 Depth=3
	or r2, r2, r25
.LBB0_719:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r10, zero, .LBB0_721
# %bb.720:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_713 Depth=3
	or r3, r3, r25
.LBB0_722:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r10, zero, .LBB0_724
# %bb.723:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_725
.LBB0_724:                              #   in Loop: Header=BB0_713 Depth=3
	or r11, r11, r25
.LBB0_725:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r10, zero, .LBB0_727
# %bb.726:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_728
.LBB0_727:                              #   in Loop: Header=BB0_713 Depth=3
	or r27, r17, r25
.LBB0_728:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r10, zero, .LBB0_730
# %bb.729:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_731
.LBB0_730:                              #   in Loop: Header=BB0_713 Depth=3
	or r17, r17, r25
.LBB0_731:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r10, zero, .LBB0_733
# %bb.732:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_713 Depth=3
	or r18, r18, r25
.LBB0_734:                              # %vector.body366
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	beq r10, zero, .LBB0_711
# %bb.735:                              #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	j .LBB0_712
.LBB0_736:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 894 7 is_stmt 1               # parallel-rne.mlir:894:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	addli r3, zero, 5
	beq r2, r3, .LBB0_590
.LBB0_737:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	addli r3, zero, 6
	bneq r2, r3, .LBB0_626
.LBB0_738:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_740
.LBB0_739:                              # %middle.block345
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 951 9 is_stmt 1               # parallel-rne.mlir:951:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_773
.LBB0_740:                              # %.preheader100
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_744 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 952 11 is_stmt 1              # parallel-rne.mlir:952:11
	bneq r21, r5, .LBB0_747
# %bb.741:                              # %scalar.ph336.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_744
.LBB0_742:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_744 Depth=3
	addli r11, r12, 0
.LBB0_743:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 964 13 is_stmt 1              # parallel-rne.mlir:964:13
	add.s r4, r21, r4
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	stores.w r11, 0(r4)
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	beq r10, zero, .LBB0_739
.LBB0_744:                              # %scalar.ph336
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	and r10, r13, r1
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r10, zero, .LBB0_746
# %bb.745:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r10, r15, .LBB0_743
	j .LBB0_742
.LBB0_746:                              #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r10, r15, .LBB0_743
	j .LBB0_742
.LBB0_747:                              # %vector.body338.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_750
.LBB0_748:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r19, 28(r20)
.LBB0_749:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 964 13 is_stmt 1              # parallel-rne.mlir:964:13
	add.s r10, r21, r14
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	stores.w r11, 12(r10)
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	bneq r11, zero, .LBB0_739
.LBB0_750:                              # %vector.body338
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	add.s r20, r22, r14
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	loads.w r2, 0(r19)
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	and r3, r2, r15
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	and r4, r2, r1
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	seteq r3, r3, r15
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	setneq r4, r4, zero
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_752
# %bb.751:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_750 Depth=3
	or r4, r2, r25
.LBB0_753:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_755
# %bb.754:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_750 Depth=3
	or r2, r2, r25
.LBB0_756:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r10, zero, .LBB0_758
# %bb.757:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_750 Depth=3
	or r3, r3, r25
.LBB0_759:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r10, zero, .LBB0_761
# %bb.760:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_762
.LBB0_761:                              #   in Loop: Header=BB0_750 Depth=3
	or r11, r11, r25
.LBB0_762:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r10, zero, .LBB0_764
# %bb.763:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_765
.LBB0_764:                              #   in Loop: Header=BB0_750 Depth=3
	or r27, r17, r25
.LBB0_765:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r10, zero, .LBB0_767
# %bb.766:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_768
.LBB0_767:                              #   in Loop: Header=BB0_750 Depth=3
	or r17, r17, r25
.LBB0_768:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r10, zero, .LBB0_770
# %bb.769:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_771
.LBB0_770:                              #   in Loop: Header=BB0_750 Depth=3
	or r18, r18, r25
.LBB0_771:                              # %vector.body338
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r10, zero, .LBB0_748
# %bb.772:                              #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	j .LBB0_749
.LBB0_773:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 944 7 is_stmt 1               # parallel-rne.mlir:944:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	addli r3, zero, 7
	bneq r2, r3, .LBB0_810
.LBB0_774:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_776
.LBB0_775:                              # %middle.block331
                                        #   in Loop: Header=BB0_776 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -520(r30)                # 8-byte Folded Reload
	.loc	1 976 9 is_stmt 1               # parallel-rne.mlir:976:9
	setlt.ul r2, r[3:4], r[23:24]
	addli.d r[3:4], r[3:4], 1
	beq r2, zero, .LBB0_809
.LBB0_776:                              # %.preheader99
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_786 Depth 3
                                        #       Child Loop BB0_780 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[3:4], r2
	.loc	1 977 11 is_stmt 1              # parallel-rne.mlir:977:11
	bneq r21, r5, .LBB0_783
# %bb.777:                              # %scalar.ph322.preheader
                                        #   in Loop: Header=BB0_776 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_780
.LBB0_778:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_780 Depth=3
	addli r11, r12, 0
.LBB0_779:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	setlt.ul r10, r[2:3], r[23:24]
	.loc	1 989 13 is_stmt 1              # parallel-rne.mlir:989:13
	add.s r4, r21, r4
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	stores.w r11, 0(r4)
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	beq r10, zero, .LBB0_775
.LBB0_780:                              # %scalar.ph322
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_776 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	add.ul r[10:11], r[2:3], r[8:9]
	slli r4, r10, 2
	add.s r10, r5, r4
	loads.w r13, 0(r10)
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	add.s r10, r22, r4
	loads.w r12, 0(r10)
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	and r10, r13, r1
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r10, zero, .LBB0_782
# %bb.781:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r10, r13, r15
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r10, r15, .LBB0_779
	j .LBB0_778
.LBB0_782:                              #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	and r10, r13, r15
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r10, r15, .LBB0_779
	j .LBB0_778
.LBB0_783:                              # %vector.body324.preheader
                                        #   in Loop: Header=BB0_776 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_786
.LBB0_784:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r19, 28(r20)
.LBB0_785:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 989 13 is_stmt 1              # parallel-rne.mlir:989:13
	add.s r10, r21, r14
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	stores.w r11, 12(r10)
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	seteq.d r11, r[12:13], r[6:7]
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	stores.w r3, 8(r10)
	stores.w r2, 4(r10)
	stores.w r4, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r27, 16(r10)
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	bneq r11, zero, .LBB0_775
.LBB0_786:                              # %vector.body324
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_776 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	add.ul r[2:3], r[12:13], r[8:9]
	slli r14, r2, 2
	add.s r19, r5, r14
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	add.s r20, r22, r14
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	loads.w r2, 0(r19)
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	and r3, r2, r15
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	and r4, r2, r1
	.loc	1 983 19                        # parallel-rne.mlir:983:19
	seteq r3, r3, r15
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	setneq r4, r4, zero
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_788
# %bb.787:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
	j .LBB0_789
.LBB0_788:                              #   in Loop: Header=BB0_786 Depth=3
	or r4, r2, r25
.LBB0_789:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r2, 4(r19)
	and r3, r2, r15
	and r10, r2, r1
	seteq r3, r3, r15
	setneq r10, r10, zero
	and r3, r3, r10
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_791
# %bb.790:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r20)
	j .LBB0_792
.LBB0_791:                              #   in Loop: Header=BB0_786 Depth=3
	or r2, r2, r25
.LBB0_792:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r3, 8(r19)
	and r10, r3, r15
	and r11, r3, r1
	seteq r10, r10, r15
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r10, zero, .LBB0_794
# %bb.793:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
	j .LBB0_795
.LBB0_794:                              #   in Loop: Header=BB0_786 Depth=3
	or r3, r3, r25
.LBB0_795:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r15
	and r16, r11, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r10, zero, .LBB0_797
# %bb.796:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_798
.LBB0_797:                              #   in Loop: Header=BB0_786 Depth=3
	or r11, r11, r25
.LBB0_798:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r17, 16(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r10, zero, .LBB0_800
# %bb.799:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 16(r20)
	j .LBB0_801
.LBB0_800:                              #   in Loop: Header=BB0_786 Depth=3
	or r27, r17, r25
.LBB0_801:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r15
	and r16, r17, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r10, zero, .LBB0_803
# %bb.802:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_804
.LBB0_803:                              #   in Loop: Header=BB0_786 Depth=3
	or r17, r17, r25
.LBB0_804:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r15
	and r16, r18, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r10, zero, .LBB0_806
# %bb.805:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_807
.LBB0_806:                              #   in Loop: Header=BB0_786 Depth=3
	or r18, r18, r25
.LBB0_807:                              # %vector.body324
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r15
	and r16, r19, r1
	seteq r10, r10, r15
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r10, zero, .LBB0_784
# %bb.808:                              #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r19, r19, r25
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	j .LBB0_785
.LBB0_809:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 969 7 is_stmt 1               # parallel-rne.mlir:969:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
.LBB0_810:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	addli r3, zero, 255
	csr_set csr5, r3
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	addli r3, zero, 3
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	sync_core
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	bneq r2, r3, .LBB0_812
# %bb.811:                              # %.critedge26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 996 7 is_stmt 1               # parallel-rne.mlir:996:7
	addli r2, zero, 35
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	addli r3, zero, 2
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	xsignal r4, 0
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	xsignal r2, 0
	.loc	1 997 7                         # parallel-rne.mlir:997:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r2,  -12(r30)
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	xwait r4, 0
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	slli r2, r3, 16
	.loc	1 1004 7                        # parallel-rne.mlir:1004:7
	addli r3, zero, 25
	xwait r3, 0
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r3,  -644(r30)                 # 4-byte Folded Reload
	add.s r5, r2, r3
	.loc	1 1005 7                        # parallel-rne.mlir:1005:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	addli r2, zero, 39
	xwait r2, 0
	j .LBB0_815
.LBB0_812:                              # %.critedge24
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_814
# %bb.813:                              # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 36
	addli r4, zero, 2
	addli r9, zero, 4095
	addli r8, zero, 4
	xwait r2, 0
	lock zero, r4
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	dsmadd r21, r21, r21, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r2,  -12(r30)
	addli r3, r2, 1
	mod.s r2, r2, r4
	storeli.w r3, -12(r30)
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	addli r3, zero, 24
	xwait r3, 0
	addli r3, zero, 40
	xwait r3, 0
	lock zero, r4
	lui r3, 258048
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	slli r2, r2, 16
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r3,  -644(r30)                 # 4-byte Folded Reload
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	add.s r5, r2, r3
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	addli r2, zero, 23
	dsmul r5, r10, r21, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
	addli r2, zero, 37
	xsignal r2, 0
	addli r2, zero, 39
	xsignal r2, 0
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	j .LBB0_815
.LBB0_814:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r2,  -12(r30)
	addli r3, zero, 2
	loadli.w r4,  -644(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	slli r3, r3, 16
	add.s r5, r3, r4
.LBB0_815:                              # %.critedge28
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	addli r2, zero, 255
	.loc	1 1008 7                        # parallel-rne.mlir:1008:7
	xfence
	addli r3, zero, 1
	.loc	1 1009 7                        # parallel-rne.mlir:1009:7
	mfence { lm, sm, gm }
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	csr_set csr5, r2
	loadli.w r2,  -448(r30)                 # 4-byte Folded Reload
	sub.s r2, r22, r2
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	sub.s r2, r22, r5
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	sync_core
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	beq r2, zero, .LBB0_904
# %bb.816:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	bneq r2, r3, .LBB0_932
.LBB0_817:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_819
.LBB0_818:                              # %middle.block302
                                        #   in Loop: Header=BB0_819 Depth=2
	.loc	1 1053 9 is_stmt 1              # parallel-rne.mlir:1053:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_844
.LBB0_819:                              # %.preheader97
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_836 Depth 3
                                        #       Child Loop BB0_822 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_834
# %bb.820:                              # %scalar.ph294.preheader
                                        #   in Loop: Header=BB0_819 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_822
.LBB0_821:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1076 13 is_stmt 1             # parallel-rne.mlir:1076:13
	add.s r4, r22, r4
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	stores.w r9, 0(r4)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	beq r8, zero, .LBB0_818
.LBB0_822:                              # %scalar.ph294
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_819 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[8:9], r[2:3], r[12:13]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r8, r21, r4
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r9, r5, r4
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r8, 0(r8)
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r11, r8, r26
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r11, r15, .LBB0_824
# %bb.823:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_824:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r14, zero, .LBB0_832
# %bb.825:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r11, zero, .LBB0_833
.LBB0_826:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	beq r14, r15, .LBB0_828
.LBB0_827:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_828:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r8, zero, .LBB0_830
# %bb.829:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_830:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r8, zero, .LBB0_821
# %bb.831:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_821
.LBB0_832:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	lui r20, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r11, zero, .LBB0_826
.LBB0_833:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_822 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r14, r15, .LBB0_827
	j .LBB0_828
.LBB0_834:                              # %vector.body296.preheader
                                        #   in Loop: Header=BB0_819 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_836
.LBB0_835:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	add.s r2, r22, r2
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	bneq r8, zero, .LBB0_818
.LBB0_836:                              # %vector.body296
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_819 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[2:3], r[19:20], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r11, r21, r2
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r9, r3, r2
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r4, 0(r11)
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r3, 0(r9)
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r4, r4, r26
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r3, r3, r26
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	seteq r14, r4, zero
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r16, r4, r15
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	seteq r10, r3, r15
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	seteq r25, r3, zero
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	and r4, r10, r14
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	and r10, r25, r16
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r14, r5, r2
	.loc	1 1069 19                       # parallel-rne.mlir:1069:19
	or r4, r4, r10
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r10, zero, .LBB0_838
# %bb.837:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_838:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r17, r10, zero
	seteq r8, r16, r15
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r8, zero, .LBB0_840
# %bb.839:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_840:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r15
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r8, zero, .LBB0_842
# %bb.841:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_842:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r8, zero, .LBB0_835
# %bb.843:                              # %vector.body296
                                        #   in Loop: Header=BB0_836 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_835
.LBB0_844:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	mfence { sm }
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	addli r3, zero, 2
	beq r2, r3, .LBB0_933
.LBB0_845:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	addli r3, zero, 3
	bneq r2, r3, .LBB0_961
.LBB0_846:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_848
.LBB0_847:                              # %middle.block272
                                        #   in Loop: Header=BB0_848 Depth=2
	.loc	1 1123 9 is_stmt 1              # parallel-rne.mlir:1123:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_873
.LBB0_848:                              # %.preheader95
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_865 Depth 3
                                        #       Child Loop BB0_851 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 1124 11 is_stmt 1             # parallel-rne.mlir:1124:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_863
# %bb.849:                              # %scalar.ph264.preheader
                                        #   in Loop: Header=BB0_848 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_851
.LBB0_850:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1146 13 is_stmt 1             # parallel-rne.mlir:1146:13
	add.s r4, r22, r4
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r9, 0(r4)
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	beq r8, zero, .LBB0_847
.LBB0_851:                              # %scalar.ph264
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_848 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.ul r[8:9], r[2:3], r[12:13]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r8, r21, r4
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r9, r5, r4
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r8, 0(r8)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	and r11, r8, r26
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r11, r15, .LBB0_853
# %bb.852:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_853:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r14, zero, .LBB0_861
# %bb.854:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r11, zero, .LBB0_862
.LBB0_855:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	beq r14, r15, .LBB0_857
.LBB0_856:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_857:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r8, zero, .LBB0_859
# %bb.858:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_859:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r8, zero, .LBB0_850
# %bb.860:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_850
.LBB0_861:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	lui r20, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r11, zero, .LBB0_855
.LBB0_862:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r14, r15, .LBB0_856
	j .LBB0_857
.LBB0_863:                              # %vector.body266.preheader
                                        #   in Loop: Header=BB0_848 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_865
.LBB0_864:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 1124 11 is_stmt 1             # parallel-rne.mlir:1124:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	add.s r2, r22, r2
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	bneq r8, zero, .LBB0_847
.LBB0_865:                              # %vector.body266
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_848 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.ul r[2:3], r[19:20], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r11, r21, r2
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.s r9, r3, r2
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r4, 0(r11)
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	loads.w r3, 0(r9)
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	and r4, r4, r26
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r3, r3, r26
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	seteq r14, r4, zero
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	seteq r16, r4, r15
	.loc	1 1133 19                       # parallel-rne.mlir:1133:19
	seteq r10, r3, r15
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	seteq r25, r3, zero
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	and r4, r10, r14
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	and r10, r25, r16
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r14, r5, r2
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	or r4, r4, r10
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r10, zero, .LBB0_867
# %bb.866:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_867:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r17, r10, zero
	seteq r8, r16, r15
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r8, zero, .LBB0_869
# %bb.868:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_869:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r15
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r8, zero, .LBB0_871
# %bb.870:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_871:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r8, zero, .LBB0_864
# %bb.872:                              # %vector.body266
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_864
.LBB0_873:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	mfence { sm }
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	addli r3, zero, 4
	beq r2, r3, .LBB0_962
.LBB0_874:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_990
.LBB0_875:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_877
.LBB0_876:                              # %middle.block242
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 1193 9 is_stmt 1              # parallel-rne.mlir:1193:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_902
.LBB0_877:                              # %.preheader93
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_894 Depth 3
                                        #       Child Loop BB0_880 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	.loc	1 1194 11 is_stmt 1             # parallel-rne.mlir:1194:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_892
# %bb.878:                              # %scalar.ph234.preheader
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_880
.LBB0_879:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1216 13 is_stmt 1             # parallel-rne.mlir:1216:13
	add.s r4, r22, r4
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1216 13                       # parallel-rne.mlir:1216:13
	stores.w r9, 0(r4)
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	beq r8, zero, .LBB0_876
.LBB0_880:                              # %scalar.ph234
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_877 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	add.ul r[8:9], r[2:3], r[17:18]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	add.s r8, r21, r4
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r9, r5, r4
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	loads.w r8, 0(r8)
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	and r11, r8, r26
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	beq r11, r15, .LBB0_882
# %bb.881:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_882:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	beq r14, zero, .LBB0_890
# %bb.883:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r11, zero, .LBB0_891
.LBB0_884:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	beq r14, r15, .LBB0_886
.LBB0_885:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_886:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r8, zero, .LBB0_888
# %bb.887:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_888:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r8, zero, .LBB0_879
# %bb.889:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_879
.LBB0_890:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	lui r20, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	beq r11, zero, .LBB0_884
.LBB0_891:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r14, r15, .LBB0_885
	j .LBB0_886
.LBB0_892:                              # %vector.body236.preheader
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_894
.LBB0_893:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	.loc	1 1194 11 is_stmt 1             # parallel-rne.mlir:1194:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1216 13                       # parallel-rne.mlir:1216:13
	add.s r2, r22, r2
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1216 13                       # parallel-rne.mlir:1216:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	bneq r8, zero, .LBB0_876
.LBB0_894:                              # %vector.body236
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_877 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	add.ul r[2:3], r[19:20], r[17:18]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	add.s r11, r21, r2
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	add.s r9, r3, r2
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	loads.w r4, 0(r11)
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	loads.w r3, 0(r9)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	and r4, r4, r26
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	and r3, r3, r26
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	seteq r14, r4, zero
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	seteq r16, r4, r15
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	seteq r10, r3, r15
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	seteq r25, r3, zero
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	and r4, r10, r14
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	and r10, r25, r16
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r14, r5, r2
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	or r4, r4, r10
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r10, zero, .LBB0_896
# %bb.895:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_896:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r27, r16, zero
	seteq r12, r10, zero
	seteq r8, r16, r15
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r13, r25, r27
	and r8, r12, r8
	lui r27, 523264
	or r8, r13, r8
	or r8, r10, r8
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r8, zero, .LBB0_898
# %bb.897:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_898:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r12, r8, r15
	seteq r25, r8, zero
	seteq r13, r10, zero
	seteq r16, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r12, r13
	and r12, r25, r16
	lui r25, 523264
	or r10, r10, r12
	or r8, r8, r10
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r8, zero, .LBB0_900
# %bb.899:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_900:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r13, r8, zero
	seteq r11, r9, zero
	seteq r12, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r13, r12
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r8, zero, .LBB0_893
# %bb.901:                              # %vector.body236
                                        #   in Loop: Header=BB0_894 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_893
.LBB0_902:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	mfence { sm }
	.loc	1 1221 7                        # parallel-rne.mlir:1221:7
	addli r3, zero, 6
	beq r2, r3, .LBB0_991
.LBB0_903:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	addli r3, zero, 7
	beq r2, r3, .LBB0_1019
	j .LBB0_1047
.LBB0_904:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 1011 7 is_stmt 1              # parallel-rne.mlir:1011:7
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_906
.LBB0_905:                              # %middle.block317
                                        #   in Loop: Header=BB0_906 Depth=2
	.loc	1 1018 9                        # parallel-rne.mlir:1018:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_931
.LBB0_906:                              # %.preheader98
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_923 Depth 3
                                        #       Child Loop BB0_909 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 1019 11 is_stmt 1             # parallel-rne.mlir:1019:11
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_921
# %bb.907:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_906 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_909
.LBB0_908:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1041 13 is_stmt 1             # parallel-rne.mlir:1041:13
	add.s r4, r22, r4
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	stores.w r9, 0(r4)
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	beq r8, zero, .LBB0_905
.LBB0_909:                              # %scalar.ph309
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_906 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.ul r[8:9], r[2:3], r[12:13]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	add.s r8, r21, r4
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.s r9, r5, r4
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	loads.w r8, 0(r8)
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	and r11, r8, r26
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	beq r11, r15, .LBB0_911
# %bb.910:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_911:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	beq r14, zero, .LBB0_919
# %bb.912:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r11, zero, .LBB0_920
.LBB0_913:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	beq r14, r15, .LBB0_915
.LBB0_914:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_915:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r8, zero, .LBB0_917
# %bb.916:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_917:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r8, zero, .LBB0_908
# %bb.918:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_908
.LBB0_919:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	lui r20, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	beq r11, zero, .LBB0_913
.LBB0_920:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r14, r15, .LBB0_914
	j .LBB0_915
.LBB0_921:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_906 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_923
.LBB0_922:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	.loc	1 1019 11 is_stmt 1             # parallel-rne.mlir:1019:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	add.s r2, r22, r2
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	bneq r8, zero, .LBB0_905
.LBB0_923:                              # %vector.body311
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_906 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.ul r[2:3], r[19:20], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	add.s r11, r21, r2
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.s r9, r3, r2
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	loads.w r4, 0(r11)
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	loads.w r3, 0(r9)
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	and r4, r4, r26
	.loc	1 1027 19                       # parallel-rne.mlir:1027:19
	and r3, r3, r26
	.loc	1 1029 19                       # parallel-rne.mlir:1029:19
	seteq r14, r4, zero
	.loc	1 1031 19                       # parallel-rne.mlir:1031:19
	seteq r16, r4, r15
	.loc	1 1028 19                       # parallel-rne.mlir:1028:19
	seteq r10, r3, r15
	.loc	1 1032 19                       # parallel-rne.mlir:1032:19
	seteq r25, r3, zero
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1030 19                       # parallel-rne.mlir:1030:19
	and r4, r10, r14
	.loc	1 1033 19                       # parallel-rne.mlir:1033:19
	and r10, r25, r16
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.s r14, r5, r2
	.loc	1 1034 19                       # parallel-rne.mlir:1034:19
	or r4, r4, r10
	.loc	1 1038 19                       # parallel-rne.mlir:1038:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r10, zero, .LBB0_925
# %bb.924:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_925:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r17, r10, zero
	seteq r8, r16, r15
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r8, zero, .LBB0_927
# %bb.926:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_927:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r15
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r8, zero, .LBB0_929
# %bb.928:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_929:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r8, zero, .LBB0_922
# %bb.930:                              # %vector.body311
                                        #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_922
.LBB0_931:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r3, zero, 1
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	mfence { sm }
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	beq r2, r3, .LBB0_817
.LBB0_932:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	addli r3, zero, 2
	bneq r2, r3, .LBB0_845
.LBB0_933:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_935
.LBB0_934:                              # %middle.block287
                                        #   in Loop: Header=BB0_935 Depth=2
	.loc	1 1088 9 is_stmt 1              # parallel-rne.mlir:1088:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_960
.LBB0_935:                              # %.preheader96
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_952 Depth 3
                                        #       Child Loop BB0_938 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_950
# %bb.936:                              # %scalar.ph279.preheader
                                        #   in Loop: Header=BB0_935 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_938
.LBB0_937:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1111 13 is_stmt 1             # parallel-rne.mlir:1111:13
	add.s r4, r22, r4
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r9, 0(r4)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	beq r8, zero, .LBB0_934
.LBB0_938:                              # %scalar.ph279
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_935 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[8:9], r[2:3], r[12:13]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r8, r21, r4
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r9, r5, r4
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r8, 0(r8)
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r11, r8, r26
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r11, r15, .LBB0_940
# %bb.939:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_940:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r14, zero, .LBB0_948
# %bb.941:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r11, zero, .LBB0_949
.LBB0_942:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	beq r14, r15, .LBB0_944
.LBB0_943:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_944:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r8, zero, .LBB0_946
# %bb.945:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_946:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r8, zero, .LBB0_937
# %bb.947:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_937
.LBB0_948:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	lui r20, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r11, zero, .LBB0_942
.LBB0_949:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r14, r15, .LBB0_943
	j .LBB0_944
.LBB0_950:                              # %vector.body281.preheader
                                        #   in Loop: Header=BB0_935 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_952
.LBB0_951:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	add.s r2, r22, r2
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	bneq r8, zero, .LBB0_934
.LBB0_952:                              # %vector.body281
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_935 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[2:3], r[19:20], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r11, r21, r2
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.s r9, r3, r2
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r4, 0(r11)
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r3, 0(r9)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r4, r4, r26
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	and r3, r3, r26
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	seteq r14, r4, zero
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r16, r4, r15
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	seteq r10, r3, r15
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	seteq r25, r3, zero
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	and r4, r10, r14
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	and r10, r25, r16
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r14, r5, r2
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	or r4, r4, r10
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r10, zero, .LBB0_954
# %bb.953:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_954:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r17, r10, zero
	seteq r8, r16, r15
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r8, zero, .LBB0_956
# %bb.955:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_956:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r15
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r8, zero, .LBB0_958
# %bb.957:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_958:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r8, zero, .LBB0_951
# %bb.959:                              # %vector.body281
                                        #   in Loop: Header=BB0_952 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_951
.LBB0_960:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	mfence { sm }
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	addli r3, zero, 3
	beq r2, r3, .LBB0_846
.LBB0_961:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	addli r3, zero, 4
	bneq r2, r3, .LBB0_874
.LBB0_962:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_964
.LBB0_963:                              # %middle.block257
                                        #   in Loop: Header=BB0_964 Depth=2
	.loc	1 1158 9 is_stmt 1              # parallel-rne.mlir:1158:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_989
.LBB0_964:                              # %.preheader94
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_981 Depth 3
                                        #       Child Loop BB0_967 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 1159 11 is_stmt 1             # parallel-rne.mlir:1159:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_979
# %bb.965:                              # %scalar.ph249.preheader
                                        #   in Loop: Header=BB0_964 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_967
.LBB0_966:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1181 13 is_stmt 1             # parallel-rne.mlir:1181:13
	add.s r4, r22, r4
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	stores.w r9, 0(r4)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	beq r8, zero, .LBB0_963
.LBB0_967:                              # %scalar.ph249
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_964 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[8:9], r[2:3], r[12:13]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.s r8, r21, r4
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r9, r5, r4
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r8, 0(r8)
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r11, r8, r26
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r11, r15, .LBB0_969
# %bb.968:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_969:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r14, zero, .LBB0_977
# %bb.970:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r11, zero, .LBB0_978
.LBB0_971:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	beq r14, r15, .LBB0_973
.LBB0_972:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_973:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r8, zero, .LBB0_975
# %bb.974:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_975:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r8, zero, .LBB0_966
# %bb.976:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_966
.LBB0_977:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	lui r20, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r11, zero, .LBB0_971
.LBB0_978:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r14, r15, .LBB0_972
	j .LBB0_973
.LBB0_979:                              # %vector.body251.preheader
                                        #   in Loop: Header=BB0_964 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_981
.LBB0_980:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 1159 11 is_stmt 1             # parallel-rne.mlir:1159:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	add.s r2, r22, r2
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	bneq r8, zero, .LBB0_963
.LBB0_981:                              # %vector.body251
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_964 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[2:3], r[19:20], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.s r11, r21, r2
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.s r9, r3, r2
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r4, 0(r11)
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	loads.w r3, 0(r9)
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r4, r4, r26
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r3, r3, r26
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	seteq r14, r4, zero
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r16, r4, r15
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	seteq r10, r3, r15
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	seteq r25, r3, zero
	.loc	1 1177 19                       # parallel-rne.mlir:1177:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	and r4, r10, r14
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	and r10, r25, r16
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r14, r5, r2
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	or r4, r4, r10
	.loc	1 1178 19                       # parallel-rne.mlir:1178:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r10, zero, .LBB0_983
# %bb.982:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_983:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r17, r10, zero
	seteq r8, r16, r15
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r8, zero, .LBB0_985
# %bb.984:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_985:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r15
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r8, zero, .LBB0_987
# %bb.986:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_987:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r8, zero, .LBB0_980
# %bb.988:                              # %vector.body251
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_980
.LBB0_989:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	mfence { sm }
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	addli r3, zero, 5
	beq r2, r3, .LBB0_875
.LBB0_990:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1221 7                        # parallel-rne.mlir:1221:7
	addli r3, zero, 6
	bneq r2, r3, .LBB0_903
.LBB0_991:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	.loc	1 1221 7                        # parallel-rne.mlir:1221:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_993
.LBB0_992:                              # %middle.block227
                                        #   in Loop: Header=BB0_993 Depth=2
	.loc	1 1228 9 is_stmt 1              # parallel-rne.mlir:1228:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[2:3]
	addli.d r[3:4], r[8:9], 1
	beq r2, zero, .LBB0_1018
.LBB0_993:                              # %.preheader92
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1010 Depth 3
                                        #       Child Loop BB0_996 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r2
	.loc	1 1229 11 is_stmt 1             # parallel-rne.mlir:1229:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1008
# %bb.994:                              # %scalar.ph219.preheader
                                        #   in Loop: Header=BB0_993 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_996
.LBB0_995:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	setlt.ul r8, r[2:3], r[23:24]
	.loc	1 1251 13 is_stmt 1             # parallel-rne.mlir:1251:13
	add.s r4, r22, r4
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	stores.w r9, 0(r4)
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	beq r8, zero, .LBB0_992
.LBB0_996:                              # %scalar.ph219
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_993 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	add.ul r[8:9], r[2:3], r[17:18]
	lui r19, 523264
	slli r4, r8, 2
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	add.s r8, r21, r4
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.s r9, r5, r4
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	loads.w r8, 0(r8)
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	and r11, r8, r26
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r11, r15, .LBB0_998
# %bb.997:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_998:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r4
	loads.w r8, 0(r8)
	and r14, r8, r26
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r14, zero, .LBB0_1006
# %bb.999:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r11, zero, .LBB0_1007
.LBB0_1000:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	beq r14, r15, .LBB0_1002
.LBB0_1001:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1002:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	setlt.u r8, r15, r11
	lui r11, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r8, zero, .LBB0_1004
# %bb.1003:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_1004:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	setlt.u r8, r15, r14
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r8, zero, .LBB0_995
# %bb.1005:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_995
.LBB0_1006:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	lui r20, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r11, zero, .LBB0_1000
.LBB0_1007:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r14, r15, .LBB0_1001
	j .LBB0_1002
.LBB0_1008:                             # %vector.body221.preheader
                                        #   in Loop: Header=BB0_993 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1010
.LBB0_1009:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	.loc	1 1229 11 is_stmt 1             # parallel-rne.mlir:1229:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	add.s r2, r22, r2
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	seteq.d r8, r[19:20], r[6:7]
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	stores.w r4, 12(r2)
	stores.w r25, 8(r2)
	stores.w r27, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	bneq r8, zero, .LBB0_992
.LBB0_1010:                             # %vector.body221
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_993 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	add.ul r[2:3], r[19:20], r[17:18]
	slli r2, r2, 2
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	add.s r11, r21, r2
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	add.s r9, r3, r2
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	loads.w r4, 0(r11)
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	loads.w r3, 0(r9)
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	and r4, r4, r26
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	and r3, r3, r26
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	seteq r14, r4, zero
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	seteq r16, r4, r15
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	seteq r10, r3, r15
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	seteq r25, r3, zero
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	max.u r3, r3, r4
	setlt.u r3, r15, r3
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	and r4, r10, r14
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	and r10, r25, r16
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.s r14, r5, r2
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	or r4, r4, r10
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	or r10, r3, r4
	lui r4, 523264
	lui r3, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r10, zero, .LBB0_1012
# %bb.1011:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r14)
.LBB0_1012:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r27, r16, zero
	seteq r12, r10, zero
	seteq r8, r16, r15
	max.u r10, r10, r16
	setlt.u r10, r15, r10
	and r13, r25, r27
	and r8, r12, r8
	lui r27, 523264
	or r8, r13, r8
	or r8, r10, r8
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r8, zero, .LBB0_1014
# %bb.1013:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r14)
.LBB0_1014:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r12, r8, r15
	seteq r25, r8, zero
	seteq r13, r10, zero
	seteq r16, r10, r15
	max.u r8, r8, r10
	setlt.u r8, r15, r8
	and r10, r12, r13
	and r12, r25, r16
	lui r25, 523264
	or r10, r10, r12
	or r8, r8, r10
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r8, zero, .LBB0_1016
# %bb.1015:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r14)
.LBB0_1016:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r15
	seteq r13, r8, zero
	seteq r11, r9, zero
	seteq r12, r9, r15
	max.u r8, r8, r9
	setlt.u r8, r15, r8
	and r9, r10, r11
	and r10, r13, r12
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r8, zero, .LBB0_1009
# %bb.1017:                             # %vector.body221
                                        #   in Loop: Header=BB0_1010 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r14)
	j .LBB0_1009
.LBB0_1018:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1221 7                        # parallel-rne.mlir:1221:7
	mfence { sm }
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	addli r3, zero, 7
	bneq r2, r3, .LBB0_1047
.LBB0_1019:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1021
.LBB0_1020:                             # %middle.block
                                        #   in Loop: Header=BB0_1021 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -456(r30)                # 8-byte Folded Reload
	.loc	1 1263 9 is_stmt 1              # parallel-rne.mlir:1263:9
	setlt.ul r2, r[3:4], r[23:24]
	addli.d r[3:4], r[3:4], 1
	beq r2, zero, .LBB0_1046
.LBB0_1021:                             # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1038 Depth 3
                                        #       Child Loop BB0_1024 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 1264 11 is_stmt 1             # parallel-rne.mlir:1264:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1036
# %bb.1022:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1021 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_1024
.LBB0_1023:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	setlt.ul r2, r[3:4], r[23:24]
	.loc	1 1286 13 is_stmt 1             # parallel-rne.mlir:1286:13
	add.s r8, r22, r11
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	stores.w r14, 0(r8)
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	beq r2, zero, .LBB0_1020
.LBB0_1024:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1021 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.ul r[8:9], r[3:4], r[12:13]
	lui r14, 523264
	lui r19, 523264
	slli r11, r8, 2
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	add.s r2, r21, r11
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	add.s r8, r5, r11
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	loads.w r2, 0(r2)
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	loads.w r20, 0(r8)
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	and r17, r2, r26
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	beq r17, r15, .LBB0_1026
# %bb.1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_1026:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	loadli.w r2,  -448(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r11
	loads.w r2, 0(r2)
	and r18, r2, r26
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	beq r18, zero, .LBB0_1034
# %bb.1027:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r17, zero, .LBB0_1035
.LBB0_1028:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	beq r18, r15, .LBB0_1030
.LBB0_1029:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1030:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	setlt.u r2, r15, r17
	lui r17, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r2, zero, .LBB0_1032
# %bb.1031:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_1032:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	setlt.u r2, r15, r18
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r2, zero, .LBB0_1023
# %bb.1033:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r17, 0
	j .LBB0_1023
.LBB0_1034:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	lui r20, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	beq r17, zero, .LBB0_1028
.LBB0_1035:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r18, r15, .LBB0_1029
	j .LBB0_1030
.LBB0_1036:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1021 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_1038
.LBB0_1037:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 1264 11 is_stmt 1             # parallel-rne.mlir:1264:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	add.s r8, r22, r14
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	seteq.d r2, r[3:4], r[6:7]
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	stores.w r17, 12(r8)
	stores.w r27, 8(r8)
	stores.w r25, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	bneq r2, zero, .LBB0_1020
.LBB0_1038:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1021 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.ul r[10:11], r[3:4], r[12:13]
	loadli.w r2,  -448(r30)                 # 4-byte Folded Reload
	slli r14, r10, 2
	add.s r18, r2, r14
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	add.s r19, r21, r14
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	loads.w r10, 0(r18)
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	loads.w r11, 0(r19)
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	and r10, r10, r26
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	and r11, r11, r26
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	seteq r16, r10, r15
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	seteq r25, r10, zero
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	seteq r17, r11, zero
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	seteq r20, r11, r15
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	max.u r10, r10, r11
	setlt.u r10, r15, r10
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r11, r16, r17
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	and r16, r25, r20
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	add.s r20, r5, r14
	lui r17, 523264
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	or r11, r11, r16
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r10, zero, .LBB0_1040
# %bb.1039:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r20)
.LBB0_1040:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	loads.w r10, 4(r18)
	loads.w r16, 4(r19)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r15
	seteq r27, r16, zero
	seteq r2, r16, r15
	seteq r8, r10, zero
	max.u r9, r10, r16
	setlt.u r9, r15, r9
	and r10, r25, r27
	and r2, r8, r2
	lui r25, 523264
	or r2, r10, r2
	or r2, r9, r2
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r2, zero, .LBB0_1042
# %bb.1041:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r20)
.LBB0_1042:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	loads.w r2, 8(r18)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r27, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r27, r16
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r2, zero, .LBB0_1044
# %bb.1043:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r20)
.LBB0_1044:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	loads.w r2, 12(r18)
	loads.w r8, 12(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r15
	seteq r18, r2, zero
	seteq r10, r8, zero
	seteq r16, r8, r15
	max.u r2, r2, r8
	setlt.u r2, r15, r2
	and r8, r9, r10
	and r9, r18, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r2, zero, .LBB0_1037
# %bb.1045:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_1037
.LBB0_1046:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	mfence { sm }
.LBB0_1047:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1291 7                        # parallel-rne.mlir:1291:7
	addli r3, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r10
	.loc	1 1291 7                        # parallel-rne.mlir:1291:7
	csr_set csr5, r3
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	addli r3, zero, 3
	.loc	1 1291 7                        # parallel-rne.mlir:1291:7
	sync_core
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	beq r2, r3, .LBB0_5
# %bb.1048:                             # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r16, zero, 128
	addli r23, zero, 2
	addli r24, zero, 4
	addli r21, zero, 6
	.loc	1 1303 7 is_stmt 1              # parallel-rne.mlir:1303:7
	bneq r2, zero, .LBB0_7
# %bb.1049:                             #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -576(r30)                # 8-byte Folded Reload
	loadli.w r2,  -580(r30)                 # 4-byte Folded Reload
	addli r4, zero, 20
	addli r11, zero, 17
	load.d r[12:13], 24(r30)
	sll.d r[4:5], r[8:9], r4
	load.d r[8:9], -592(r30)                # 8-byte Folded Reload
	sext_int2long r[2:3], r2
	xwait r11, 0
	addli r11, zero, 5
	lock zero, r11
	add.ul r[4:5], r[12:13], r[4:5]
	min.sl r[8:9], r[2:3], r[8:9]
	addli.d r[8:9], r[8:9], 128
	max.sl r[8:9], r[8:9], r[2:3]
	sub.sl r[2:3], r[8:9], r[2:3]
	load.d r[8:9], -568(r30)                # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	.loc	1 1299 13                       # parallel-rne.mlir:1299:13
	min.sl r[2:3], r[2:3], r[6:7]
	.loc	1 1303 7                        # parallel-rne.mlir:1303:7
	addli r6, zero, 1
	add.ul r[4:5], r[4:5], r[8:9]
	dma_cfg zero, r6, zero, 1
	load.d r[6:7], -600(r30)                # 8-byte Folded Reload
	dma_cfg r5, zero, zero, 2
	slli r6, r6, 2
	dma_cfg r4, r22, r6, 3
	addli r4, zero, 512
	addli r5, zero, 8192
	dma_cfg r5, r4, r2, 4
	addli r2, zero, 18
	dma_run zero
	unlock r11
	j .LBB0_6
.LBB0_1050:                             # %._crit_edge
	.loc	1 1305 5                        # parallel-rne.mlir:1305:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_1052
# %bb.1051:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1305 5                        # parallel-rne.mlir:1305:5
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
.LBB0_1052:
	.loc	1 1306 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1306:5
	addli sp, sp, 656
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
	.long	720                             # 0x2d0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-dh6etokd" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
