	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-1s71w_dz" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -712
	addli r2, zero, 1
.Ltmp0:
	.loc	1 39 5 prologue_end             # parallel-rne.mlir:39:5
	core_id r10
	addli r30, sp, 648
	xsignal_mode_cfg r2
	beq r10, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 39 5                          # parallel-rne.mlir:39:5
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
	.loc	1 39 5                          # parallel-rne.mlir:39:5
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
	.loc	1 41 10 is_stmt 1               # parallel-rne.mlir:41:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -12(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -24(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -36(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -48(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -60(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -72(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -84(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -96(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -108(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -136(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -300(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -328(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -428(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -440(r30)
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r1, r2, r1
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r4, r1, r4
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	addli r2, r2, -1
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -324(r30)
	storeli.w r3, -320(r30)
	storeli.w r3, -316(r30)
	storeli.w r3, -312(r30)
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
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
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w r3, -436(r30)
	storeli.w r3, -432(r30)
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	mul.s r1, r2, r6
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	fmac.s r2, r2, r6
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	min.s r2, r2, r4
	.loc	1 66 5                          # parallel-rne.mlir:66:5
	ble.s r2, r1, .LBB0_1037
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 50 11 is_stmt 1               # parallel-rne.mlir:50:11
	sext_int2long r[11:12], r1
	lui r1, 15
	addli r16, zero, 64
	addli r23, zero, 4
	addli r24, zero, 2
	lui r25, 524288
	lui r13, 268288
	store.d r[2:3], -600(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r3, 250738
	lui r1, 1048448
	store.d r[1:2], -608(r30)               # 8-byte Folded Spill
	lui r1, 160
	lui r2, 224
	ori r1, r1, 1024
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
	lui r1, 192
	ori r1, r1, 1024
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 524287
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	lui r1, 256
	ori r26, r2, 4095
	lui r2, 320
	ori r1, r1, 1024
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	lui r1, 288
	ori r1, r1, 1024
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 352
	ori r2, r2, 1024
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
	lui r1, 2047
	storeli.w r2, -636(r30)                 # 4-byte Folded Spill
	lui r2, 56
	ori r1, r1, 4095
	ori r2, r2, 2115
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	ori r2, r3, 1811
	lui r3, 127
	storeli.w r2, -644(r30)                 # 4-byte Folded Spill
	lui r2, 259268
	ori r2, r2, 554
	storeli.w r2, -648(r30)                 # 4-byte Folded Spill
	ori r2, r3, 4095
	lui r3, 522240
	storeli.w r2, -532(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	addli r2, zero, 17
	xsignal r2, 0
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 1296 7                        # parallel-rne.mlir:1296:7
	addli r2, zero, 38
	xsignal r2, 0
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	addli r2, zero, 40
	xsignal r2, 0
	load.d r[11:12], -552(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 66 5                          # parallel-rne.mlir:66:5
	load.d r[4:5], -600(r30)                # 8-byte Folded Reload
	addli.d r[11:12], r[11:12], 1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r10
	addli r16, zero, 64
	addli r23, zero, 4
	addli r24, zero, 2
	.loc	1 66 5                          # parallel-rne.mlir:66:5
	setlt.sl r2, r[11:12], r[4:5]
	beq r2, zero, .LBB0_1037
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #     Child Loop BB0_68 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_122 Depth 2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #     Child Loop BB0_149 Depth 2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #     Child Loop BB0_176 Depth 2
                                        #       Child Loop BB0_191 Depth 3
                                        #       Child Loop BB0_178 Depth 3
                                        #     Child Loop BB0_203 Depth 2
                                        #       Child Loop BB0_220 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_249 Depth 3
                                        #       Child Loop BB0_235 Depth 3
                                        #     Child Loop BB0_266 Depth 2
                                        #       Child Loop BB0_268 Depth 3
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_272 Depth 2
                                        #       Child Loop BB0_274 Depth 3
                                        #       Child Loop BB0_273 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #     Child Loop BB0_286 Depth 2
                                        #       Child Loop BB0_288 Depth 3
                                        #       Child Loop BB0_287 Depth 3
                                        #     Child Loop BB0_293 Depth 2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #     Child Loop BB0_300 Depth 2
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_301 Depth 3
                                        #     Child Loop BB0_307 Depth 2
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_308 Depth 3
                                        #     Child Loop BB0_314 Depth 2
                                        #       Child Loop BB0_316 Depth 3
                                        #       Child Loop BB0_315 Depth 3
                                        #     Child Loop BB0_323 Depth 2
                                        #       Child Loop BB0_325 Depth 3
                                        #     Child Loop BB0_351 Depth 2
                                        #       Child Loop BB0_353 Depth 3
                                        #     Child Loop BB0_372 Depth 2
                                        #       Child Loop BB0_374 Depth 3
                                        #     Child Loop BB0_393 Depth 2
                                        #       Child Loop BB0_395 Depth 3
                                        #     Child Loop BB0_414 Depth 2
                                        #       Child Loop BB0_416 Depth 3
                                        #     Child Loop BB0_435 Depth 2
                                        #       Child Loop BB0_437 Depth 3
                                        #     Child Loop BB0_456 Depth 2
                                        #       Child Loop BB0_458 Depth 3
                                        #     Child Loop BB0_477 Depth 2
                                        #       Child Loop BB0_479 Depth 3
                                        #     Child Loop BB0_504 Depth 2
                                        #       Child Loop BB0_514 Depth 3
                                        #       Child Loop BB0_507 Depth 3
                                        #     Child Loop BB0_547 Depth 2
                                        #       Child Loop BB0_557 Depth 3
                                        #       Child Loop BB0_550 Depth 3
                                        #     Child Loop BB0_583 Depth 2
                                        #       Child Loop BB0_593 Depth 3
                                        #       Child Loop BB0_586 Depth 3
                                        #     Child Loop BB0_619 Depth 2
                                        #       Child Loop BB0_629 Depth 3
                                        #       Child Loop BB0_622 Depth 3
                                        #     Child Loop BB0_655 Depth 2
                                        #       Child Loop BB0_665 Depth 3
                                        #       Child Loop BB0_658 Depth 3
                                        #     Child Loop BB0_691 Depth 2
                                        #       Child Loop BB0_701 Depth 3
                                        #       Child Loop BB0_694 Depth 3
                                        #     Child Loop BB0_727 Depth 2
                                        #       Child Loop BB0_737 Depth 3
                                        #       Child Loop BB0_730 Depth 3
                                        #     Child Loop BB0_763 Depth 2
                                        #       Child Loop BB0_773 Depth 3
                                        #       Child Loop BB0_766 Depth 3
                                        #     Child Loop BB0_806 Depth 2
                                        #       Child Loop BB0_823 Depth 3
                                        #       Child Loop BB0_809 Depth 3
                                        #     Child Loop BB0_834 Depth 2
                                        #       Child Loop BB0_851 Depth 3
                                        #       Child Loop BB0_837 Depth 3
                                        #     Child Loop BB0_863 Depth 2
                                        #       Child Loop BB0_880 Depth 3
                                        #       Child Loop BB0_866 Depth 3
                                        #     Child Loop BB0_892 Depth 2
                                        #       Child Loop BB0_909 Depth 3
                                        #       Child Loop BB0_895 Depth 3
                                        #     Child Loop BB0_921 Depth 2
                                        #       Child Loop BB0_938 Depth 3
                                        #       Child Loop BB0_924 Depth 3
                                        #     Child Loop BB0_950 Depth 2
                                        #       Child Loop BB0_967 Depth 3
                                        #       Child Loop BB0_953 Depth 3
                                        #     Child Loop BB0_979 Depth 2
                                        #       Child Loop BB0_996 Depth 3
                                        #       Child Loop BB0_982 Depth 3
                                        #     Child Loop BB0_1008 Depth 2
                                        #       Child Loop BB0_1025 Depth 3
                                        #       Child Loop BB0_1011 Depth 3
	.loc	1 90 13                         # parallel-rne.mlir:90:13
	loadli.w r2,  -440(r30)
	addli r4, r2, 1
	storeli.w r4, -440(r30)
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r10, r23, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 18
	xwait r4, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r4,  48(r30)
	loadli.w r5,  44(r30)
	addli r8, zero, 8
	mod.s r2, r2, r24
	store.d r[11:12], -552(r30)             # 8-byte Folded Spill
	div.s r4, r11, r4
	slli r28, r2, 16
	div.s r5, r4, r5
	loadli.w r4,  -428(r30)
	div.s r6, r5, r16
	slli r9, r6, 3
	slli r6, r6, 6
	sub.s r7, r23, r9
	sub.s r6, r5, r6
	min.s r7, r7, r8
	loadli.w r8,  -136(r30)
	mod.s r5, r5, r7
	div.s r11, r6, r7
	loadli.w r6,  -328(r30)
	loadli.w r7,  -300(r30)
	add.s r2, r9, r5
	slli r5, r11, 7
	zext_int2long r[11:12], r11
	slli r9, r2, 7
	zext_int2long r[14:15], r2
	addli r2, zero, 17
	storeli.w r9, -580(r30)                 # 4-byte Folded Spill
	addli r9, zero, 7
	store.d r[14:15], -576(r30)             # 8-byte Folded Spill
	sll.d r[14:15], r[14:15], r2
	sll.d r[11:12], r[11:12], r9
	addli r9, zero, 0
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	sll.d r[17:18], r[11:12], r24
	load.d r[11:12], 8(r30)
	store.d r[17:18], -568(r30)             # 8-byte Folded Spill
	add.ul r[11:12], r[11:12], r[17:18]
	store.d r[11:12], -456(r30)             # 8-byte Folded Spill
	load.d r[11:12], -608(r30)              # 8-byte Folded Reload
	and.d r[11:12], r[14:15], r[11:12]
	store.d r[11:12], -448(r30)             # 8-byte Folded Spill
	addli r12, zero, 6
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1024
	.loc	1 101 15 is_stmt 1              # parallel-rne.mlir:101:15
	sub.sl r[23:24], r[21:22], r[23:24]
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	load.d r[19:20], 0(r30)
	addli r16, zero, 256
	addli r10, zero, 4096
	zext_int2long r[17:18], r2
	addli r2, zero, 384
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	div.sl r[17:18], r[23:24], r[17:18]
	zext_int2long r[23:24], r2
	addli r2, zero, 2
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	sll.d r[21:22], r[21:22], r2
	addli r2, zero, 3
	xwait r2, 0
	addli r2, zero, 4
	add.ul r[21:22], r[19:20], r[21:22]
	lock zero, r2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r22, zero, 2
	dma_cfg r11, r21, r16, 3
	.loc	1 104 15                        # parallel-rne.mlir:104:15
	min.sl r[23:24], r[17:18], r[23:24]
	.loc	1 105 15                        # parallel-rne.mlir:105:15
	sub.sl r[17:18], r[23:24], r[17:18]
	addli r24, zero, 2
	addli r23, zero, 4
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r2, r17, 128
	dma_cfg r16, r10, r2, 4
	dma_run zero
	unlock r23
	xsignal r24, 0
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r10
	addli r16, zero, 64
.LBB0_11:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r4, r4, 1
	addli r6, r6, 1
	.loc	1 126 15 is_stmt 1              # parallel-rne.mlir:126:15
	addli r7, r7, 1
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	addli r9, r9, 1
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r8, r8, 1
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	addli r2, zero, 16
	beq r9, r2, .LBB0_28
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r11, zero, 24
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r2, r6, r12
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r11, r4, r11
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r12, r2, 15
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	slli r2, r11, 15
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	lui r11, 32
	add.s r11, r12, r11
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	beq r10, r24, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[21:22], r9
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r12, zero, 1
	bneq r10, r12, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 6
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	sll.d r[21:22], r[21:22], r12
	zext_int2long r[23:24], r2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	add.ul r[21:22], r[21:22], r[14:15]
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	setlt.ul r2, r[23:24], r[21:22]
	load.d r[23:24], -448(r30)              # 8-byte Folded Reload
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	bneq r2, zero, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[23:24], zero
	j .LBB0_10
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 116 9 is_stmt 1               # parallel-rne.mlir:116:9
	addli r12, zero, 5
	xwait r24, 0
	xwait r12, 0
	lock zero, zero
	addli r12, zero, 128
	ds_cfg r24, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r12, zero, 13
	addli r12, zero, 6
	shuffle_batch r2, r11, r16, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r23, 0
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r12, zero, 40
	addli r25, zero, 6
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	mod.s r11, r8, r25
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	mod.s r12, r7, r12
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	slli r17, r11, 15
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	slli r11, r12, 15
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	lui r12, 80
	add.s r12, r17, r12
	.loc	1 132 9                         # parallel-rne.mlir:132:9
	addli r17, zero, 7
	beq r10, r17, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	bneq r10, r25, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	addli r2, zero, 18
	addli r11, zero, 4096
	sll.d r[17:18], r[21:22], r2
	addli r2, zero, 7
	xwait r2, 0
	load.d r[19:20], -456(r30)              # 8-byte Folded Reload
	lock zero, r23
	addli r2, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[17:18], r[19:20], r[17:18]
	dma_cfg zero, r18, zero, 2
	dma_cfg r12, r17, r2, 3
	dma_cfg r2, r11, r16, 4
	dma_run zero
	unlock r23
	xsignal r25, 0
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 133 9                         # parallel-rne.mlir:133:9
	addli r2, zero, 9
	xwait r25, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r24, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 7
	shuffle_coa r11, r12, r16, 2
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	j .LBB0_26
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 6
	lui r25, 524288
	.loc	1 135 9 is_stmt 1               # parallel-rne.mlir:135:9
	bneq r10, r23, .LBB0_11
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	addli r12, zero, 8
	xwait r23, 0
	addli r21, zero, 1
	addli r22, zero, 0
	addli r25, zero, 128
	xwait r12, 0
	addli r12, zero, 1
	beq r9, zero, .LBB0_24
.LBB0_23:                               # %.preheader132
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r17, r22, 14
	slli r18, r22, 8
	lock zero, r12
	addli r22, zero, 1
	mm_cfg r16, r16, r25, 0
	or r17, r17, r11
	or r18, r18, r28
	mm_cfg r23, r23, r12, 2
	mm_acc r18, r2, r17, 8
	andi r17, r21, 1
	addli r21, zero, 0
	unlock r12
	bneq r17, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r17, r22, 14
	slli r18, r22, 8
	lock zero, r12
	addli r22, zero, 1
	mm_cfg r16, r16, r25, 0
	or r17, r17, r11
	or r18, r18, r28
	mm_cfg r23, r23, r12, 2
	mm r18, r2, r17, 8
	andi r17, r21, 1
	addli r21, zero, 0
	unlock r12
	bneq r17, zero, .LBB0_24
.LBB0_25:                               # %.loopexit
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
.LBB0_26:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_27:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r12, zero, 6
	lui r25, 524288
	j .LBB0_11
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 109 15 is_stmt 1              # parallel-rne.mlir:109:15
	storeli.w r4, -428(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r6, -328(r30)
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	storeli.w r7, -300(r30)
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	storeli.w r8, -136(r30)
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	bneq r10, r23, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 146 13 is_stmt 1              # parallel-rne.mlir:146:13
	zext_int2long r[4:5], r5
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	loadli.w r8,  -108(r30)
	addli r10, zero, 2
	addli r11, zero, 1
	lui r9, 16
	zext_int2long r[6:7], r2
	mod.s r2, r8, r24
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	min.ul r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 128
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	max.ul r[6:7], r[6:7], r[4:5]
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	slli r2, r2, 9
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	sub.sl r[4:5], r[6:7], r[4:5]
	addli r6, zero, 128
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r7
	zext_int2long r[23:24], r6
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	min.ul r[14:15], r[4:5], r[23:24]
	lui r4, 128
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	addli r5, r8, 1
	add.s r2, r2, r4
	ori r4, r4, 1024
	storeli.w r5, -108(r30)
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	store.d r[14:15], -592(r30)             # 8-byte Folded Spill
	bneq r7, r11, .LBB0_32
# %bb.31:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[16:17], r[14:15], 0
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	load.d r[5:6], 16(r30)
	load.d r[14:15], -568(r30)              # 8-byte Folded Reload
	addli r7, zero, 20
	addli r9, zero, 4
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r8
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	xwait r7, 0
	lock zero, r9
	slli r7, r16, 2
	add.ul r[5:6], r[5:6], r[14:15]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r7, 3
	addli r2, zero, 512
	dma_cfg r2, r2, r11, 4
	addli r2, zero, 19
	dma_run zero
	unlock r9
	xsignal r2, 0
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	loadli.w r2,  -96(r30)
	mod.s r5, r2, r10
	addli r2, r2, 1
	storeli.w r2, -96(r30)
	slli r5, r5, 16
	add.s r22, r5, r4
	j .LBB0_36
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r5,  -96(r30)
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r8
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	mod.s r6, r5, r10
	addli r5, r5, 1
	storeli.w r5, -96(r30)
	slli r6, r6, 16
	add.s r22, r6, r4
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r4, zero, 5
	bneq r7, r4, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	xwait r5, 0
	addli r5, zero, 19
	xwait r5, 0
	addli r5, zero, 23
	xwait r5, 0
	lock zero, r10
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	ew_cfg r11, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r22, r4
	add.s r6, r28, r4
	addli r4, r4, 512
	dsmadd r5, r6, r2, 0
	bneq r4, r9, .LBB0_34
# %bb.35:                               # %.thread198
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 2
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r2, zero, 11
	addli r8, zero, 4095
	addli r5, zero, 4
	lui r7, 260096
	unlock r6
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 161 13 is_stmt 1              # parallel-rne.mlir:161:13
	loadli.w r2,  -84(r30)
	mod.s r4, r2, r6
	addli r2, r2, 1
	storeli.w r2, -84(r30)
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r6
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	slli r2, r4, 16
	loadli.w r4,  -612(r30)                 # 4-byte Folded Reload
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	ew_cfg zero, zero, zero, 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r4, r2, r4
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r8, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	storeli.w r4, -448(r30)                 # 4-byte Folded Spill
	hp_ssmul r4, r22, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r2, 0
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r2,  -72(r30)
	mod.s r4, r2, r6
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	loadli.w r2,  -616(r30)                 # 4-byte Folded Reload
	slli r4, r4, 16
	add.s r14, r4, r2
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r14, r22, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r2,  -60(r30)
	mod.s r4, r2, r6
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	loadli.w r2,  -620(r30)                 # 4-byte Folded Reload
	slli r4, r4, 16
	add.s r12, r4, r2
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	addli r2, zero, 30
	xwait r2, 0
	lock zero, r6
	addli r2, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r12, r14, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r2, 0
	addli r2, zero, 27
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r2, 0
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	loadli.w r2,  -48(r30)
	storeli.w r2, -556(r30)                 # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	j .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r2,  -84(r30)
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r4,  -72(r30)
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r7,  -60(r30)
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	loadli.w r9,  -48(r30)
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	mod.s r5, r2, r10
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	mod.s r6, r4, r10
	addli r4, r4, 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	addli r2, r2, 1
	storeli.w r9, -556(r30)                 # 4-byte Folded Spill
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	storeli.w r4, -72(r30)
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	storeli.w r2, -84(r30)
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	mod.s r2, r7, r10
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	slli r4, r5, 16
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	slli r5, r6, 16
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r6,  -612(r30)                 # 4-byte Folded Reload
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	slli r2, r2, 16
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r4, r4, r6
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	storeli.w r4, -448(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -616(r30)                 # 4-byte Folded Reload
	add.s r14, r5, r4
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r5,  -620(r30)                 # 4-byte Folded Reload
	addli r4, r7, 1
	storeli.w r4, -60(r30)
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	addli r4, r9, 1
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	add.s r12, r2, r5
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r2, zero, 3
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	storeli.w r4, -48(r30)
	bneq r8, r2, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r2, zero, 11
	xwait r2, 0
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	addli r2, zero, 21
	xwait r2, 0
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	addli r2, zero, 27
	xwait r2, 0
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	addli r2, zero, 29
	xwait r2, 0
.LBB0_38:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	addli r2, zero, 255
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { lm, sm, gm }
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	csr_set csr5, r2
	sub.s r2, r28, r14
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
	sub.s r2, r28, r22
	storeli.w r2, -540(r30)                 # 4-byte Folded Spill
	sub.s r2, r28, r12
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	addli r2, zero, 15
	zext_int2long r[4:5], r2
	addli r2, zero, 127
	zext_int2long r[6:7], r2
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	store.d r[4:5], -512(r30)               # 8-byte Folded Spill
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	sync_core
	storeli.w r22, -456(r30)                # 4-byte Folded Spill
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	bneq r2, zero, .LBB0_65
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], zero
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block709
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	load.d r[4:5], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -464(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_64
.LBB0_41:                               # %.preheader130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	store.d r[4:5], -464(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[4:5], r2
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_43
	j .LBB0_56
.LBB0_42:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.ul r4, r[19:20], r[6:7]
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	add.s r2, r28, r2
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	stores.w r5, 0(r2)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r4, zero, .LBB0_40
.LBB0_43:                               # %scalar.ph701
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[4:5], r[19:20], r[17:18]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r4, r22, r2
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r5, r12, r2
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r4, 0(r4)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	loads.w r21, 0(r5)
	lui r5, 523264
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r4, r4, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	beq r4, r3, .LBB0_45
# %bb.44:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_45:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	add.s r8, r14, r2
	loads.w r8, 0(r8)
	and r11, r8, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r11, zero, .LBB0_53
# %bb.46:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_54
.LBB0_47:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	beq r11, r3, .LBB0_49
.LBB0_48:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
.LBB0_49:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r8, r3, r4
	lui r4, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r8, zero, .LBB0_51
# %bb.50:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r21, 0
.LBB0_51:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r8, r3, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r8, zero, .LBB0_42
# %bb.52:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_42
.LBB0_53:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	addli r15, r21, 0
	lui r21, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	beq r4, zero, .LBB0_47
.LBB0_54:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r11, r3, .LBB0_48
	j .LBB0_49
.LBB0_55:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	add.s r2, r28, r2
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	seteq.d r8, r[19:20], r[23:24]
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r5, 0(r2)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	bneq r8, zero, .LBB0_40
.LBB0_56:                               # %vector.body703
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r2, r4, 2
	add.s r15, r14, r2
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r21, r22, r2
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r4, 0(r15)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r5, 0(r21)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	and r4, r4, r26
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r5, r5, r26
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	seteq r11, r4, r3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	seteq r8, r4, zero
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	seteq r27, r5, r3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r22, r5, zero
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r5, r11, r22
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r8, r8, r27
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r22, r12, r2
	lui r11, 523264
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	or r5, r5, r8
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	or r4, r4, r5
	lui r5, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_58
# %bb.57:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r22)
.LBB0_58:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r4, 4(r15)
	loads.w r8, 4(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r25, r4, zero
	seteq r27, r8, zero
	seteq r10, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r27
	and r9, r25, r10
	lui r27, 523264
	or r8, r8, r9
	or r4, r4, r8
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_60
# %bb.59:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r22)
.LBB0_60:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r4, 8(r15)
	loads.w r8, 8(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r16, r4, zero
	seteq r10, r8, zero
	seteq r25, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r10
	and r9, r16, r25
	or r8, r8, r9
	or r8, r4, r8
	lui r4, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r8, zero, .LBB0_62
# %bb.61:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r22)
.LBB0_62:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r8, 12(r15)
	loads.w r9, 12(r21)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r3
	seteq r21, r8, zero
	seteq r15, r9, zero
	seteq r16, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r10, r15
	and r10, r21, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r8, zero, .LBB0_55
# %bb.63:                               # %vector.body703
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_55
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	mfence { sm }
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 31
	zext_int2long r[4:5], r4
	.loc	1 215 7 is_stmt 1               # parallel-rne.mlir:215:7
	store.d r[4:5], -464(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	bneq r2, r4, .LBB0_92
# %bb.66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], r4
	.loc	1 215 7                         # parallel-rne.mlir:215:7
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_68
.LBB0_67:                               # %middle.block694
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 222 9 is_stmt 1               # parallel-rne.mlir:222:9
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	load.d r[8:9], -472(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_91
.LBB0_68:                               # %.preheader129
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 223 11 is_stmt 1              # parallel-rne.mlir:223:11
	store.d r[4:5], -472(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[4:5], r2
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_70
	j .LBB0_83
.LBB0_69:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.ul r4, r[19:20], r[6:7]
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	add.s r2, r28, r2
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	stores.w r5, 0(r2)
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	beq r4, zero, .LBB0_67
.LBB0_70:                               # %scalar.ph686
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.ul r[4:5], r[19:20], r[17:18]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r4, r22, r2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r5, r12, r2
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	loads.w r4, 0(r4)
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r21, 0(r5)
	lui r5, 523264
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r4, r4, r26
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r4, r3, .LBB0_72
# %bb.71:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_72:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	add.s r8, r14, r2
	loads.w r8, 0(r8)
	and r11, r8, r26
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r11, zero, .LBB0_80
# %bb.73:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_81
.LBB0_74:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	beq r11, r3, .LBB0_76
.LBB0_75:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
.LBB0_76:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.u r8, r3, r4
	lui r4, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r8, zero, .LBB0_78
# %bb.77:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r21, 0
.LBB0_78:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.u r8, r3, r11
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r8, zero, .LBB0_69
# %bb.79:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_69
.LBB0_80:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	addli r15, r21, 0
	lui r21, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r4, zero, .LBB0_74
.LBB0_81:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r11, r3, .LBB0_75
	j .LBB0_76
.LBB0_82:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 223 11 is_stmt 1              # parallel-rne.mlir:223:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	add.s r2, r28, r2
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	seteq.d r8, r[19:20], r[23:24]
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r5, 0(r2)
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	bneq r8, zero, .LBB0_67
.LBB0_83:                               # %vector.body688
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r2, r4, 2
	add.s r15, r14, r2
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r21, r22, r2
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loads.w r4, 0(r15)
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	loads.w r5, 0(r21)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r4, r4, r26
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r5, r5, r26
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	seteq r10, r4, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	seteq r22, r4, zero
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	seteq r11, r5, zero
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	seteq r16, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r5, r10, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r10, r22, r16
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r22, r12, r2
	lui r11, 523264
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	or r5, r5, r10
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	or r4, r4, r5
	lui r5, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_85
# %bb.84:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r22)
.LBB0_85:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r4, 4(r15)
	loads.w r10, 4(r21)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r25, r10, zero
	seteq r8, r4, zero
	seteq r27, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r4, r4, r8
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_87
# %bb.86:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r22)
.LBB0_87:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r4, 8(r15)
	loads.w r8, 8(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r25, r4, zero
	seteq r10, r8, zero
	seteq r16, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r4, r8
	lui r4, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r8, zero, .LBB0_89
# %bb.88:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r22)
.LBB0_89:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r8, 12(r15)
	loads.w r9, 12(r21)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r3
	seteq r21, r8, zero
	seteq r15, r9, zero
	seteq r16, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r10, r15
	and r10, r21, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r8, zero, .LBB0_82
# %bb.90:                               # %vector.body688
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_82
.LBB0_91:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 215 7 is_stmt 1               # parallel-rne.mlir:215:7
	mfence { sm }
.LBB0_92:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[4:5], r2
	.loc	1 250 7 is_stmt 1               # parallel-rne.mlir:250:7
	core_id r2
	store.d r[4:5], -472(r30)               # 8-byte Folded Spill
	addli r4, zero, 2
	bneq r2, r4, .LBB0_119
# %bb.93:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 250 7                         # parallel-rne.mlir:250:7
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_95
.LBB0_94:                               # %middle.block679
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 257 9 is_stmt 1               # parallel-rne.mlir:257:9
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	load.d r[8:9], -480(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_118
.LBB0_95:                               # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 258 11 is_stmt 1              # parallel-rne.mlir:258:11
	store.d r[4:5], -480(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[4:5], r2
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_97
	j .LBB0_110
.LBB0_96:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.ul r4, r[19:20], r[6:7]
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	add.s r2, r28, r2
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	stores.w r5, 0(r2)
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	beq r4, zero, .LBB0_94
.LBB0_97:                               # %scalar.ph671
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.ul r[4:5], r[19:20], r[17:18]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.s r4, r22, r2
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r5, r12, r2
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loads.w r4, 0(r4)
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	loads.w r21, 0(r5)
	lui r5, 523264
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r4, r4, r26
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r4, r3, .LBB0_99
# %bb.98:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_99:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	add.s r8, r14, r2
	loads.w r8, 0(r8)
	and r11, r8, r26
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r11, zero, .LBB0_107
# %bb.100:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_108
.LBB0_101:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	beq r11, r3, .LBB0_103
.LBB0_102:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
.LBB0_103:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r8, r3, r4
	lui r4, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r8, zero, .LBB0_105
# %bb.104:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r21, 0
.LBB0_105:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r8, r3, r11
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r8, zero, .LBB0_96
# %bb.106:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_96
.LBB0_107:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	addli r15, r21, 0
	lui r21, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r4, zero, .LBB0_101
.LBB0_108:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r11, r3, .LBB0_102
	j .LBB0_103
.LBB0_109:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 258 11 is_stmt 1              # parallel-rne.mlir:258:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	add.s r2, r28, r2
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	seteq.d r8, r[19:20], r[23:24]
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r5, 0(r2)
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	bneq r8, zero, .LBB0_94
.LBB0_110:                              # %vector.body673
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r2, r4, 2
	add.s r15, r14, r2
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.s r21, r22, r2
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	loads.w r4, 0(r15)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loads.w r5, 0(r21)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r4, r4, r26
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r5, r5, r26
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	seteq r10, r4, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	seteq r22, r4, zero
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	seteq r11, r5, zero
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	seteq r16, r5, r3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r5, r10, r11
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r10, r22, r16
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r22, r12, r2
	lui r11, 523264
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	or r5, r5, r10
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	or r4, r4, r5
	lui r5, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_112
# %bb.111:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r22)
.LBB0_112:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r4, 4(r15)
	loads.w r10, 4(r21)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r25, r10, zero
	seteq r8, r4, zero
	seteq r27, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r4, r4, r8
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_114
# %bb.113:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r22)
.LBB0_114:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r4, 8(r15)
	loads.w r8, 8(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r25, r4, zero
	seteq r10, r8, zero
	seteq r16, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r4, r8
	lui r4, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r8, zero, .LBB0_116
# %bb.115:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r22)
.LBB0_116:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r8, 12(r15)
	loads.w r9, 12(r21)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r3
	seteq r21, r8, zero
	seteq r15, r9, zero
	seteq r16, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r10, r15
	and r10, r21, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r8, zero, .LBB0_109
# %bb.117:                              # %vector.body673
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_109
.LBB0_118:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 250 7 is_stmt 1               # parallel-rne.mlir:250:7
	mfence { sm }
.LBB0_119:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[4:5], r2
	.loc	1 285 7 is_stmt 1               # parallel-rne.mlir:285:7
	core_id r2
	store.d r[4:5], -480(r30)               # 8-byte Folded Spill
	addli r4, zero, 3
	bneq r2, r4, .LBB0_146
# %bb.120:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 285 7                         # parallel-rne.mlir:285:7
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_122
.LBB0_121:                              # %middle.block664
                                        #   in Loop: Header=BB0_122 Depth=2
	.loc	1 292 9 is_stmt 1               # parallel-rne.mlir:292:9
	load.d r[4:5], -480(r30)                # 8-byte Folded Reload
	load.d r[8:9], -488(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_145
.LBB0_122:                              # %.preheader127
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_124 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	store.d r[4:5], -488(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[4:5], r2
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_124
	j .LBB0_137
.LBB0_123:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	setlt.ul r4, r[19:20], r[6:7]
	.loc	1 315 13                        # parallel-rne.mlir:315:13
	add.s r2, r28, r2
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 315 13                        # parallel-rne.mlir:315:13
	stores.w r5, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	beq r4, zero, .LBB0_121
.LBB0_124:                              # %scalar.ph656
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[4:5], r[19:20], r[17:18]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.s r4, r22, r2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.s r5, r12, r2
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	loads.w r4, 0(r4)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	loads.w r21, 0(r5)
	lui r5, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	and r4, r4, r26
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	beq r4, r3, .LBB0_126
# %bb.125:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_126:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	add.s r8, r14, r2
	loads.w r8, 0(r8)
	and r11, r8, r26
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r11, zero, .LBB0_134
# %bb.127:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r4, zero, .LBB0_135
.LBB0_128:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	beq r11, r3, .LBB0_130
.LBB0_129:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
.LBB0_130:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	setlt.u r8, r3, r4
	lui r4, 523264
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r8, zero, .LBB0_132
# %bb.131:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r21, 0
.LBB0_132:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	setlt.u r8, r3, r11
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r8, zero, .LBB0_123
# %bb.133:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_123
.LBB0_134:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	addli r15, r21, 0
	lui r21, 523264
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	beq r4, zero, .LBB0_128
.LBB0_135:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r11, r3, .LBB0_129
	j .LBB0_130
.LBB0_136:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 315 13                        # parallel-rne.mlir:315:13
	add.s r2, r28, r2
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	seteq.d r8, r[19:20], r[23:24]
	.loc	1 315 13                        # parallel-rne.mlir:315:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r5, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	bneq r8, zero, .LBB0_121
.LBB0_137:                              # %vector.body658
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r2, r4, 2
	add.s r15, r14, r2
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.s r21, r22, r2
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	loads.w r4, 0(r15)
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	loads.w r5, 0(r21)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r4, r4, r26
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	and r5, r5, r26
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	seteq r10, r4, r3
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	seteq r22, r4, zero
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	seteq r11, r5, zero
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	seteq r16, r5, r3
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r5, r10, r11
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r10, r22, r16
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.s r22, r12, r2
	lui r11, 523264
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	or r5, r5, r10
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	or r4, r4, r5
	lui r5, 523264
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r4, zero, .LBB0_139
# %bb.138:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r22)
.LBB0_139:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r4, 4(r15)
	loads.w r10, 4(r21)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r25, r10, zero
	seteq r8, r4, zero
	seteq r27, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r8, r8, r27
	and r9, r16, r25
	lui r27, 523264
	or r8, r9, r8
	or r4, r4, r8
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r4, zero, .LBB0_141
# %bb.140:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r22)
.LBB0_141:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r4, 8(r15)
	loads.w r8, 8(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r25, r4, zero
	seteq r10, r8, zero
	seteq r16, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r10
	and r9, r25, r16
	or r8, r8, r9
	or r8, r4, r8
	lui r4, 523264
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r8, zero, .LBB0_143
# %bb.142:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r22)
.LBB0_143:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r8, 12(r15)
	loads.w r9, 12(r21)
	lui r25, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r3
	seteq r21, r8, zero
	seteq r15, r9, zero
	seteq r16, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r10, r15
	and r10, r21, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	bneq r8, zero, .LBB0_136
# %bb.144:                              # %vector.body658
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_136
.LBB0_145:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 285 7 is_stmt 1               # parallel-rne.mlir:285:7
	mfence { sm }
.LBB0_146:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	zext_int2long r[4:5], r2
	.loc	1 320 7 is_stmt 1               # parallel-rne.mlir:320:7
	core_id r2
	store.d r[4:5], -488(r30)               # 8-byte Folded Spill
	addli r4, zero, 4
	bneq r2, r4, .LBB0_173
# %bb.147:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 320 7                         # parallel-rne.mlir:320:7
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_149
.LBB0_148:                              # %middle.block649
                                        #   in Loop: Header=BB0_149 Depth=2
	.loc	1 327 9 is_stmt 1               # parallel-rne.mlir:327:9
	load.d r[4:5], -488(r30)                # 8-byte Folded Reload
	load.d r[8:9], -496(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_172
.LBB0_149:                              # %.preheader126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_151 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[8:9], zero
	.loc	1 328 11 is_stmt 1              # parallel-rne.mlir:328:11
	store.d r[4:5], -496(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	loadli.w r2,  -504(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_151
	j .LBB0_164
.LBB0_150:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	add.s r2, r28, r2
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	stores.w r5, 0(r2)
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	beq r4, zero, .LBB0_148
.LBB0_151:                              # %scalar.ph641
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.ul r[4:5], r[8:9], r[19:20]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	add.s r4, r22, r2
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.s r5, r12, r2
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	loads.w r4, 0(r4)
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	loads.w r21, 0(r5)
	lui r5, 523264
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r4, r4, r26
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	beq r4, r3, .LBB0_153
# %bb.152:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_153:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	add.s r10, r14, r2
	loads.w r10, 0(r10)
	and r11, r10, r26
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r11, zero, .LBB0_161
# %bb.154:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r4, zero, .LBB0_162
.LBB0_155:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	beq r11, r3, .LBB0_157
.LBB0_156:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
.LBB0_157:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r10, r3, r4
	lui r4, 523264
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r10, zero, .LBB0_159
# %bb.158:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r21, 0
.LBB0_159:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r10, r3, r11
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r10, zero, .LBB0_150
# %bb.160:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_150
.LBB0_161:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	addli r15, r21, 0
	lui r21, 523264
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	beq r4, zero, .LBB0_155
.LBB0_162:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r11, r3, .LBB0_156
	j .LBB0_157
.LBB0_163:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 328 11 is_stmt 1              # parallel-rne.mlir:328:11
	addli.d r[8:9], r[8:9], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	add.s r2, r28, r2
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	seteq.d r10, r[8:9], r[23:24]
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r5, 0(r2)
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	bneq r10, zero, .LBB0_148
.LBB0_164:                              # %vector.body643
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.ul r[4:5], r[8:9], r[19:20]
	slli r2, r4, 2
	add.s r15, r14, r2
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	add.s r21, r22, r2
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	loads.w r4, 0(r15)
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	loads.w r5, 0(r21)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r4, r4, r26
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r5, r5, r26
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	seteq r10, r4, r3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	seteq r22, r4, zero
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	seteq r11, r5, zero
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	seteq r16, r5, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	and r5, r10, r11
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r10, r22, r16
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.s r22, r12, r2
	lui r11, 523264
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	or r5, r5, r10
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	or r4, r4, r5
	lui r5, 523264
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r4, zero, .LBB0_166
# %bb.165:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r22)
.LBB0_166:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r4, 4(r15)
	loads.w r10, 4(r21)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r17, r4, zero
	seteq r25, r10, zero
	seteq r27, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r10, r16, r25
	and r16, r17, r27
	lui r27, 523264
	or r10, r10, r16
	or r4, r4, r10
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r4, zero, .LBB0_168
# %bb.167:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r22)
.LBB0_168:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r4, 8(r15)
	loads.w r10, 8(r21)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r25, r4, zero
	seteq r17, r10, zero
	seteq r18, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r10, r16, r17
	and r16, r25, r18
	or r10, r10, r16
	or r10, r4, r10
	lui r4, 523264
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r10, zero, .LBB0_170
# %bb.169:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r22)
.LBB0_170:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r10, 12(r15)
	loads.w r15, 12(r21)
	lui r25, 524288
	and r10, r10, r26
	and r15, r15, r26
	seteq r16, r10, r3
	seteq r21, r10, zero
	seteq r17, r15, zero
	seteq r18, r15, r3
	max.u r10, r10, r15
	setlt.u r10, r3, r10
	and r15, r16, r17
	and r16, r21, r18
	or r15, r15, r16
	or r10, r10, r15
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r10, zero, .LBB0_163
# %bb.171:                              # %vector.body643
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_163
.LBB0_172:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 320 7 is_stmt 1               # parallel-rne.mlir:320:7
	mfence { sm }
.LBB0_173:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 95
	zext_int2long r[4:5], r2
	.loc	1 355 7 is_stmt 1               # parallel-rne.mlir:355:7
	core_id r2
	store.d r[4:5], -496(r30)               # 8-byte Folded Spill
	addli r4, zero, 5
	bneq r2, r4, .LBB0_200
# %bb.174:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_176
.LBB0_175:                              # %middle.block634
                                        #   in Loop: Header=BB0_176 Depth=2
	.loc	1 362 9 is_stmt 1               # parallel-rne.mlir:362:9
	load.d r[4:5], -496(r30)                # 8-byte Folded Reload
	load.d r[8:9], -504(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_199
.LBB0_176:                              # %.preheader125
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_191 Depth 3
                                        #       Child Loop BB0_178 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[8:9], zero
	.loc	1 363 11 is_stmt 1              # parallel-rne.mlir:363:11
	store.d r[4:5], -504(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_178
	j .LBB0_191
.LBB0_177:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	add.s r2, r28, r2
	.loc	1 363 11                        # parallel-rne.mlir:363:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	stores.w r5, 0(r2)
	.loc	1 363 11                        # parallel-rne.mlir:363:11
	beq r4, zero, .LBB0_175
.LBB0_178:                              # %scalar.ph626
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_176 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.ul r[4:5], r[8:9], r[21:22]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	add.s r5, r12, r2
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	add.s r4, r4, r2
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	loads.w r19, 0(r5)
	lui r5, 523264
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	loads.w r4, 0(r4)
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	and r4, r4, r26
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	beq r4, r3, .LBB0_180
# %bb.179:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_180:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	add.s r10, r14, r2
	loads.w r10, 0(r10)
	and r11, r10, r26
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r11, zero, .LBB0_188
# %bb.181:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r4, zero, .LBB0_189
.LBB0_182:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	beq r11, r3, .LBB0_184
.LBB0_183:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r15, 0
.LBB0_184:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r10, r3, r4
	lui r4, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r10, zero, .LBB0_186
# %bb.185:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r19, 0
.LBB0_186:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r10, r3, r11
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r10, zero, .LBB0_177
# %bb.187:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r4, 0
	j .LBB0_177
.LBB0_188:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	addli r15, r19, 0
	lui r19, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	beq r4, zero, .LBB0_182
.LBB0_189:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r15, 0
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r11, r3, .LBB0_183
	j .LBB0_184
.LBB0_190:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 363 11 is_stmt 1              # parallel-rne.mlir:363:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	add.s r2, r28, r2
	.loc	1 363 11                        # parallel-rne.mlir:363:11
	seteq.d r10, r[8:9], r[23:24]
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r27, 4(r2)
	stores.w r5, 0(r2)
	.loc	1 363 11                        # parallel-rne.mlir:363:11
	bneq r10, zero, .LBB0_175
.LBB0_191:                              # %vector.body628
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_176 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.s r15, r14, r2
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	add.s r19, r4, r2
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	loads.w r4, 0(r15)
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	loads.w r5, 0(r19)
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	and r4, r4, r26
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	and r5, r5, r26
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	seteq r10, r4, r3
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	seteq r20, r4, zero
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	seteq r11, r5, zero
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	seteq r16, r5, r3
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r5, r10, r11
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	and r10, r20, r16
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	add.s r20, r12, r2
	lui r11, 523264
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	or r5, r5, r10
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	or r4, r4, r5
	lui r5, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r4, zero, .LBB0_193
# %bb.192:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_193:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	loads.w r4, 4(r15)
	loads.w r10, 4(r19)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r17, r4, zero
	seteq r25, r10, zero
	seteq r27, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r10, r16, r25
	and r16, r17, r27
	lui r27, 523264
	or r10, r10, r16
	or r4, r4, r10
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r4, zero, .LBB0_195
# %bb.194:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_195:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	loads.w r4, 8(r15)
	loads.w r10, 8(r19)
	and r4, r4, r26
	and r10, r10, r26
	seteq r16, r4, r3
	seteq r25, r4, zero
	seteq r17, r10, zero
	seteq r18, r10, r3
	max.u r4, r4, r10
	setlt.u r4, r3, r4
	and r10, r16, r17
	and r16, r25, r18
	or r10, r10, r16
	or r10, r4, r10
	lui r4, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r10, zero, .LBB0_197
# %bb.196:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r20)
.LBB0_197:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	loads.w r10, 12(r15)
	loads.w r15, 12(r19)
	lui r25, 524288
	and r10, r10, r26
	and r15, r15, r26
	seteq r16, r10, r3
	seteq r19, r10, zero
	seteq r17, r15, zero
	seteq r18, r15, r3
	max.u r10, r10, r15
	setlt.u r10, r3, r10
	and r15, r16, r17
	and r16, r19, r18
	or r15, r15, r16
	or r10, r10, r15
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	bneq r10, zero, .LBB0_190
# %bb.198:                              # %vector.body628
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_190
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 355 7 is_stmt 1               # parallel-rne.mlir:355:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_200:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	zext_int2long r[4:5], r2
	.loc	1 390 7 is_stmt 1               # parallel-rne.mlir:390:7
	core_id r2
	store.d r[4:5], -504(r30)               # 8-byte Folded Spill
	addli r4, zero, 6
	bneq r2, r4, .LBB0_229
# %bb.201:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_203
.LBB0_202:                              # %middle.block619
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 397 9 is_stmt 1               # parallel-rne.mlir:397:9
	load.d r[4:5], -504(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_228
.LBB0_203:                              # %.preheader124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_220 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 398 11 is_stmt 1              # parallel-rne.mlir:398:11
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_218
# %bb.204:                              # %scalar.ph611.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_206
.LBB0_205:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 398 11                        # parallel-rne.mlir:398:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 420 13 is_stmt 1              # parallel-rne.mlir:420:13
	add.s r2, r28, r2
	.loc	1 398 11                        # parallel-rne.mlir:398:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 420 13                        # parallel-rne.mlir:420:13
	stores.w r11, 0(r2)
	.loc	1 398 11                        # parallel-rne.mlir:398:11
	beq r10, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph611
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r18, 523264
	slli r2, r10, 2
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	add.s r10, r22, r2
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	add.s r11, r12, r2
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	loads.w r10, 0(r10)
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	loads.w r19, 0(r11)
	lui r11, 523264
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	and r15, r10, r26
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	beq r15, r3, .LBB0_208
# %bb.207:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_208:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	add.s r10, r14, r2
	loads.w r10, 0(r10)
	and r17, r10, r26
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r17, zero, .LBB0_216
# %bb.209:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r15, zero, .LBB0_217
.LBB0_210:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	beq r17, r3, .LBB0_212
.LBB0_211:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_212:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r10, zero, .LBB0_214
# %bb.213:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_214:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	setlt.u r10, r3, r17
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r10, zero, .LBB0_205
# %bb.215:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_205
.LBB0_216:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	beq r15, zero, .LBB0_210
.LBB0_217:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r17, r3, .LBB0_211
	j .LBB0_212
.LBB0_218:                              # %vector.body613.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_220
.LBB0_219:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 398 11 is_stmt 1              # parallel-rne.mlir:398:11
	addli.d r[18:19], r[18:19], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 420 13                        # parallel-rne.mlir:420:13
	add.s r2, r28, r2
	.loc	1 398 11                        # parallel-rne.mlir:398:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 420 13                        # parallel-rne.mlir:420:13
	stores.w r5, 12(r2)
	stores.w r17, 8(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 398 11                        # parallel-rne.mlir:398:11
	bneq r10, zero, .LBB0_202
.LBB0_220:                              # %vector.body613
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	add.s r11, r14, r2
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	add.s r15, r22, r2
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	loads.w r4, 0(r11)
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	loads.w r5, 0(r15)
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	and r4, r4, r26
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	and r5, r5, r26
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	seteq r10, r4, r3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	seteq r20, r4, zero
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	seteq r16, r5, zero
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	seteq r17, r5, r3
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	and r5, r10, r16
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	and r10, r20, r17
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	add.s r20, r12, r2
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	or r5, r5, r10
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r10, zero, .LBB0_222
# %bb.221:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_222:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r21, r10, zero
	seteq r25, r16, zero
	seteq r27, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r25
	and r17, r21, r27
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r10, zero, .LBB0_224
# %bb.223:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_224:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	or r16, r16, r17
	lui r17, 523264
	or r10, r10, r16
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r10, zero, .LBB0_226
# %bb.225:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 8(r20)
.LBB0_226:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	lui r25, 524288
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r22, r10, zero
	seteq r16, r11, zero
	seteq r21, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r22, r21
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	bneq r10, zero, .LBB0_219
# %bb.227:                              # %vector.body613
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_219
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 390 7 is_stmt 1               # parallel-rne.mlir:390:7
	mfence { sm }
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 425 7                         # parallel-rne.mlir:425:7
	core_id r2
	addli r4, zero, 7
	bneq r2, r4, .LBB0_258
# %bb.230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -536(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 425 7                         # parallel-rne.mlir:425:7
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_232
.LBB0_231:                              # %middle.block604
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[4:5], -520(r30)                # 8-byte Folded Reload
	.loc	1 432 9 is_stmt 1               # parallel-rne.mlir:432:9
	setlt.ul r2, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_257
.LBB0_232:                              # %.preheader123
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_249 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 433 11 is_stmt 1              # parallel-rne.mlir:433:11
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_247
# %bb.233:                              # %scalar.ph596.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 433 11                        # parallel-rne.mlir:433:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 455 13 is_stmt 1              # parallel-rne.mlir:455:13
	add.s r2, r28, r2
	.loc	1 433 11                        # parallel-rne.mlir:433:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 455 13                        # parallel-rne.mlir:455:13
	stores.w r11, 0(r2)
	.loc	1 433 11                        # parallel-rne.mlir:433:11
	beq r10, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph596
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r18, 523264
	slli r2, r10, 2
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	add.s r10, r22, r2
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	add.s r11, r12, r2
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	loads.w r10, 0(r10)
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	loads.w r19, 0(r11)
	lui r11, 523264
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	and r15, r10, r26
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	beq r15, r3, .LBB0_237
# %bb.236:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_237:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	add.s r10, r14, r2
	loads.w r10, 0(r10)
	and r17, r10, r26
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r17, zero, .LBB0_245
# %bb.238:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r15, zero, .LBB0_246
.LBB0_239:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	beq r17, r3, .LBB0_241
.LBB0_240:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_241:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r10, zero, .LBB0_243
# %bb.242:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_243:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	setlt.u r10, r3, r17
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r10, zero, .LBB0_234
# %bb.244:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_234
.LBB0_245:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	beq r15, zero, .LBB0_239
.LBB0_246:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r17, r3, .LBB0_240
	j .LBB0_241
.LBB0_247:                              # %vector.body598.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_249
.LBB0_248:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 433 11 is_stmt 1              # parallel-rne.mlir:433:11
	addli.d r[18:19], r[18:19], 4
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 455 13                        # parallel-rne.mlir:455:13
	add.s r2, r28, r2
	.loc	1 433 11                        # parallel-rne.mlir:433:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 455 13                        # parallel-rne.mlir:455:13
	stores.w r5, 12(r2)
	stores.w r17, 8(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 433 11                        # parallel-rne.mlir:433:11
	bneq r10, zero, .LBB0_231
.LBB0_249:                              # %vector.body598
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	add.s r11, r14, r2
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	add.s r15, r22, r2
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	loads.w r4, 0(r11)
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	loads.w r5, 0(r15)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	and r4, r4, r26
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	and r5, r5, r26
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	seteq r10, r4, r3
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	seteq r20, r4, zero
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	seteq r16, r5, zero
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	seteq r17, r5, r3
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	and r5, r10, r16
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r10, r20, r17
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	add.s r20, r12, r2
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	or r5, r5, r10
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r10, zero, .LBB0_251
# %bb.250:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_251:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r21, r10, zero
	seteq r25, r16, zero
	seteq r27, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r25
	and r17, r21, r27
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r10, zero, .LBB0_253
# %bb.252:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_253:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	or r16, r16, r17
	lui r17, 523264
	or r10, r10, r16
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r10, zero, .LBB0_255
# %bb.254:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 8(r20)
.LBB0_255:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	lui r25, 524288
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r22, r10, zero
	seteq r16, r11, zero
	seteq r21, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r22, r21
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	bneq r10, zero, .LBB0_248
# %bb.256:                              # %vector.body598
                                        #   in Loop: Header=BB0_249 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_248
.LBB0_257:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 425 7 is_stmt 1               # parallel-rne.mlir:425:7
	mfence { sm }
.LBB0_258:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	addli r2, zero, 255
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r5
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	csr_set csr5, r2
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	addli r2, zero, 3
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	sync_core
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	bneq r5, r2, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	addli r8, zero, 2
	xsignal r2, 0
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 463 7                         # parallel-rne.mlir:463:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 466 13                        # parallel-rne.mlir:466:13
	loadli.w r2,  -36(r30)
	mod.s r4, r2, r8
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	loadli.w r2,  -628(r30)                 # 4-byte Folded Reload
	slli r4, r4, 16
	add.s r14, r4, r2
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r2, zero, 31
	xwait r2, 0
	.loc	1 471 7                         # parallel-rne.mlir:471:7
	addli r2, zero, 35
	xwait r2, 0
	j .LBB0_262
.LBB0_260:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 466 13                        # parallel-rne.mlir:466:13
	loadli.w r2,  -36(r30)
	addli r8, zero, 2
	loadli.w r9,  -628(r30)                 # 4-byte Folded Reload
	mod.s r4, r2, r8
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r2, zero, 5
	.loc	1 466 13                        # parallel-rne.mlir:466:13
	slli r4, r4, 16
	add.s r14, r4, r9
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	bneq r5, r2, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	lui r4, 260096
	addli r5, zero, 4095
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	lock zero, r8
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -644(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r4, r2, zero, 0
	addli r2, zero, 4
	addli r4, zero, 13
	ew_cfg zero, r5, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd r14, r22, r28, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r4, 0
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	lock zero, r8
	ew_cfg zero, zero, zero, 1
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r4, zero, zero, 0
	ew_cfg zero, r5, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	addli r2, zero, 31
	hp_ssmul r14, r14, r14, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r2, 0
.LBB0_262:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	.loc	1 473 7 is_stmt 1               # parallel-rne.mlir:473:7
	xfence
	loadli.w r4,  -624(r30)                 # 4-byte Folded Reload
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r8
	slli r2, r2, 16
	add.s r12, r2, r4
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r12, r14
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	sync_core
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	beq r2, zero, .LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_270
	j .LBB0_276
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 476 7 is_stmt 1               # parallel-rne.mlir:476:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	zext_int2long r[4:5], zero
	j .LBB0_266
.LBB0_265:                              # %middle.block589
                                        #   in Loop: Header=BB0_266 Depth=2
	.loc	1 483 9                         # parallel-rne.mlir:483:9
	load.d r[8:9], -512(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_269
.LBB0_266:                              # %.preheader122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_268 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 484 11 is_stmt 1              # parallel-rne.mlir:484:11
	beq r2, zero, .LBB0_268
.LBB0_267:                              # %scalar.ph582
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	add.s r10, r12, r10
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	loads.w r11, 0(r11)
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	stores.w r11, 0(r10)
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	bneq r15, zero, .LBB0_267
	j .LBB0_265
.LBB0_268:                              # %vector.body584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	slli r10, r10, 2
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	add.s r15, r14, r10
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	add.s r10, r12, r10
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	beq r11, zero, .LBB0_268
	j .LBB0_265
.LBB0_269:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	addli r4, zero, 1
	bneq r2, r4, .LBB0_276
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 16
	zext_int2long r[4:5], r4
	j .LBB0_272
.LBB0_271:                              # %middle.block579
                                        #   in Loop: Header=BB0_272 Depth=2
	.loc	1 499 9 is_stmt 1               # parallel-rne.mlir:499:9
	load.d r[8:9], -464(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_275
.LBB0_272:                              # %.preheader121
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_274 Depth 3
                                        #       Child Loop BB0_273 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 500 11 is_stmt 1              # parallel-rne.mlir:500:11
	beq r2, zero, .LBB0_274
.LBB0_273:                              # %scalar.ph572
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_272 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 503 13                        # parallel-rne.mlir:503:13
	add.s r10, r12, r10
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	loads.w r11, 0(r11)
	.loc	1 503 13                        # parallel-rne.mlir:503:13
	stores.w r11, 0(r10)
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	bneq r15, zero, .LBB0_273
	j .LBB0_271
.LBB0_274:                              # %vector.body574
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_272 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	slli r10, r10, 2
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	add.s r15, r14, r10
	.loc	1 503 13                        # parallel-rne.mlir:503:13
	add.s r10, r12, r10
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 503 13                        # parallel-rne.mlir:503:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	beq r11, zero, .LBB0_274
	j .LBB0_271
.LBB0_275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 508 7                         # parallel-rne.mlir:508:7
	core_id r2
	addli r4, zero, 2
	bneq r2, r4, .LBB0_283
# %bb.277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	addli r4, zero, 32
	.loc	1 508 7                         # parallel-rne.mlir:508:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r4
	zext_int2long r[4:5], r4
	j .LBB0_279
.LBB0_278:                              # %middle.block569
                                        #   in Loop: Header=BB0_279 Depth=2
	.loc	1 515 9 is_stmt 1               # parallel-rne.mlir:515:9
	load.d r[8:9], -472(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_282
.LBB0_279:                              # %.preheader120
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_280 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 516 11 is_stmt 1              # parallel-rne.mlir:516:11
	beq r2, zero, .LBB0_281
.LBB0_280:                              # %scalar.ph562
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 519 13                        # parallel-rne.mlir:519:13
	add.s r10, r12, r10
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	loads.w r11, 0(r11)
	.loc	1 519 13                        # parallel-rne.mlir:519:13
	stores.w r11, 0(r10)
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	bneq r15, zero, .LBB0_280
	j .LBB0_278
.LBB0_281:                              # %vector.body564
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	slli r10, r10, 2
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	add.s r15, r14, r10
	.loc	1 519 13                        # parallel-rne.mlir:519:13
	add.s r10, r12, r10
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 519 13                        # parallel-rne.mlir:519:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	beq r11, zero, .LBB0_281
	j .LBB0_278
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 508 7                         # parallel-rne.mlir:508:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 524 7                         # parallel-rne.mlir:524:7
	core_id r2
	addli r4, zero, 3
	bneq r2, r4, .LBB0_290
# %bb.284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 524 7                         # parallel-rne.mlir:524:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 48
	zext_int2long r[4:5], r4
	j .LBB0_286
.LBB0_285:                              # %middle.block559
                                        #   in Loop: Header=BB0_286 Depth=2
	.loc	1 531 9 is_stmt 1               # parallel-rne.mlir:531:9
	load.d r[8:9], -480(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_289
.LBB0_286:                              # %.preheader119
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_288 Depth 3
                                        #       Child Loop BB0_287 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 532 11 is_stmt 1              # parallel-rne.mlir:532:11
	beq r2, zero, .LBB0_288
.LBB0_287:                              # %scalar.ph552
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 532 11                        # parallel-rne.mlir:532:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 535 13                        # parallel-rne.mlir:535:13
	add.s r10, r12, r10
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	loads.w r11, 0(r11)
	.loc	1 535 13                        # parallel-rne.mlir:535:13
	stores.w r11, 0(r10)
	.loc	1 532 11                        # parallel-rne.mlir:532:11
	bneq r15, zero, .LBB0_287
	j .LBB0_285
.LBB0_288:                              # %vector.body554
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 532 11                        # parallel-rne.mlir:532:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	slli r10, r10, 2
	.loc	1 532 11                        # parallel-rne.mlir:532:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	add.s r15, r14, r10
	.loc	1 535 13                        # parallel-rne.mlir:535:13
	add.s r10, r12, r10
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 535 13                        # parallel-rne.mlir:535:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 532 11                        # parallel-rne.mlir:532:11
	beq r11, zero, .LBB0_288
	j .LBB0_285
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 524 7                         # parallel-rne.mlir:524:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_290:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 540 7                         # parallel-rne.mlir:540:7
	core_id r2
	addli r4, zero, 4
	bneq r2, r4, .LBB0_297
# %bb.291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 540 7                         # parallel-rne.mlir:540:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 64
	zext_int2long r[4:5], r4
	j .LBB0_293
.LBB0_292:                              # %middle.block549
                                        #   in Loop: Header=BB0_293 Depth=2
	.loc	1 547 9 is_stmt 1               # parallel-rne.mlir:547:9
	load.d r[8:9], -488(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_296
.LBB0_293:                              # %.preheader118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_294 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 548 11 is_stmt 1              # parallel-rne.mlir:548:11
	beq r2, zero, .LBB0_295
.LBB0_294:                              # %scalar.ph542
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_293 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r10, r12, r10
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	loads.w r11, 0(r11)
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r11, 0(r10)
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	bneq r15, zero, .LBB0_294
	j .LBB0_292
.LBB0_295:                              # %vector.body544
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_293 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	slli r10, r10, 2
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.s r15, r14, r10
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r10, r12, r10
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	beq r11, zero, .LBB0_295
	j .LBB0_292
.LBB0_296:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 540 7                         # parallel-rne.mlir:540:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_297:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	core_id r2
	addli r4, zero, 5
	bneq r2, r4, .LBB0_304
# %bb.298:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 80
	zext_int2long r[4:5], r4
	j .LBB0_300
.LBB0_299:                              # %middle.block539
                                        #   in Loop: Header=BB0_300 Depth=2
	.loc	1 563 9 is_stmt 1               # parallel-rne.mlir:563:9
	load.d r[8:9], -496(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_303
.LBB0_300:                              # %.preheader117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_301 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 564 11 is_stmt 1              # parallel-rne.mlir:564:11
	beq r2, zero, .LBB0_302
.LBB0_301:                              # %scalar.ph532
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_300 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	add.s r10, r12, r10
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	loads.w r11, 0(r11)
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	stores.w r11, 0(r10)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	bneq r15, zero, .LBB0_301
	j .LBB0_299
.LBB0_302:                              # %vector.body534
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_300 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	slli r10, r10, 2
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.s r15, r14, r10
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	add.s r10, r12, r10
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	beq r11, zero, .LBB0_302
	j .LBB0_299
.LBB0_303:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_304:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	core_id r2
	addli r4, zero, 6
	bneq r2, r4, .LBB0_311
# %bb.305:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 96
	zext_int2long r[4:5], r4
	j .LBB0_307
.LBB0_306:                              # %middle.block529
                                        #   in Loop: Header=BB0_307 Depth=2
	.loc	1 579 9 is_stmt 1               # parallel-rne.mlir:579:9
	load.d r[8:9], -504(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_310
.LBB0_307:                              # %.preheader116
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 580 11 is_stmt 1              # parallel-rne.mlir:580:11
	beq r2, zero, .LBB0_309
.LBB0_308:                              # %scalar.ph522
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r10, r12, r10
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	loads.w r11, 0(r11)
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r11, 0(r10)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	bneq r15, zero, .LBB0_308
	j .LBB0_306
.LBB0_309:                              # %vector.body524
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	slli r10, r10, 2
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.s r15, r14, r10
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r10, r12, r10
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	beq r11, zero, .LBB0_309
	j .LBB0_306
.LBB0_310:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_311:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	core_id r2
	addli r4, zero, 7
	bneq r2, r4, .LBB0_318
# %bb.312:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 112
	zext_int2long r[4:5], r4
	j .LBB0_314
.LBB0_313:                              # %middle.block519
                                        #   in Loop: Header=BB0_314 Depth=2
	.loc	1 595 9 is_stmt 1               # parallel-rne.mlir:595:9
	setlt.ul r8, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_317
.LBB0_314:                              # %.preheader115
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_316 Depth 3
                                        #       Child Loop BB0_315 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 596 11 is_stmt 1              # parallel-rne.mlir:596:11
	beq r2, zero, .LBB0_316
.LBB0_315:                              # %scalar.ph512
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	setlt.ul r15, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	slli r10, r10, 2
	add.s r11, r14, r10
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	add.s r10, r12, r10
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	loads.w r11, 0(r11)
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	stores.w r11, 0(r10)
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	bneq r15, zero, .LBB0_315
	j .LBB0_313
.LBB0_316:                              # %vector.body514
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	add.ul r[10:11], r[17:18], r[8:9]
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	slli r10, r10, 2
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	seteq.d r11, r[17:18], r[23:24]
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	add.s r15, r14, r10
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	add.s r10, r12, r10
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	loads.w r16, 12(r15)
	loads.w r19, 8(r15)
	loads.w r20, 4(r15)
	loads.w r21, 0(r15)
	loads.w r22, 28(r15)
	loads.w r25, 24(r15)
	loads.w r27, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	stores.w r16, 12(r10)
	stores.w r19, 8(r10)
	stores.w r20, 4(r10)
	stores.w r21, 0(r10)
	stores.w r22, 28(r10)
	stores.w r25, 24(r10)
	stores.w r27, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	beq r11, zero, .LBB0_316
	j .LBB0_313
.LBB0_317:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	mfence { sm }
	lui r25, 524288
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_318:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	addli r2, zero, 255
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	addli r4, zero, 3
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	csr_set csr5, r2
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	core_id r2
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	sync_core
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	bneq r2, r4, .LBB0_320
# %bb.319:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 32
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	addli r4, zero, 13
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	xsignal r2, 0
	addli r2, zero, 33
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	xsignal r2, 0
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	xwait r4, 0
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	xwait r2, 0
.LBB0_320:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r2, zero, 255
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	xfence
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	mfence { lm, sm, gm }
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	csr_set csr5, r2
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	sync_core
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	bneq r2, zero, .LBB0_342
# %bb.321:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	store.d r[4:5], -528(r30)               # 8-byte Folded Spill
	j .LBB0_323
.LBB0_322:                              # %middle.block509
                                        #   in Loop: Header=BB0_323 Depth=2
	.loc	1 621 9                         # parallel-rne.mlir:621:9
	load.d r[4:5], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_341
.LBB0_323:                              # %.preheader114
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_325 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[8:9], -528(r30)                # 8-byte Folded Reload
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	j .LBB0_325
.LBB0_324:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	.loc	1 622 11 is_stmt 1              # parallel-rne.mlir:622:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 630 13                        # parallel-rne.mlir:630:13
	add.s r10, r28, r17
	.loc	1 622 11                        # parallel-rne.mlir:622:11
	setneq.d r15, r[8:9], r[23:24]
	.loc	1 630 13                        # parallel-rne.mlir:630:13
	stores.w r20, 12(r10)
	stores.w r19, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r27, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 622 11                        # parallel-rne.mlir:622:11
	beq r15, zero, .LBB0_322
.LBB0_325:                              # %vector.body504
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_323 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r17, r4, 2
	add.s r4, r12, r17
	loads.w r2, 0(r4)
	loads.w r20, 12(r4)
	loads.w r19, 8(r4)
	loads.w r11, 4(r4)
	loads.w r27, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	and r10, r2, r26
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_327
# %bb.326:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_327:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_329
# %bb.328:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_329:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
.LBB0_331:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_333:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_335:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_337
# %bb.336:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_337:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_339:                              # %vector.body504
                                        #   in Loop: Header=BB0_325 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	beq r10, zero, .LBB0_324
# %bb.340:                              #   in Loop: Header=BB0_325 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
	j .LBB0_324
.LBB0_341:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 614 7 is_stmt 1               # parallel-rne.mlir:614:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_342:                              #   in Loop: Header=BB0_7 Depth=1
	core_id r16
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_349
# %bb.343:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	addli r2, zero, 2
	beq r16, r2, .LBB0_370
.LBB0_344:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 677 7                         # parallel-rne.mlir:677:7
	addli r2, zero, 3
	beq r16, r2, .LBB0_391
.LBB0_345:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 698 7                         # parallel-rne.mlir:698:7
	addli r2, zero, 4
	beq r16, r2, .LBB0_412
.LBB0_346:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 719 7                         # parallel-rne.mlir:719:7
	addli r2, zero, 5
	beq r16, r2, .LBB0_433
.LBB0_347:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	addli r2, zero, 6
	beq r16, r2, .LBB0_454
.LBB0_348:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r2, zero, 7
	beq r16, r2, .LBB0_475
	j .LBB0_496
.LBB0_349:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 635 7 is_stmt 1               # parallel-rne.mlir:635:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_351
.LBB0_350:                              # %middle.block499
                                        #   in Loop: Header=BB0_351 Depth=2
	.loc	1 642 9                         # parallel-rne.mlir:642:9
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_369
.LBB0_351:                              # %.preheader113
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_353
.LBB0_352:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 643 11 is_stmt 1              # parallel-rne.mlir:643:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 651 13                        # parallel-rne.mlir:651:13
	add.s r10, r28, r15
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 651 13                        # parallel-rne.mlir:651:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	beq r15, zero, .LBB0_350
.LBB0_353:                              # %vector.body494
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	and r10, r2, r26
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_355:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_357:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_359
# %bb.358:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_359:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_361
# %bb.360:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_361:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_363:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_365:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_367:                              # %vector.body494
                                        #   in Loop: Header=BB0_353 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r10, zero, .LBB0_352
# %bb.368:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_352
.LBB0_369:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 635 7 is_stmt 1               # parallel-rne.mlir:635:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	addli r2, zero, 2
	bneq r16, r2, .LBB0_344
.LBB0_370:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_372
.LBB0_371:                              # %middle.block489
                                        #   in Loop: Header=BB0_372 Depth=2
	.loc	1 663 9 is_stmt 1               # parallel-rne.mlir:663:9
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_390
.LBB0_372:                              # %.preheader112
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_374 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_374
.LBB0_373:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	.loc	1 664 11 is_stmt 1              # parallel-rne.mlir:664:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 672 13                        # parallel-rne.mlir:672:13
	add.s r10, r28, r15
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 672 13                        # parallel-rne.mlir:672:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	beq r15, zero, .LBB0_371
.LBB0_374:                              # %vector.body484
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_372 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	and r10, r2, r26
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_376:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_378:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_380:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_382:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_384:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_386:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_388:                              # %vector.body484
                                        #   in Loop: Header=BB0_374 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	beq r10, zero, .LBB0_373
# %bb.389:                              #   in Loop: Header=BB0_374 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_373
.LBB0_390:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 656 7 is_stmt 1               # parallel-rne.mlir:656:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 677 7                         # parallel-rne.mlir:677:7
	addli r2, zero, 3
	bneq r16, r2, .LBB0_345
.LBB0_391:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 677 7                         # parallel-rne.mlir:677:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_393
.LBB0_392:                              # %middle.block479
                                        #   in Loop: Header=BB0_393 Depth=2
	.loc	1 684 9 is_stmt 1               # parallel-rne.mlir:684:9
	load.d r[4:5], -480(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_411
.LBB0_393:                              # %.preheader111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_395 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_395
.LBB0_394:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 685 11 is_stmt 1              # parallel-rne.mlir:685:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 693 13                        # parallel-rne.mlir:693:13
	add.s r10, r28, r15
	.loc	1 685 11                        # parallel-rne.mlir:685:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 693 13                        # parallel-rne.mlir:693:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 685 11                        # parallel-rne.mlir:685:11
	beq r15, zero, .LBB0_392
.LBB0_395:                              # %vector.body474
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_393 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	and r10, r2, r26
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_397:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_399:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_401:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_403:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_405:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_407:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_409:                              # %vector.body474
                                        #   in Loop: Header=BB0_395 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r10, zero, .LBB0_394
# %bb.410:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_394
.LBB0_411:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 677 7 is_stmt 1               # parallel-rne.mlir:677:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 698 7                         # parallel-rne.mlir:698:7
	addli r2, zero, 4
	bneq r16, r2, .LBB0_346
.LBB0_412:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 698 7                         # parallel-rne.mlir:698:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_414
.LBB0_413:                              # %middle.block469
                                        #   in Loop: Header=BB0_414 Depth=2
	.loc	1 705 9 is_stmt 1               # parallel-rne.mlir:705:9
	load.d r[4:5], -488(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_432
.LBB0_414:                              # %.preheader110
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_416 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_416
.LBB0_415:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 706 11 is_stmt 1              # parallel-rne.mlir:706:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 714 13                        # parallel-rne.mlir:714:13
	add.s r10, r28, r15
	.loc	1 706 11                        # parallel-rne.mlir:706:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 714 13                        # parallel-rne.mlir:714:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 706 11                        # parallel-rne.mlir:706:11
	beq r15, zero, .LBB0_413
.LBB0_416:                              # %vector.body464
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_414 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	and r10, r2, r26
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_418:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_420
# %bb.419:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_420:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_422
# %bb.421:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_422:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_424:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_426:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_428:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_430:                              # %vector.body464
                                        #   in Loop: Header=BB0_416 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	beq r10, zero, .LBB0_415
# %bb.431:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_415
.LBB0_432:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 698 7 is_stmt 1               # parallel-rne.mlir:698:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 719 7                         # parallel-rne.mlir:719:7
	addli r2, zero, 5
	bneq r16, r2, .LBB0_347
.LBB0_433:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 719 7                         # parallel-rne.mlir:719:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_435
.LBB0_434:                              # %middle.block459
                                        #   in Loop: Header=BB0_435 Depth=2
	.loc	1 726 9 is_stmt 1               # parallel-rne.mlir:726:9
	load.d r[4:5], -496(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_453
.LBB0_435:                              # %.preheader109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_437 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_437
.LBB0_436:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 727 11 is_stmt 1              # parallel-rne.mlir:727:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 735 13                        # parallel-rne.mlir:735:13
	add.s r10, r28, r15
	.loc	1 727 11                        # parallel-rne.mlir:727:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 735 13                        # parallel-rne.mlir:735:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 727 11                        # parallel-rne.mlir:727:11
	beq r15, zero, .LBB0_434
.LBB0_437:                              # %vector.body454
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	and r10, r2, r26
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_439:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_441
# %bb.440:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_441:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_443:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_445:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_447:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_449:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_451:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r10, zero, .LBB0_436
# %bb.452:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_436
.LBB0_453:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 719 7 is_stmt 1               # parallel-rne.mlir:719:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	addli r2, zero, 6
	bneq r16, r2, .LBB0_348
.LBB0_454:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_456
.LBB0_455:                              # %middle.block449
                                        #   in Loop: Header=BB0_456 Depth=2
	.loc	1 747 9 is_stmt 1               # parallel-rne.mlir:747:9
	load.d r[4:5], -504(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_474
.LBB0_456:                              # %.preheader108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_458 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_458
.LBB0_457:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	.loc	1 748 11 is_stmt 1              # parallel-rne.mlir:748:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	add.s r10, r28, r15
	.loc	1 748 11                        # parallel-rne.mlir:748:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 748 11                        # parallel-rne.mlir:748:11
	beq r15, zero, .LBB0_455
.LBB0_458:                              # %vector.body444
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_456 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	and r10, r2, r26
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_460
# %bb.459:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_460:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_462
# %bb.461:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_462:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_464
# %bb.463:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_464:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_466
# %bb.465:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_466:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_468
# %bb.467:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_468:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_470
# %bb.469:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_470:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_472:                              # %vector.body444
                                        #   in Loop: Header=BB0_458 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r10, zero, .LBB0_457
# %bb.473:                              #   in Loop: Header=BB0_458 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_457
.LBB0_474:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 740 7 is_stmt 1               # parallel-rne.mlir:740:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r2, zero, 7
	bneq r16, r2, .LBB0_496
.LBB0_475:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_477
.LBB0_476:                              # %middle.block439
                                        #   in Loop: Header=BB0_477 Depth=2
	.loc	1 768 9 is_stmt 1               # parallel-rne.mlir:768:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_495
.LBB0_477:                              # %.preheader107
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_479 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[21:22], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_479
.LBB0_478:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	.loc	1 769 11 is_stmt 1              # parallel-rne.mlir:769:11
	addli.d r[21:22], r[21:22], 8
	.loc	1 777 13                        # parallel-rne.mlir:777:13
	add.s r10, r28, r15
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	setneq.d r15, r[21:22], r[23:24]
	.loc	1 777 13                        # parallel-rne.mlir:777:13
	stores.w r27, 12(r10)
	stores.w r20, 8(r10)
	stores.w r11, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r14, 24(r10)
	stores.w r5, 20(r10)
	stores.w r4, 16(r10)
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	beq r15, zero, .LBB0_476
.LBB0_479:                              # %vector.body434
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_477 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.ul r[4:5], r[21:22], r[17:18]
	slli r15, r4, 2
	add.s r4, r12, r15
	loads.w r2, 0(r4)
	loads.w r27, 12(r4)
	loads.w r20, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r14, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	and r10, r2, r26
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r25
	or r2, r2, r13
.LBB0_481:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r11, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r11, r25
	or r11, r10, r13
.LBB0_483:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r20, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_485
# %bb.484:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r20, r25
	or r20, r10, r13
.LBB0_485:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r27, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r27, r25
	or r27, r10, r13
.LBB0_487:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r4, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r25
	or r4, r4, r13
.LBB0_489:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r5, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_491
# %bb.490:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r25
	or r5, r5, r13
.LBB0_491:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r14, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_493
# %bb.492:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r14, r25
	or r14, r10, r13
.LBB0_493:                              # %vector.body434
                                        #   in Loop: Header=BB0_479 Depth=3
	and r10, r19, r26
	setlt.u r10, r13, r10
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r10, zero, .LBB0_478
# %bb.494:                              #   in Loop: Header=BB0_479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r19, r25
	or r19, r10, r13
	j .LBB0_478
.LBB0_495:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 7 is_stmt 1               # parallel-rne.mlir:761:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_496:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	addli r2, zero, 255
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r4, zero, 3
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	csr_set csr5, r2
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	sync_core
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	bneq r2, r4, .LBB0_498
# %bb.497:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r5, zero, 34
	xsignal r2, 0
	.loc	1 784 7                         # parallel-rne.mlir:784:7
	xsignal r5, 0
	.loc	1 787 13                        # parallel-rne.mlir:787:13
	loadli.w r2,  -24(r30)
	addli r4, r2, 1
	storeli.w r4, -24(r30)
	.loc	1 789 7                         # parallel-rne.mlir:789:7
	addli r4, zero, 15
	xwait r4, 0
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	addli r4, zero, 38
	.loc	1 790 7                         # parallel-rne.mlir:790:7
	xwait r5, 0
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	xwait r4, 0
	j .LBB0_501
.LBB0_498:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 785 7                         # parallel-rne.mlir:785:7
	addli r4, zero, 5
	bneq r2, r4, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r4, zero, 2
	addli r5, zero, 3
	addli r8, zero, 1
	xwait r2, 0
	lock zero, r4
	addli r2, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 4
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r5, zero, zero, 10
	loadli.w r5,  -640(r30)                 # 4-byte Folded Reload
	ew_cfg r4, r8, r5, 11
	lui r5, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r5, 14
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r28, r28, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
.LBB0_500:                              # %.thread86
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 787 13                        # parallel-rne.mlir:787:13
	loadli.w r2,  -24(r30)
	addli r4, r2, 1
	storeli.w r4, -24(r30)
.LBB0_501:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 2
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	xfence
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	mfence { lm, sm, gm }
	.loc	1 787 13                        # parallel-rne.mlir:787:13
	mod.s r2, r2, r4
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r14, r2, r4
	.loc	1 795 7                         # parallel-rne.mlir:795:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 795 7                         # parallel-rne.mlir:795:7
	sync_core
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	bneq r2, zero, .LBB0_538
# %bb.502:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_504
.LBB0_503:                              # %middle.block429
                                        #   in Loop: Header=BB0_504 Depth=2
	.loc	1 803 9                         # parallel-rne.mlir:803:9
	load.d r[4:5], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_537
.LBB0_504:                              # %.preheader106
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_514 Depth 3
                                        #       Child Loop BB0_507 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 804 11 is_stmt 1              # parallel-rne.mlir:804:11
	bneq r14, r12, .LBB0_511
# %bb.505:                              # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_504 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_507
.LBB0_506:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 816 13 is_stmt 1              # parallel-rne.mlir:816:13
	add.s r2, r14, r2
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 816 13                        # parallel-rne.mlir:816:13
	stores.w r8, 0(r2)
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	beq r9, zero, .LBB0_503
.LBB0_507:                              # %scalar.ph420
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_504 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	and r8, r11, r1
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r8, zero, .LBB0_509
# %bb.508:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	beq r10, r3, .LBB0_506
	j .LBB0_510
.LBB0_509:                              #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	beq r10, r3, .LBB0_506
.LBB0_510:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_507 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_506
.LBB0_511:                              # %vector.body422.preheader
                                        #   in Loop: Header=BB0_504 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_514
.LBB0_512:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r19, 28(r20)
.LBB0_513:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 816 13 is_stmt 1              # parallel-rne.mlir:816:13
	add.s r10, r14, r27
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 816 13                        # parallel-rne.mlir:816:13
	stores.w r11, 12(r10)
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 816 13                        # parallel-rne.mlir:816:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	bneq r11, zero, .LBB0_503
.LBB0_514:                              # %vector.body422
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_504 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	add.s r20, r28, r27
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	loads.w r2, 0(r19)
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	and r4, r2, r3
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	and r5, r2, r1
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	seteq r4, r4, r3
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	setneq r5, r5, zero
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	and r4, r4, r5
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r4, zero, .LBB0_516
# %bb.515:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_517
.LBB0_516:                              #   in Loop: Header=BB0_514 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_517:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_519
# %bb.518:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_520
.LBB0_519:                              #   in Loop: Header=BB0_514 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_520:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r10, zero, .LBB0_522
# %bb.521:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_523
.LBB0_522:                              #   in Loop: Header=BB0_514 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_523:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r10, zero, .LBB0_525
# %bb.524:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_514 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_526:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r10, zero, .LBB0_528
# %bb.527:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_514 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_529:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r10, zero, .LBB0_531
# %bb.530:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_514 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_532:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r10, zero, .LBB0_534
# %bb.533:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_514 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_535:                              # %vector.body422
                                        #   in Loop: Header=BB0_514 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	beq r10, zero, .LBB0_512
# %bb.536:                              #   in Loop: Header=BB0_514 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	j .LBB0_513
.LBB0_537:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 796 7 is_stmt 1               # parallel-rne.mlir:796:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_538:                              #   in Loop: Header=BB0_7 Depth=1
	core_id r25
	.loc	1 821 7                         # parallel-rne.mlir:821:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_545
# %bb.539:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	addli r2, zero, 2
	beq r25, r2, .LBB0_581
.LBB0_540:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r2, zero, 3
	beq r25, r2, .LBB0_617
.LBB0_541:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r2, zero, 4
	beq r25, r2, .LBB0_653
.LBB0_542:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	addli r2, zero, 5
	beq r25, r2, .LBB0_689
.LBB0_543:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 946 7                         # parallel-rne.mlir:946:7
	addli r2, zero, 6
	beq r25, r2, .LBB0_725
.LBB0_544:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 971 7                         # parallel-rne.mlir:971:7
	addli r2, zero, 7
	beq r25, r2, .LBB0_761
	j .LBB0_797
.LBB0_545:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 821 7 is_stmt 1               # parallel-rne.mlir:821:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_547
.LBB0_546:                              # %middle.block415
                                        #   in Loop: Header=BB0_547 Depth=2
	.loc	1 828 9                         # parallel-rne.mlir:828:9
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_580
.LBB0_547:                              # %.preheader105
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_557 Depth 3
                                        #       Child Loop BB0_550 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 829 11 is_stmt 1              # parallel-rne.mlir:829:11
	bneq r14, r12, .LBB0_554
# %bb.548:                              # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_547 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_550
.LBB0_549:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 841 13 is_stmt 1              # parallel-rne.mlir:841:13
	add.s r2, r14, r2
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 841 13                        # parallel-rne.mlir:841:13
	stores.w r8, 0(r2)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	beq r9, zero, .LBB0_546
.LBB0_550:                              # %scalar.ph406
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_547 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r8, r11, r1
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r8, zero, .LBB0_552
# %bb.551:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	beq r10, r3, .LBB0_549
	j .LBB0_553
.LBB0_552:                              #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	beq r10, r3, .LBB0_549
.LBB0_553:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_549
.LBB0_554:                              # %vector.body408.preheader
                                        #   in Loop: Header=BB0_547 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_557
.LBB0_555:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r19, 28(r20)
.LBB0_556:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 841 13 is_stmt 1              # parallel-rne.mlir:841:13
	add.s r10, r14, r27
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 841 13                        # parallel-rne.mlir:841:13
	stores.w r11, 12(r10)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 841 13                        # parallel-rne.mlir:841:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	bneq r11, zero, .LBB0_546
.LBB0_557:                              # %vector.body408
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_547 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	add.s r20, r28, r27
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	loads.w r2, 0(r19)
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r4, r2, r3
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r5, r2, r1
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	seteq r4, r4, r3
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	setneq r5, r5, zero
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	and r4, r4, r5
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r4, zero, .LBB0_559
# %bb.558:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_560
.LBB0_559:                              #   in Loop: Header=BB0_557 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_560:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r5, zero, .LBB0_562
# %bb.561:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_563
.LBB0_562:                              #   in Loop: Header=BB0_557 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_563:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r10, zero, .LBB0_565
# %bb.564:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_557 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_566:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r10, zero, .LBB0_568
# %bb.567:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_557 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_569:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r10, zero, .LBB0_571
# %bb.570:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_557 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_572:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r10, zero, .LBB0_574
# %bb.573:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_557 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_575:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r10, zero, .LBB0_577
# %bb.576:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_557 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_578:                              # %vector.body408
                                        #   in Loop: Header=BB0_557 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	beq r10, zero, .LBB0_555
# %bb.579:                              #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	j .LBB0_556
.LBB0_580:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 821 7 is_stmt 1               # parallel-rne.mlir:821:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	addli r2, zero, 2
	bneq r25, r2, .LBB0_540
.LBB0_581:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_583
.LBB0_582:                              # %middle.block401
                                        #   in Loop: Header=BB0_583 Depth=2
	.loc	1 853 9 is_stmt 1               # parallel-rne.mlir:853:9
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_616
.LBB0_583:                              # %.preheader104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_593 Depth 3
                                        #       Child Loop BB0_586 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 854 11 is_stmt 1              # parallel-rne.mlir:854:11
	bneq r14, r12, .LBB0_590
# %bb.584:                              # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_583 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_586
.LBB0_585:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_586 Depth=3
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 866 13 is_stmt 1              # parallel-rne.mlir:866:13
	add.s r2, r14, r2
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r8, 0(r2)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	beq r9, zero, .LBB0_582
.LBB0_586:                              # %scalar.ph392
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_583 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r8, r11, r1
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r8, zero, .LBB0_588
# %bb.587:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_586 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r10, r3, .LBB0_585
	j .LBB0_589
.LBB0_588:                              #   in Loop: Header=BB0_586 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r10, r3, .LBB0_585
.LBB0_589:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_586 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_585
.LBB0_590:                              # %vector.body394.preheader
                                        #   in Loop: Header=BB0_583 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_593
.LBB0_591:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r19, 28(r20)
.LBB0_592:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 866 13 is_stmt 1              # parallel-rne.mlir:866:13
	add.s r10, r14, r27
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r11, 12(r10)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	bneq r11, zero, .LBB0_582
.LBB0_593:                              # %vector.body394
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_583 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r20, r28, r27
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	loads.w r2, 0(r19)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r4, r2, r3
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r5, r2, r1
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	seteq r4, r4, r3
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	setneq r5, r5, zero
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	and r4, r4, r5
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r4, zero, .LBB0_595
# %bb.594:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_596
.LBB0_595:                              #   in Loop: Header=BB0_593 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_596:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r5, zero, .LBB0_598
# %bb.597:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_599
.LBB0_598:                              #   in Loop: Header=BB0_593 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_599:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r10, zero, .LBB0_601
# %bb.600:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_593 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_602:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r10, zero, .LBB0_604
# %bb.603:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_593 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_605:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r10, zero, .LBB0_607
# %bb.606:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_593 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_608:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r10, zero, .LBB0_610
# %bb.609:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_593 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_611:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r10, zero, .LBB0_613
# %bb.612:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_593 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_614:                              # %vector.body394
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r10, zero, .LBB0_591
# %bb.615:                              #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	j .LBB0_592
.LBB0_616:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 846 7 is_stmt 1               # parallel-rne.mlir:846:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r2, zero, 3
	bneq r25, r2, .LBB0_541
.LBB0_617:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_619
.LBB0_618:                              # %middle.block387
                                        #   in Loop: Header=BB0_619 Depth=2
	.loc	1 878 9 is_stmt 1               # parallel-rne.mlir:878:9
	load.d r[4:5], -480(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_652
.LBB0_619:                              # %.preheader103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_629 Depth 3
                                        #       Child Loop BB0_622 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 879 11 is_stmt 1              # parallel-rne.mlir:879:11
	bneq r14, r12, .LBB0_626
# %bb.620:                              # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_619 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_622
.LBB0_621:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 891 13 is_stmt 1              # parallel-rne.mlir:891:13
	add.s r2, r14, r2
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 891 13                        # parallel-rne.mlir:891:13
	stores.w r8, 0(r2)
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	beq r9, zero, .LBB0_618
.LBB0_622:                              # %scalar.ph378
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_619 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r8, r11, r1
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r8, zero, .LBB0_624
# %bb.623:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	beq r10, r3, .LBB0_621
	j .LBB0_625
.LBB0_624:                              #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	beq r10, r3, .LBB0_621
.LBB0_625:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_621
.LBB0_626:                              # %vector.body380.preheader
                                        #   in Loop: Header=BB0_619 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_629
.LBB0_627:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r19, 28(r20)
.LBB0_628:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 891 13 is_stmt 1              # parallel-rne.mlir:891:13
	add.s r10, r14, r27
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 891 13                        # parallel-rne.mlir:891:13
	stores.w r11, 12(r10)
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 891 13                        # parallel-rne.mlir:891:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	bneq r11, zero, .LBB0_618
.LBB0_629:                              # %vector.body380
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_619 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.s r20, r28, r27
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	loads.w r2, 0(r19)
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	and r4, r2, r3
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r5, r2, r1
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	seteq r4, r4, r3
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	setneq r5, r5, zero
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r4, r4, r5
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_631
# %bb.630:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_632
.LBB0_631:                              #   in Loop: Header=BB0_629 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_632:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r5, zero, .LBB0_634
# %bb.633:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_635
.LBB0_634:                              #   in Loop: Header=BB0_629 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_635:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r10, zero, .LBB0_637
# %bb.636:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_638
.LBB0_637:                              #   in Loop: Header=BB0_629 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_638:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r10, zero, .LBB0_640
# %bb.639:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_641
.LBB0_640:                              #   in Loop: Header=BB0_629 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_641:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r10, zero, .LBB0_643
# %bb.642:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_644
.LBB0_643:                              #   in Loop: Header=BB0_629 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_644:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r10, zero, .LBB0_646
# %bb.645:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_647
.LBB0_646:                              #   in Loop: Header=BB0_629 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_647:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r10, zero, .LBB0_649
# %bb.648:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_650
.LBB0_649:                              #   in Loop: Header=BB0_629 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_650:                              # %vector.body380
                                        #   in Loop: Header=BB0_629 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	beq r10, zero, .LBB0_627
# %bb.651:                              #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	j .LBB0_628
.LBB0_652:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 871 7 is_stmt 1               # parallel-rne.mlir:871:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r2, zero, 4
	bneq r25, r2, .LBB0_542
.LBB0_653:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_655
.LBB0_654:                              # %middle.block373
                                        #   in Loop: Header=BB0_655 Depth=2
	.loc	1 903 9 is_stmt 1               # parallel-rne.mlir:903:9
	load.d r[4:5], -488(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_688
.LBB0_655:                              # %.preheader102
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_665 Depth 3
                                        #       Child Loop BB0_658 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 904 11 is_stmt 1              # parallel-rne.mlir:904:11
	bneq r14, r12, .LBB0_662
# %bb.656:                              # %scalar.ph364.preheader
                                        #   in Loop: Header=BB0_655 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_658
.LBB0_657:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 916 13 is_stmt 1              # parallel-rne.mlir:916:13
	add.s r2, r14, r2
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 916 13                        # parallel-rne.mlir:916:13
	stores.w r8, 0(r2)
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	beq r9, zero, .LBB0_654
.LBB0_658:                              # %scalar.ph364
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_655 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r8, r11, r1
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r8, zero, .LBB0_660
# %bb.659:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	beq r10, r3, .LBB0_657
	j .LBB0_661
.LBB0_660:                              #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	beq r10, r3, .LBB0_657
.LBB0_661:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_657
.LBB0_662:                              # %vector.body366.preheader
                                        #   in Loop: Header=BB0_655 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_665
.LBB0_663:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r19, 28(r20)
.LBB0_664:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 916 13 is_stmt 1              # parallel-rne.mlir:916:13
	add.s r10, r14, r27
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 916 13                        # parallel-rne.mlir:916:13
	stores.w r11, 12(r10)
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 916 13                        # parallel-rne.mlir:916:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	bneq r11, zero, .LBB0_654
.LBB0_665:                              # %vector.body366
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_655 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.s r20, r28, r27
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	loads.w r2, 0(r19)
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	and r4, r2, r3
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r5, r2, r1
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	seteq r4, r4, r3
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	setneq r5, r5, zero
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r4, r4, r5
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r4, zero, .LBB0_667
# %bb.666:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_668
.LBB0_667:                              #   in Loop: Header=BB0_665 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_668:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r5, zero, .LBB0_670
# %bb.669:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_671
.LBB0_670:                              #   in Loop: Header=BB0_665 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_671:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r10, zero, .LBB0_673
# %bb.672:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_674
.LBB0_673:                              #   in Loop: Header=BB0_665 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_674:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r10, zero, .LBB0_676
# %bb.675:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_677
.LBB0_676:                              #   in Loop: Header=BB0_665 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_677:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r10, zero, .LBB0_679
# %bb.678:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_665 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_680:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r10, zero, .LBB0_682
# %bb.681:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_683
.LBB0_682:                              #   in Loop: Header=BB0_665 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_683:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r10, zero, .LBB0_685
# %bb.684:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_686
.LBB0_685:                              #   in Loop: Header=BB0_665 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_686:                              # %vector.body366
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	beq r10, zero, .LBB0_663
# %bb.687:                              #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	j .LBB0_664
.LBB0_688:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 896 7 is_stmt 1               # parallel-rne.mlir:896:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	addli r2, zero, 5
	bneq r25, r2, .LBB0_543
.LBB0_689:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_691
.LBB0_690:                              # %middle.block359
                                        #   in Loop: Header=BB0_691 Depth=2
	.loc	1 928 9 is_stmt 1               # parallel-rne.mlir:928:9
	load.d r[4:5], -496(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_724
.LBB0_691:                              # %.preheader101
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_701 Depth 3
                                        #       Child Loop BB0_694 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 929 11 is_stmt 1              # parallel-rne.mlir:929:11
	bneq r14, r12, .LBB0_698
# %bb.692:                              # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_691 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_694
.LBB0_693:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 929 11                        # parallel-rne.mlir:929:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 941 13 is_stmt 1              # parallel-rne.mlir:941:13
	add.s r2, r14, r2
	.loc	1 929 11                        # parallel-rne.mlir:929:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 941 13                        # parallel-rne.mlir:941:13
	stores.w r8, 0(r2)
	.loc	1 929 11                        # parallel-rne.mlir:929:11
	beq r9, zero, .LBB0_690
.LBB0_694:                              # %scalar.ph350
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_691 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	and r8, r11, r1
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r8, zero, .LBB0_696
# %bb.695:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	beq r10, r3, .LBB0_693
	j .LBB0_697
.LBB0_696:                              #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	beq r10, r3, .LBB0_693
.LBB0_697:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_694 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_693
.LBB0_698:                              # %vector.body352.preheader
                                        #   in Loop: Header=BB0_691 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_701
.LBB0_699:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r19, 28(r20)
.LBB0_700:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 941 13 is_stmt 1              # parallel-rne.mlir:941:13
	add.s r10, r14, r27
	.loc	1 929 11                        # parallel-rne.mlir:929:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 941 13                        # parallel-rne.mlir:941:13
	stores.w r11, 12(r10)
	.loc	1 929 11                        # parallel-rne.mlir:929:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 941 13                        # parallel-rne.mlir:941:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 929 11                        # parallel-rne.mlir:929:11
	bneq r11, zero, .LBB0_690
.LBB0_701:                              # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_691 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	add.s r20, r28, r27
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	loads.w r2, 0(r19)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r4, r2, r3
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	and r5, r2, r1
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	seteq r4, r4, r3
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	setneq r5, r5, zero
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	and r4, r4, r5
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r4, zero, .LBB0_703
# %bb.702:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_704
.LBB0_703:                              #   in Loop: Header=BB0_701 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_704:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r5, zero, .LBB0_706
# %bb.705:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_707
.LBB0_706:                              #   in Loop: Header=BB0_701 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_707:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r10, zero, .LBB0_709
# %bb.708:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_710
.LBB0_709:                              #   in Loop: Header=BB0_701 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_710:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r10, zero, .LBB0_712
# %bb.711:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_713
.LBB0_712:                              #   in Loop: Header=BB0_701 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_713:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r10, zero, .LBB0_715
# %bb.714:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_701 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_716:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r10, zero, .LBB0_718
# %bb.717:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_701 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_719:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	bneq r10, zero, .LBB0_721
# %bb.720:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_701 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_722:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	beq r10, zero, .LBB0_699
# %bb.723:                              #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	j .LBB0_700
.LBB0_724:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 921 7 is_stmt 1               # parallel-rne.mlir:921:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 946 7                         # parallel-rne.mlir:946:7
	addli r2, zero, 6
	bneq r25, r2, .LBB0_544
.LBB0_725:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 946 7                         # parallel-rne.mlir:946:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_727
.LBB0_726:                              # %middle.block345
                                        #   in Loop: Header=BB0_727 Depth=2
	.loc	1 953 9 is_stmt 1               # parallel-rne.mlir:953:9
	load.d r[4:5], -504(r30)                # 8-byte Folded Reload
	load.d r[8:9], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_760
.LBB0_727:                              # %.preheader100
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_737 Depth 3
                                        #       Child Loop BB0_730 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 954 11 is_stmt 1              # parallel-rne.mlir:954:11
	bneq r14, r12, .LBB0_734
# %bb.728:                              # %scalar.ph336.preheader
                                        #   in Loop: Header=BB0_727 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_730
.LBB0_729:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_730 Depth=3
	.loc	1 954 11                        # parallel-rne.mlir:954:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 966 13 is_stmt 1              # parallel-rne.mlir:966:13
	add.s r2, r14, r2
	.loc	1 954 11                        # parallel-rne.mlir:954:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 966 13                        # parallel-rne.mlir:966:13
	stores.w r8, 0(r2)
	.loc	1 954 11                        # parallel-rne.mlir:954:11
	beq r9, zero, .LBB0_726
.LBB0_730:                              # %scalar.ph336
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_727 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	and r8, r11, r1
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r8, zero, .LBB0_732
# %bb.731:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	beq r10, r3, .LBB0_729
	j .LBB0_733
.LBB0_732:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	beq r10, r3, .LBB0_729
.LBB0_733:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_729
.LBB0_734:                              # %vector.body338.preheader
                                        #   in Loop: Header=BB0_727 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_737
.LBB0_735:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r19, 28(r20)
.LBB0_736:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 966 13 is_stmt 1              # parallel-rne.mlir:966:13
	add.s r10, r14, r27
	.loc	1 954 11                        # parallel-rne.mlir:954:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 966 13                        # parallel-rne.mlir:966:13
	stores.w r11, 12(r10)
	.loc	1 954 11                        # parallel-rne.mlir:954:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 966 13                        # parallel-rne.mlir:966:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 954 11                        # parallel-rne.mlir:954:11
	bneq r11, zero, .LBB0_726
.LBB0_737:                              # %vector.body338
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_727 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	add.s r20, r28, r27
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	loads.w r2, 0(r19)
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	and r4, r2, r3
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	and r5, r2, r1
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	seteq r4, r4, r3
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	setneq r5, r5, zero
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	and r4, r4, r5
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r4, zero, .LBB0_739
# %bb.738:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_740
.LBB0_739:                              #   in Loop: Header=BB0_737 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_740:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r5, zero, .LBB0_742
# %bb.741:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_743
.LBB0_742:                              #   in Loop: Header=BB0_737 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_743:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r10, zero, .LBB0_745
# %bb.744:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_746
.LBB0_745:                              #   in Loop: Header=BB0_737 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_746:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r10, zero, .LBB0_748
# %bb.747:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_749
.LBB0_748:                              #   in Loop: Header=BB0_737 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_749:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r10, zero, .LBB0_751
# %bb.750:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_752
.LBB0_751:                              #   in Loop: Header=BB0_737 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_752:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r10, zero, .LBB0_754
# %bb.753:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_755
.LBB0_754:                              #   in Loop: Header=BB0_737 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_755:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	bneq r10, zero, .LBB0_757
# %bb.756:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_758
.LBB0_757:                              #   in Loop: Header=BB0_737 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_758:                              # %vector.body338
                                        #   in Loop: Header=BB0_737 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	beq r10, zero, .LBB0_735
# %bb.759:                              #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	j .LBB0_736
.LBB0_760:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 946 7 is_stmt 1               # parallel-rne.mlir:946:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
	.loc	1 971 7                         # parallel-rne.mlir:971:7
	addli r2, zero, 7
	bneq r25, r2, .LBB0_797
.LBB0_761:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 971 7                         # parallel-rne.mlir:971:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_763
.LBB0_762:                              # %middle.block331
                                        #   in Loop: Header=BB0_763 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[4:5], -520(r30)                # 8-byte Folded Reload
	.loc	1 978 9 is_stmt 1               # parallel-rne.mlir:978:9
	setlt.ul r2, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_796
.LBB0_763:                              # %.preheader99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_773 Depth 3
                                        #       Child Loop BB0_766 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -520(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 979 11 is_stmt 1              # parallel-rne.mlir:979:11
	bneq r14, r12, .LBB0_770
# %bb.764:                              # %scalar.ph322.preheader
                                        #   in Loop: Header=BB0_763 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_766
.LBB0_765:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_766 Depth=3
	.loc	1 979 11                        # parallel-rne.mlir:979:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 991 13 is_stmt 1              # parallel-rne.mlir:991:13
	add.s r2, r14, r2
	.loc	1 979 11                        # parallel-rne.mlir:979:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 991 13                        # parallel-rne.mlir:991:13
	stores.w r8, 0(r2)
	.loc	1 979 11                        # parallel-rne.mlir:979:11
	beq r9, zero, .LBB0_762
.LBB0_766:                              # %scalar.ph322
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_763 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r8, r12, r2
	loads.w r11, 0(r8)
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	add.s r8, r28, r2
	loads.w r9, 0(r8)
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	and r8, r11, r1
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r8, zero, .LBB0_768
# %bb.767:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_766 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r11, r3
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	beq r10, r3, .LBB0_765
	j .LBB0_769
.LBB0_768:                              #   in Loop: Header=BB0_766 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r11, r8
	and r10, r11, r3
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	beq r10, r3, .LBB0_765
.LBB0_769:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_766 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_765
.LBB0_770:                              # %vector.body324.preheader
                                        #   in Loop: Header=BB0_763 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_773
.LBB0_771:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r19, 28(r20)
.LBB0_772:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 991 13 is_stmt 1              # parallel-rne.mlir:991:13
	add.s r10, r14, r27
	.loc	1 979 11                        # parallel-rne.mlir:979:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 991 13                        # parallel-rne.mlir:991:13
	stores.w r11, 12(r10)
	.loc	1 979 11                        # parallel-rne.mlir:979:11
	seteq.d r11, r[8:9], r[23:24]
	.loc	1 991 13                        # parallel-rne.mlir:991:13
	stores.w r5, 8(r10)
	stores.w r4, 4(r10)
	stores.w r2, 0(r10)
	stores.w r19, 28(r10)
	stores.w r18, 24(r10)
	stores.w r17, 20(r10)
	stores.w r15, 16(r10)
	.loc	1 979 11                        # parallel-rne.mlir:979:11
	bneq r11, zero, .LBB0_762
.LBB0_773:                              # %vector.body324
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_763 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r27, r4, 2
	add.s r19, r12, r27
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	add.s r20, r28, r27
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	loads.w r2, 0(r19)
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	and r4, r2, r3
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	and r5, r2, r1
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	seteq r4, r4, r3
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	setneq r5, r5, zero
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	and r4, r4, r5
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r4, zero, .LBB0_775
# %bb.774:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r20)
	j .LBB0_776
.LBB0_775:                              #   in Loop: Header=BB0_773 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_776:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r4, 4(r19)
	and r5, r4, r3
	and r10, r4, r1
	seteq r5, r5, r3
	setneq r10, r10, zero
	and r5, r5, r10
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r5, zero, .LBB0_778
# %bb.777:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 4(r20)
	j .LBB0_779
.LBB0_778:                              #   in Loop: Header=BB0_773 Depth=3
	lui r5, 1024
	or r4, r4, r5
.LBB0_779:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r5, 8(r19)
	and r10, r5, r3
	and r11, r5, r1
	seteq r10, r10, r3
	setneq r11, r11, zero
	and r10, r10, r11
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r10, zero, .LBB0_781
# %bb.780:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r20)
	j .LBB0_782
.LBB0_781:                              #   in Loop: Header=BB0_773 Depth=3
	lui r10, 1024
	or r5, r5, r10
.LBB0_782:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r11, 12(r19)
	and r10, r11, r3
	and r15, r11, r1
	seteq r10, r10, r3
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r10, zero, .LBB0_784
# %bb.783:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_785
.LBB0_784:                              #   in Loop: Header=BB0_773 Depth=3
	lui r10, 1024
	or r11, r11, r10
.LBB0_785:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r15, 16(r19)
	and r10, r15, r3
	and r16, r15, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r10, zero, .LBB0_787
# %bb.786:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r20)
	j .LBB0_788
.LBB0_787:                              #   in Loop: Header=BB0_773 Depth=3
	lui r10, 1024
	or r15, r15, r10
.LBB0_788:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r17, 20(r19)
	and r10, r17, r3
	and r16, r17, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r10, zero, .LBB0_790
# %bb.789:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 20(r20)
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_773 Depth=3
	lui r10, 1024
	or r17, r17, r10
.LBB0_791:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r18, 24(r19)
	and r10, r18, r3
	and r16, r18, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	bneq r10, zero, .LBB0_793
# %bb.792:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 24(r20)
	j .LBB0_794
.LBB0_793:                              #   in Loop: Header=BB0_773 Depth=3
	lui r10, 1024
	or r18, r18, r10
.LBB0_794:                              # %vector.body324
                                        #   in Loop: Header=BB0_773 Depth=3
	loads.w r19, 28(r19)
	and r10, r19, r3
	and r16, r19, r1
	seteq r10, r10, r3
	setneq r16, r16, zero
	and r10, r10, r16
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	beq r10, zero, .LBB0_771
# %bb.795:                              #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r19, r19, r10
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	j .LBB0_772
.LBB0_796:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 971 7 is_stmt 1               # parallel-rne.mlir:971:7
	mfence { sm }
	loadli.w r22,  -456(r30)                # 4-byte Folded Reload
.LBB0_797:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	addli r2, zero, 255
	.loc	1 997 7                         # parallel-rne.mlir:997:7
	addli r4, zero, 3
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	csr_set csr5, r2
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	sync_core
	.loc	1 997 7                         # parallel-rne.mlir:997:7
	bneq r2, r4, .LBB0_799
# %bb.798:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 16
	.loc	1 998 7 is_stmt 1               # parallel-rne.mlir:998:7
	addli r2, zero, 35
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	addli r4, zero, 2
	lui r25, 524288
	.loc	1 997 7                         # parallel-rne.mlir:997:7
	xsignal r5, 0
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	xsignal r2, 0
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	loadli.w r2,  -12(r30)
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	.loc	1 1005 7                        # parallel-rne.mlir:1005:7
	xwait r5, 0
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	slli r2, r4, 16
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	addli r4, zero, 25
	xwait r4, 0
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	loadli.w r4,  -636(r30)                 # 4-byte Folded Reload
	add.s r12, r2, r4
	.loc	1 1007 7                        # parallel-rne.mlir:1007:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 1008 7                        # parallel-rne.mlir:1008:7
	addli r2, zero, 39
	xwait r2, 0
	j .LBB0_802
.LBB0_799:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	addli r4, zero, 5
	lui r25, 524288
	bneq r2, r4, .LBB0_801
# %bb.800:                              # %.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 36
	addli r8, zero, 2
	addli r9, zero, 4095
	addli r5, zero, 4
	xwait r2, 0
	lock zero, r8
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	dsmadd r14, r14, r14, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	loadli.w r2,  -12(r30)
	addli r4, r2, 1
	mod.s r2, r2, r8
	storeli.w r4, -12(r30)
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	addli r4, zero, 24
	xwait r4, 0
	addli r4, zero, 40
	xwait r4, 0
	lock zero, r8
	lui r4, 258048
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	slli r2, r2, 16
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	loadli.w r4,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	add.s r12, r2, r4
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	addli r2, zero, 23
	dsmul r12, r22, r14, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r2, 0
	addli r2, zero, 37
	xsignal r2, 0
	addli r2, zero, 39
	xsignal r2, 0
	.loc	1 1005 7                        # parallel-rne.mlir:1005:7
	j .LBB0_802
.LBB0_801:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1002 13                       # parallel-rne.mlir:1002:13
	loadli.w r2,  -12(r30)
	addli r4, zero, 2
	loadli.w r5,  -636(r30)                 # 4-byte Folded Reload
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	slli r4, r4, 16
	add.s r12, r4, r5
.LBB0_802:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	addli r2, zero, 255
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	xfence
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	mfence { lm, sm, gm }
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	csr_set csr5, r2
	loadli.w r2,  -448(r30)                 # 4-byte Folded Reload
	sub.s r2, r28, r2
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	sub.s r2, r28, r12
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	sync_core
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	beq r2, zero, .LBB0_804
# %bb.803:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_832
	j .LBB0_860
.LBB0_804:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], zero
	.loc	1 1013 7 is_stmt 1              # parallel-rne.mlir:1013:7
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_806
.LBB0_805:                              # %middle.block317
                                        #   in Loop: Header=BB0_806 Depth=2
	.loc	1 1020 9                        # parallel-rne.mlir:1020:9
	load.d r[4:5], -512(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_831
.LBB0_806:                              # %.preheader98
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_823 Depth 3
                                        #       Child Loop BB0_809 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 1021 11 is_stmt 1             # parallel-rne.mlir:1021:11
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_821
# %bb.807:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_806 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_809
.LBB0_808:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 1021 11                       # parallel-rne.mlir:1021:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 1043 13 is_stmt 1             # parallel-rne.mlir:1043:13
	add.s r2, r28, r2
	.loc	1 1021 11                       # parallel-rne.mlir:1021:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	stores.w r11, 0(r2)
	.loc	1 1021 11                       # parallel-rne.mlir:1021:11
	beq r10, zero, .LBB0_805
.LBB0_809:                              # %scalar.ph309
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_806 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r19, 523264
	slli r2, r10, 2
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	add.s r10, r14, r2
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	add.s r11, r12, r2
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	loads.w r10, 0(r10)
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	loads.w r20, 0(r11)
	lui r11, 523264
	.loc	1 1027 19                       # parallel-rne.mlir:1027:19
	and r15, r10, r26
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	beq r15, r3, .LBB0_811
# %bb.810:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_811:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	loadli.w r10,  -448(r30)                # 4-byte Folded Reload
	add.s r10, r10, r2
	loads.w r10, 0(r10)
	and r18, r10, r26
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r18, zero, .LBB0_819
# %bb.812:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r15, zero, .LBB0_820
.LBB0_813:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	beq r18, r3, .LBB0_815
.LBB0_814:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_815:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r10, zero, .LBB0_817
# %bb.816:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_817:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	setlt.u r10, r3, r18
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r10, zero, .LBB0_808
# %bb.818:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_808
.LBB0_819:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	beq r15, zero, .LBB0_813
.LBB0_820:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r18, r3, .LBB0_814
	j .LBB0_815
.LBB0_821:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_806 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_823
.LBB0_822:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 1021 11 is_stmt 1             # parallel-rne.mlir:1021:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	add.s r2, r28, r2
	.loc	1 1021 11                       # parallel-rne.mlir:1021:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1021 11                       # parallel-rne.mlir:1021:11
	bneq r10, zero, .LBB0_805
.LBB0_823:                              # %vector.body311
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_806 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	add.s r15, r14, r2
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.s r11, r4, r2
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	loads.w r5, 0(r15)
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	loads.w r4, 0(r11)
	.loc	1 1027 19                       # parallel-rne.mlir:1027:19
	and r5, r5, r26
	.loc	1 1029 19                       # parallel-rne.mlir:1029:19
	and r4, r4, r26
	.loc	1 1031 19                       # parallel-rne.mlir:1031:19
	seteq r16, r5, zero
	.loc	1 1033 19                       # parallel-rne.mlir:1033:19
	seteq r20, r5, r3
	.loc	1 1030 19                       # parallel-rne.mlir:1030:19
	seteq r10, r4, r3
	.loc	1 1034 19                       # parallel-rne.mlir:1034:19
	seteq r25, r4, zero
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1032 19                       # parallel-rne.mlir:1032:19
	and r5, r10, r16
	.loc	1 1035 19                       # parallel-rne.mlir:1035:19
	and r10, r25, r20
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	add.s r20, r12, r2
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	or r5, r5, r10
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r10, zero, .LBB0_825
# %bb.824:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_825:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r21, r10, zero
	seteq r17, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r17, r21, r17
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r10, zero, .LBB0_827
# %bb.826:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_827:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	lui r25, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r10, zero, .LBB0_829
# %bb.828:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r20)
.LBB0_829:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r21, r10, zero
	seteq r16, r11, zero
	seteq r17, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r21, r17
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	bneq r10, zero, .LBB0_822
# %bb.830:                              # %vector.body311
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_822
.LBB0_831:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	mfence { sm }
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	addli r4, zero, 1
	bneq r2, r4, .LBB0_860
.LBB0_832:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], r4
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_834
.LBB0_833:                              # %middle.block302
                                        #   in Loop: Header=BB0_834 Depth=2
	.loc	1 1055 9 is_stmt 1              # parallel-rne.mlir:1055:9
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_859
.LBB0_834:                              # %.preheader97
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_851 Depth 3
                                        #       Child Loop BB0_837 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 1056 11 is_stmt 1             # parallel-rne.mlir:1056:11
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_849
# %bb.835:                              # %scalar.ph294.preheader
                                        #   in Loop: Header=BB0_834 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_837
.LBB0_836:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 1078 13 is_stmt 1             # parallel-rne.mlir:1078:13
	add.s r2, r28, r2
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1078 13                       # parallel-rne.mlir:1078:13
	stores.w r11, 0(r2)
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	beq r10, zero, .LBB0_833
.LBB0_837:                              # %scalar.ph294
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_834 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r19, 523264
	slli r2, r10, 2
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	add.s r10, r14, r2
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	add.s r11, r12, r2
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	loads.w r10, 0(r10)
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	loads.w r20, 0(r11)
	lui r11, 523264
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r15, r10, r26
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	beq r15, r3, .LBB0_839
# %bb.838:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_839:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	loadli.w r10,  -448(r30)                # 4-byte Folded Reload
	add.s r10, r10, r2
	loads.w r10, 0(r10)
	and r18, r10, r26
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r18, zero, .LBB0_847
# %bb.840:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r15, zero, .LBB0_848
.LBB0_841:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	beq r18, r3, .LBB0_843
.LBB0_842:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_843:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r10, zero, .LBB0_845
# %bb.844:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_845:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	setlt.u r10, r3, r18
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r10, zero, .LBB0_836
# %bb.846:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_836
.LBB0_847:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	beq r15, zero, .LBB0_841
.LBB0_848:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r18, r3, .LBB0_842
	j .LBB0_843
.LBB0_849:                              # %vector.body296.preheader
                                        #   in Loop: Header=BB0_834 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_851
.LBB0_850:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 1056 11 is_stmt 1             # parallel-rne.mlir:1056:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 1078 13                       # parallel-rne.mlir:1078:13
	add.s r2, r28, r2
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 1078 13                       # parallel-rne.mlir:1078:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	bneq r10, zero, .LBB0_833
.LBB0_851:                              # %vector.body296
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_834 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	add.s r15, r14, r2
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r11, r4, r2
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	loads.w r5, 0(r15)
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r4, 0(r11)
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r5, r5, r26
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	and r4, r4, r26
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r16, r5, zero
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	seteq r20, r5, r3
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	seteq r10, r4, r3
	.loc	1 1069 19                       # parallel-rne.mlir:1069:19
	seteq r25, r4, zero
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	and r5, r10, r16
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	and r10, r25, r20
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	add.s r20, r12, r2
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	or r5, r5, r10
	.loc	1 1075 19                       # parallel-rne.mlir:1075:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r10, zero, .LBB0_853
# %bb.852:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_853:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r21, r10, zero
	seteq r17, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r17, r21, r17
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r10, zero, .LBB0_855
# %bb.854:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_855:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	lui r25, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r10, zero, .LBB0_857
# %bb.856:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r20)
.LBB0_857:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r21, r10, zero
	seteq r16, r11, zero
	seteq r17, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r21, r17
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r10, zero, .LBB0_850
# %bb.858:                              # %vector.body296
                                        #   in Loop: Header=BB0_851 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_850
.LBB0_859:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1048 7 is_stmt 1              # parallel-rne.mlir:1048:7
	mfence { sm }
.LBB0_860:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	core_id r2
	addli r4, zero, 2
	bneq r2, r4, .LBB0_889
# %bb.861:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_863
.LBB0_862:                              # %middle.block287
                                        #   in Loop: Header=BB0_863 Depth=2
	.loc	1 1090 9 is_stmt 1              # parallel-rne.mlir:1090:9
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_888
.LBB0_863:                              # %.preheader96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_880 Depth 3
                                        #       Child Loop BB0_866 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 1091 11 is_stmt 1             # parallel-rne.mlir:1091:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_878
# %bb.864:                              # %scalar.ph279.preheader
                                        #   in Loop: Header=BB0_863 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_866
.LBB0_865:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 1091 11                       # parallel-rne.mlir:1091:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 1113 13 is_stmt 1             # parallel-rne.mlir:1113:13
	add.s r2, r28, r2
	.loc	1 1091 11                       # parallel-rne.mlir:1091:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1113 13                       # parallel-rne.mlir:1113:13
	stores.w r11, 0(r2)
	.loc	1 1091 11                       # parallel-rne.mlir:1091:11
	beq r10, zero, .LBB0_862
.LBB0_866:                              # %scalar.ph279
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_863 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r19, 523264
	slli r2, r10, 2
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	add.s r10, r14, r2
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	add.s r11, r12, r2
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	loads.w r10, 0(r10)
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	loads.w r20, 0(r11)
	lui r11, 523264
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	and r15, r10, r26
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	beq r15, r3, .LBB0_868
# %bb.867:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_868:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	loadli.w r10,  -448(r30)                # 4-byte Folded Reload
	add.s r10, r10, r2
	loads.w r10, 0(r10)
	and r18, r10, r26
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r18, zero, .LBB0_876
# %bb.869:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r15, zero, .LBB0_877
.LBB0_870:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	beq r18, r3, .LBB0_872
.LBB0_871:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_872:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r10, zero, .LBB0_874
# %bb.873:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_874:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	setlt.u r10, r3, r18
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r10, zero, .LBB0_865
# %bb.875:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_865
.LBB0_876:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	beq r15, zero, .LBB0_870
.LBB0_877:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_866 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r18, r3, .LBB0_871
	j .LBB0_872
.LBB0_878:                              # %vector.body281.preheader
                                        #   in Loop: Header=BB0_863 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_880
.LBB0_879:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 1091 11 is_stmt 1             # parallel-rne.mlir:1091:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 1113 13                       # parallel-rne.mlir:1113:13
	add.s r2, r28, r2
	.loc	1 1091 11                       # parallel-rne.mlir:1091:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 1113 13                       # parallel-rne.mlir:1113:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1091 11                       # parallel-rne.mlir:1091:11
	bneq r10, zero, .LBB0_862
.LBB0_880:                              # %vector.body281
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_863 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	add.s r15, r14, r2
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r11, r4, r2
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	loads.w r5, 0(r15)
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r4, 0(r11)
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	and r5, r5, r26
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	and r4, r4, r26
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r16, r5, zero
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	seteq r20, r5, r3
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	seteq r10, r4, r3
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	seteq r25, r4, zero
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	and r5, r10, r16
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	and r10, r25, r20
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	add.s r20, r12, r2
	.loc	1 1106 19                       # parallel-rne.mlir:1106:19
	or r5, r5, r10
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r10, zero, .LBB0_882
# %bb.881:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_882:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r21, r10, zero
	seteq r17, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r17, r21, r17
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r10, zero, .LBB0_884
# %bb.883:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_884:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	lui r25, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r10, zero, .LBB0_886
# %bb.885:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r20)
.LBB0_886:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r21, r10, zero
	seteq r16, r11, zero
	seteq r17, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r21, r17
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	bneq r10, zero, .LBB0_879
# %bb.887:                              # %vector.body281
                                        #   in Loop: Header=BB0_880 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_879
.LBB0_888:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1083 7 is_stmt 1              # parallel-rne.mlir:1083:7
	mfence { sm }
.LBB0_889:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1118 7                        # parallel-rne.mlir:1118:7
	core_id r2
	addli r4, zero, 3
	bneq r2, r4, .LBB0_918
# %bb.890:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1118 7                        # parallel-rne.mlir:1118:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_892
.LBB0_891:                              # %middle.block272
                                        #   in Loop: Header=BB0_892 Depth=2
	.loc	1 1125 9 is_stmt 1              # parallel-rne.mlir:1125:9
	load.d r[4:5], -480(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_917
.LBB0_892:                              # %.preheader95
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_909 Depth 3
                                        #       Child Loop BB0_895 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 1126 11 is_stmt 1             # parallel-rne.mlir:1126:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_907
# %bb.893:                              # %scalar.ph264.preheader
                                        #   in Loop: Header=BB0_892 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_895
.LBB0_894:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 1148 13 is_stmt 1             # parallel-rne.mlir:1148:13
	add.s r2, r28, r2
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	stores.w r11, 0(r2)
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	beq r10, zero, .LBB0_891
.LBB0_895:                              # %scalar.ph264
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_892 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r19, 523264
	slli r2, r10, 2
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r10, r14, r2
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	add.s r11, r12, r2
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	loads.w r10, 0(r10)
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	loads.w r20, 0(r11)
	lui r11, 523264
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r15, r10, r26
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r15, r3, .LBB0_897
# %bb.896:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_897:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	loadli.w r10,  -448(r30)                # 4-byte Folded Reload
	add.s r10, r10, r2
	loads.w r10, 0(r10)
	and r18, r10, r26
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r18, zero, .LBB0_905
# %bb.898:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r15, zero, .LBB0_906
.LBB0_899:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	beq r18, r3, .LBB0_901
.LBB0_900:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_901:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r10, zero, .LBB0_903
# %bb.902:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_903:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	setlt.u r10, r3, r18
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r10, zero, .LBB0_894
# %bb.904:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_894
.LBB0_905:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r15, zero, .LBB0_899
.LBB0_906:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_895 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r18, r3, .LBB0_900
	j .LBB0_901
.LBB0_907:                              # %vector.body266.preheader
                                        #   in Loop: Header=BB0_892 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_909
.LBB0_908:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 1126 11 is_stmt 1             # parallel-rne.mlir:1126:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	add.s r2, r28, r2
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	bneq r10, zero, .LBB0_891
.LBB0_909:                              # %vector.body266
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_892 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r15, r14, r2
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r11, r4, r2
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	loads.w r5, 0(r15)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r4, 0(r11)
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r5, r5, r26
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	and r4, r4, r26
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	seteq r16, r5, zero
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	seteq r20, r5, r3
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	seteq r10, r4, r3
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	seteq r25, r4, zero
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	and r5, r10, r16
	.loc	1 1140 19                       # parallel-rne.mlir:1140:19
	and r10, r25, r20
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	add.s r20, r12, r2
	.loc	1 1141 19                       # parallel-rne.mlir:1141:19
	or r5, r5, r10
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r10, zero, .LBB0_911
# %bb.910:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_911:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r21, r10, zero
	seteq r17, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r17, r21, r17
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r10, zero, .LBB0_913
# %bb.912:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_913:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	lui r25, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r10, zero, .LBB0_915
# %bb.914:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r20)
.LBB0_915:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r21, r10, zero
	seteq r16, r11, zero
	seteq r17, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r21, r17
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r10, zero, .LBB0_908
# %bb.916:                              # %vector.body266
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_908
.LBB0_917:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1118 7 is_stmt 1              # parallel-rne.mlir:1118:7
	mfence { sm }
.LBB0_918:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	core_id r2
	addli r4, zero, 4
	bneq r2, r4, .LBB0_947
# %bb.919:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_921
.LBB0_920:                              # %middle.block257
                                        #   in Loop: Header=BB0_921 Depth=2
	.loc	1 1160 9 is_stmt 1              # parallel-rne.mlir:1160:9
	load.d r[4:5], -488(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_946
.LBB0_921:                              # %.preheader94
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_938 Depth 3
                                        #       Child Loop BB0_924 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 1161 11 is_stmt 1             # parallel-rne.mlir:1161:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_936
# %bb.922:                              # %scalar.ph249.preheader
                                        #   in Loop: Header=BB0_921 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_924
.LBB0_923:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	setlt.ul r10, r[4:5], r[6:7]
	.loc	1 1183 13 is_stmt 1             # parallel-rne.mlir:1183:13
	add.s r2, r28, r2
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	stores.w r11, 0(r2)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	beq r10, zero, .LBB0_920
.LBB0_924:                              # %scalar.ph249
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_921 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[10:11], r[4:5], r[8:9]
	lui r19, 523264
	slli r2, r10, 2
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r10, r14, r2
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r11, r12, r2
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r10, 0(r10)
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	loads.w r20, 0(r11)
	lui r11, 523264
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r15, r10, r26
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	beq r15, r3, .LBB0_926
# %bb.925:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_926:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	loadli.w r10,  -448(r30)                # 4-byte Folded Reload
	add.s r10, r10, r2
	loads.w r10, 0(r10)
	and r18, r10, r26
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r18, zero, .LBB0_934
# %bb.927:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r15, zero, .LBB0_935
.LBB0_928:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	beq r18, r3, .LBB0_930
.LBB0_929:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_930:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r10, zero, .LBB0_932
# %bb.931:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_932:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	setlt.u r10, r3, r18
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r10, zero, .LBB0_923
# %bb.933:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_923
.LBB0_934:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	beq r15, zero, .LBB0_928
.LBB0_935:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_924 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r18, r3, .LBB0_929
	j .LBB0_930
.LBB0_936:                              # %vector.body251.preheader
                                        #   in Loop: Header=BB0_921 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_938
.LBB0_937:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 1161 11 is_stmt 1             # parallel-rne.mlir:1161:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	add.s r2, r28, r2
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	seteq.d r10, r[18:19], r[23:24]
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	bneq r10, zero, .LBB0_920
.LBB0_938:                              # %vector.body251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_921 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[4:5], r[18:19], r[8:9]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r15, r14, r2
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r11, r4, r2
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r5, 0(r15)
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r4, 0(r11)
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r5, r5, r26
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	and r4, r4, r26
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r16, r5, zero
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	seteq r20, r5, r3
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	seteq r10, r4, r3
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	seteq r25, r4, zero
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	and r5, r10, r16
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	and r10, r25, r20
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r20, r12, r2
	.loc	1 1176 19                       # parallel-rne.mlir:1176:19
	or r5, r5, r10
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r10, zero, .LBB0_940
# %bb.939:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r20)
.LBB0_940:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	loads.w r10, 4(r11)
	loads.w r16, 4(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r21, r10, zero
	seteq r17, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r17, r21, r17
	lui r27, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r10, zero, .LBB0_942
# %bb.941:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r20)
.LBB0_942:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	loads.w r10, 8(r11)
	loads.w r16, 8(r15)
	and r10, r10, r26
	and r16, r16, r26
	seteq r17, r10, r3
	seteq r25, r10, zero
	seteq r21, r16, zero
	seteq r22, r16, r3
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r17, r21
	and r17, r25, r22
	lui r25, 523264
	or r16, r16, r17
	or r10, r10, r16
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r10, zero, .LBB0_944
# %bb.943:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r20)
.LBB0_944:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	loads.w r10, 12(r11)
	loads.w r11, 12(r15)
	and r10, r10, r26
	and r11, r11, r26
	seteq r15, r10, r3
	seteq r21, r10, zero
	seteq r16, r11, zero
	seteq r17, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r15, r16
	and r15, r21, r17
	or r11, r11, r15
	or r10, r10, r11
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r10, zero, .LBB0_937
# %bb.945:                              # %vector.body251
                                        #   in Loop: Header=BB0_938 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r20)
	j .LBB0_937
.LBB0_946:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1153 7 is_stmt 1              # parallel-rne.mlir:1153:7
	mfence { sm }
.LBB0_947:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	core_id r2
	addli r4, zero, 5
	bneq r2, r4, .LBB0_976
# %bb.948:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_950
.LBB0_949:                              # %middle.block242
                                        #   in Loop: Header=BB0_950 Depth=2
	.loc	1 1195 9 is_stmt 1              # parallel-rne.mlir:1195:9
	load.d r[4:5], -496(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_975
.LBB0_950:                              # %.preheader93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_967 Depth 3
                                        #       Child Loop BB0_953 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 1196 11 is_stmt 1             # parallel-rne.mlir:1196:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_965
# %bb.951:                              # %scalar.ph234.preheader
                                        #   in Loop: Header=BB0_950 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_953
.LBB0_952:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	setlt.ul r8, r[4:5], r[6:7]
	.loc	1 1218 13 is_stmt 1             # parallel-rne.mlir:1218:13
	add.s r2, r28, r2
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1218 13                       # parallel-rne.mlir:1218:13
	stores.w r9, 0(r2)
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	beq r8, zero, .LBB0_949
.LBB0_953:                              # %scalar.ph234
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_950 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.ul r[8:9], r[4:5], r[21:22]
	lui r19, 523264
	slli r2, r8, 2
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.s r8, r14, r2
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r9, r12, r2
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r8, 0(r8)
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r20, 0(r9)
	lui r9, 523264
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	and r11, r8, r26
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	beq r11, r3, .LBB0_955
# %bb.954:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_955:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r2
	loads.w r8, 0(r8)
	and r15, r8, r26
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r15, zero, .LBB0_963
# %bb.956:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r11, zero, .LBB0_964
.LBB0_957:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	beq r15, r3, .LBB0_959
.LBB0_958:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_959:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	setlt.u r8, r3, r11
	lui r11, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r8, zero, .LBB0_961
# %bb.960:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_961:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	setlt.u r8, r3, r15
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r8, zero, .LBB0_952
# %bb.962:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_952
.LBB0_963:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	beq r11, zero, .LBB0_957
.LBB0_964:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r15, r3, .LBB0_958
	j .LBB0_959
.LBB0_965:                              # %vector.body236.preheader
                                        #   in Loop: Header=BB0_950 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_967
.LBB0_966:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 1196 11 is_stmt 1             # parallel-rne.mlir:1196:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1218 13                       # parallel-rne.mlir:1218:13
	add.s r2, r28, r2
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	seteq.d r8, r[19:20], r[23:24]
	.loc	1 1218 13                       # parallel-rne.mlir:1218:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	bneq r8, zero, .LBB0_949
.LBB0_967:                              # %vector.body236
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_950 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.ul r[4:5], r[19:20], r[21:22]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.s r11, r14, r2
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r9, r4, r2
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r5, 0(r11)
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	loads.w r4, 0(r9)
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	and r5, r5, r26
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	and r4, r4, r26
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	seteq r15, r5, zero
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	seteq r16, r5, r3
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	seteq r10, r4, r3
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	seteq r25, r4, zero
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	and r5, r10, r15
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	and r10, r25, r16
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r15, r12, r2
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	or r5, r5, r10
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r10, zero, .LBB0_969
# %bb.968:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_969:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r17, r10, zero
	seteq r8, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r8, zero, .LBB0_971
# %bb.970:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r15)
.LBB0_971:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r3
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r3
	max.u r8, r8, r10
	setlt.u r8, r3, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r8, zero, .LBB0_973
# %bb.972:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r15)
.LBB0_973:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r3
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r8, zero, .LBB0_966
# %bb.974:                              # %vector.body236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r15)
	j .LBB0_966
.LBB0_975:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1188 7 is_stmt 1              # parallel-rne.mlir:1188:7
	mfence { sm }
.LBB0_976:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1223 7                        # parallel-rne.mlir:1223:7
	core_id r2
	addli r4, zero, 6
	bneq r2, r4, .LBB0_1005
# %bb.977:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	.loc	1 1223 7                        # parallel-rne.mlir:1223:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_979
.LBB0_978:                              # %middle.block227
                                        #   in Loop: Header=BB0_979 Depth=2
	.loc	1 1230 9 is_stmt 1              # parallel-rne.mlir:1230:9
	load.d r[4:5], -504(r30)                # 8-byte Folded Reload
	load.d r[8:9], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_1004
.LBB0_979:                              # %.preheader92
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_996 Depth 3
                                        #       Child Loop BB0_982 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1231 11 is_stmt 1             # parallel-rne.mlir:1231:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_994
# %bb.980:                              # %scalar.ph219.preheader
                                        #   in Loop: Header=BB0_979 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_982
.LBB0_981:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	setlt.ul r8, r[4:5], r[6:7]
	.loc	1 1253 13 is_stmt 1             # parallel-rne.mlir:1253:13
	add.s r2, r28, r2
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	stores.w r9, 0(r2)
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	beq r8, zero, .LBB0_978
.LBB0_982:                              # %scalar.ph219
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_979 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r21, 523264
	slli r2, r8, 2
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	add.s r8, r14, r2
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.s r9, r12, r2
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	loads.w r8, 0(r8)
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	loads.w r22, 0(r9)
	lui r9, 523264
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	and r11, r8, r26
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r11, r3, .LBB0_984
# %bb.983:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_984:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	loadli.w r8,  -448(r30)                 # 4-byte Folded Reload
	add.s r8, r8, r2
	loads.w r8, 0(r8)
	and r15, r8, r26
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r15, zero, .LBB0_992
# %bb.985:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r11, zero, .LBB0_993
.LBB0_986:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	beq r15, r3, .LBB0_988
.LBB0_987:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_988:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	setlt.u r8, r3, r11
	lui r11, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r8, zero, .LBB0_990
# %bb.989:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r22, 0
.LBB0_990:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	setlt.u r8, r3, r15
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r8, zero, .LBB0_981
# %bb.991:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_981
.LBB0_992:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r11, zero, .LBB0_986
.LBB0_993:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_982 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r15, r3, .LBB0_987
	j .LBB0_988
.LBB0_994:                              # %vector.body221.preheader
                                        #   in Loop: Header=BB0_979 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_996
.LBB0_995:                              # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 1231 11 is_stmt 1             # parallel-rne.mlir:1231:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	add.s r2, r28, r2
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	seteq.d r8, r[21:22], r[23:24]
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	stores.w r25, 8(r2)
	lui r25, 524288
	stores.w r5, 12(r2)
	stores.w r27, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	bneq r8, zero, .LBB0_978
.LBB0_996:                              # %vector.body221
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_979 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.ul r[4:5], r[21:22], r[19:20]
	slli r2, r4, 2
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	add.s r11, r14, r2
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.s r9, r4, r2
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	loads.w r5, 0(r11)
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	loads.w r4, 0(r9)
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	and r5, r5, r26
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	and r4, r4, r26
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	seteq r15, r5, zero
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	seteq r16, r5, r3
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	seteq r10, r4, r3
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	seteq r25, r4, zero
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	and r5, r10, r15
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	and r10, r25, r16
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.s r15, r12, r2
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	or r5, r5, r10
	.loc	1 1250 19                       # parallel-rne.mlir:1250:19
	or r10, r4, r5
	lui r5, 523264
	lui r4, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r10, zero, .LBB0_998
# %bb.997:                              # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r15)
.LBB0_998:                              # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	loads.w r10, 4(r9)
	loads.w r16, 4(r11)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r17, r10, zero
	seteq r8, r16, r3
	seteq r27, r16, zero
	max.u r10, r10, r16
	setlt.u r10, r3, r10
	and r16, r25, r27
	and r8, r17, r8
	lui r27, 523264
	or r8, r16, r8
	or r8, r10, r8
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r8, zero, .LBB0_1000
# %bb.999:                              # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 4(r15)
.LBB0_1000:                             # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	loads.w r8, 8(r9)
	loads.w r10, 8(r11)
	and r8, r8, r26
	and r10, r10, r26
	seteq r16, r8, r3
	seteq r25, r8, zero
	seteq r17, r10, zero
	seteq r18, r10, r3
	max.u r8, r8, r10
	setlt.u r8, r3, r8
	and r10, r16, r17
	and r16, r25, r18
	lui r25, 523264
	or r10, r10, r16
	or r8, r8, r10
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r8, zero, .LBB0_1002
# %bb.1001:                             # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 8(r15)
.LBB0_1002:                             # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	loads.w r8, 12(r9)
	loads.w r9, 12(r11)
	and r8, r8, r26
	and r9, r9, r26
	seteq r10, r8, r3
	seteq r17, r8, zero
	seteq r11, r9, zero
	seteq r16, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r10, r11
	and r10, r17, r16
	or r9, r9, r10
	or r8, r8, r9
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r8, zero, .LBB0_995
# %bb.1003:                             # %vector.body221
                                        #   in Loop: Header=BB0_996 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r15)
	j .LBB0_995
.LBB0_1004:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1223 7 is_stmt 1              # parallel-rne.mlir:1223:7
	mfence { sm }
.LBB0_1005:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	core_id r2
	addli r4, zero, 7
	bneq r2, r4, .LBB0_1034
# %bb.1006:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_1008
.LBB0_1007:                             # %middle.block
                                        #   in Loop: Header=BB0_1008 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	.loc	1 1265 9 is_stmt 1              # parallel-rne.mlir:1265:9
	setlt.ul r2, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_1033
.LBB0_1008:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1025 Depth 3
                                        #       Child Loop BB0_1011 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[4:5], r2
	.loc	1 1266 11 is_stmt 1             # parallel-rne.mlir:1266:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1023
# %bb.1009:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1008 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_1011
.LBB0_1010:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 1266 11                       # parallel-rne.mlir:1266:11
	setlt.ul r4, r[19:20], r[6:7]
	.loc	1 1288 13 is_stmt 1             # parallel-rne.mlir:1288:13
	add.s r2, r28, r2
	.loc	1 1266 11                       # parallel-rne.mlir:1266:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 1288 13                       # parallel-rne.mlir:1288:13
	stores.w r5, 0(r2)
	.loc	1 1266 11                       # parallel-rne.mlir:1266:11
	beq r4, zero, .LBB0_1007
.LBB0_1011:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1008 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	add.ul r[4:5], r[19:20], r[17:18]
	lui r21, 523264
	slli r2, r4, 2
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	add.s r4, r14, r2
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.s r5, r12, r2
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	loads.w r4, 0(r4)
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	loads.w r22, 0(r5)
	lui r5, 523264
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	and r11, r4, r26
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	beq r11, r3, .LBB0_1013
# %bb.1012:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_1013:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r2
	loads.w r4, 0(r4)
	and r15, r4, r26
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r15, zero, .LBB0_1021
# %bb.1014:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r11, zero, .LBB0_1022
.LBB0_1015:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	beq r15, r3, .LBB0_1017
.LBB0_1016:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_1017:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	setlt.u r4, r3, r11
	lui r11, 523264
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r4, zero, .LBB0_1019
# %bb.1018:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r22, 0
.LBB0_1019:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	setlt.u r4, r3, r15
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r4, zero, .LBB0_1010
# %bb.1020:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r11, 0
	j .LBB0_1010
.LBB0_1021:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	beq r11, zero, .LBB0_1015
.LBB0_1022:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1011 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r15, r3, .LBB0_1016
	j .LBB0_1017
.LBB0_1023:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1008 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1025
.LBB0_1024:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 1266 11 is_stmt 1             # parallel-rne.mlir:1266:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1288 13                       # parallel-rne.mlir:1288:13
	add.s r2, r28, r2
	.loc	1 1266 11                       # parallel-rne.mlir:1266:11
	seteq.d r4, r[19:20], r[23:24]
	.loc	1 1288 13                       # parallel-rne.mlir:1288:13
	stores.w r25, 4(r2)
	lui r25, 524288
	stores.w r11, 12(r2)
	stores.w r27, 8(r2)
	stores.w r5, 0(r2)
	.loc	1 1266 11                       # parallel-rne.mlir:1266:11
	bneq r4, zero, .LBB0_1007
.LBB0_1025:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1008 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	add.ul r[10:11], r[19:20], r[17:18]
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	slli r2, r10, 2
	add.s r15, r4, r2
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	add.s r21, r14, r2
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	loads.w r5, 0(r15)
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	loads.w r10, 0(r21)
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	and r5, r5, r26
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	and r10, r10, r26
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	seteq r11, r5, r3
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	seteq r25, r5, zero
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	seteq r16, r10, zero
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	seteq r22, r10, r3
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	max.u r5, r5, r10
	setlt.u r5, r3, r5
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	and r10, r11, r16
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	and r11, r25, r22
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.s r22, r12, r2
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	or r10, r5, r10
	lui r5, 523264
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r10, zero, .LBB0_1027
# %bb.1026:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r22)
.LBB0_1027:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r10, 4(r15)
	loads.w r16, 4(r21)
	and r10, r10, r26
	and r16, r16, r26
	seteq r25, r10, r3
	seteq r27, r16, zero
	seteq r4, r16, r3
	seteq r8, r10, zero
	max.u r9, r10, r16
	setlt.u r9, r3, r9
	and r10, r25, r27
	and r4, r8, r4
	lui r25, 523264
	or r4, r10, r4
	or r4, r9, r4
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r4, zero, .LBB0_1029
# %bb.1028:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_1029:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r4, 8(r15)
	loads.w r8, 8(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r27, r4, zero
	seteq r10, r8, zero
	seteq r16, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r10
	and r9, r27, r16
	lui r27, 523264
	or r8, r8, r9
	or r4, r4, r8
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r4, zero, .LBB0_1031
# %bb.1030:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r22)
.LBB0_1031:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r4, 12(r15)
	loads.w r8, 12(r21)
	and r4, r4, r26
	and r8, r8, r26
	seteq r9, r4, r3
	seteq r16, r4, zero
	seteq r10, r8, zero
	seteq r15, r8, r3
	max.u r4, r4, r8
	setlt.u r4, r3, r4
	and r8, r9, r10
	and r9, r16, r15
	or r8, r8, r9
	or r4, r4, r8
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	bneq r4, zero, .LBB0_1024
# %bb.1032:                             # %vector.body
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_1024
.LBB0_1033:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1258 7 is_stmt 1              # parallel-rne.mlir:1258:7
	mfence { sm }
.LBB0_1034:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1293 7                        # parallel-rne.mlir:1293:7
	addli r2, zero, 255
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	addli r4, zero, 3
	.loc	1 1293 7                        # parallel-rne.mlir:1293:7
	csr_set csr5, r2
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r2
	.loc	1 1293 7                        # parallel-rne.mlir:1293:7
	sync_core
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	beq r2, r4, .LBB0_5
# %bb.1035:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[11:12], -552(r30)              # 8-byte Folded Reload
	.loc	1 1305 7 is_stmt 1              # parallel-rne.mlir:1305:7
	bneq r2, zero, .LBB0_6
# %bb.1036:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -580(r30)                 # 4-byte Folded Reload
	.loc	1 1305 7                        # parallel-rne.mlir:1305:7
	load.d r[8:9], -576(r30)                # 8-byte Folded Reload
	load.d r[14:15], 24(r30)
	sext_int2long r[4:5], r2
	addli r2, zero, 384
	zext_int2long r[6:7], r2
	addli r2, zero, 19
	min.sl r[6:7], r[4:5], r[6:7]
	sll.d r[8:9], r[8:9], r2
	addli r2, zero, 17
	addli.d r[6:7], r[6:7], 128
	xwait r2, 0
	add.ul r[8:9], r[14:15], r[8:9]
	addli r2, zero, 1
	max.sl r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	load.d r[6:7], -568(r30)                # 8-byte Folded Reload
	.loc	1 1301 13 is_stmt 1             # parallel-rne.mlir:1301:13
	min.sl r[4:5], r[4:5], r[23:24]
	.loc	1 1305 7                        # parallel-rne.mlir:1305:7
	add.ul r[6:7], r[8:9], r[6:7]
	addli r8, zero, 5
	lock zero, r8
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 1
	load.d r[9:10], -592(r30)               # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r2, r9, 2
	dma_cfg r6, r28, r2, 3
	addli r2, zero, 512
	addli r6, zero, 4096
	dma_cfg r6, r2, r4, 4
	addli r2, zero, 18
	dma_run zero
	unlock r8
	xsignal r2, 0
	j .LBB0_6
.LBB0_1037:                             # %._crit_edge
	.loc	1 1307 5                        # parallel-rne.mlir:1307:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_1039
# %bb.1038:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1307 5                        # parallel-rne.mlir:1307:5
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
.LBB0_1039:
	.loc	1 1308 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1308:5
	addli sp, sp, 648
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
	.long	712                             # 0x2c8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-1s71w_dz" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
