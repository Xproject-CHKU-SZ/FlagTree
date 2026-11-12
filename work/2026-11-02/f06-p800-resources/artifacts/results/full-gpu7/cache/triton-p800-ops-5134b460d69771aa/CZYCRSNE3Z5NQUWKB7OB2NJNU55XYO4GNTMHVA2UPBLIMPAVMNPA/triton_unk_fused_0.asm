	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-fbcdpuet" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -704
	addli r2, zero, 1
.Ltmp0:
	.loc	1 37 5 prologue_end             # parallel-rne.mlir:37:5
	core_id r20
	addli r30, sp, 640
	xsignal_mode_cfg r2
	beq r20, zero, .LBB0_2
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
	ble.s r2, r1, .LBB0_1040
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 48 11 is_stmt 1               # parallel-rne.mlir:48:11
	sext_int2long r[5:6], r1
	lui r1, 160
	addli r21, zero, 64
	addli r15, zero, 1
	addli r28, zero, 2
	addli r11, zero, 4
	lui r23, 522240
	lui r25, 268288
	store.d r[2:3], -600(r30)               # 8-byte Folded Spill
	ori r1, r1, 1024
	lui r2, 192
	lui r3, 56
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 256
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	lui r1, 224
	ori r1, r1, 1024
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 288
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 1024
	lui r2, 2047
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	lui r1, 320
	ori r1, r1, 1024
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	ori r1, r2, 4095
	lui r2, 352
	ori r2, r2, 1024
	storeli.w r2, -628(r30)                 # 4-byte Folded Spill
	ori r2, r3, 2115
	lui r3, 259268
	storeli.w r2, -632(r30)                 # 4-byte Folded Spill
	lui r2, 250738
	ori r2, r2, 1811
	storeli.w r2, -636(r30)                 # 4-byte Folded Spill
	ori r2, r3, 554
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	addli r2, zero, 17
	addli r21, zero, 64
	addli r15, zero, 1
	addli r28, zero, 2
	addli r11, zero, 4
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
	load.d r[5:6], -552(r30)                # 8-byte Folded Reload
	.loc	1 64 5 is_stmt 1                # parallel-rne.mlir:64:5
	load.d r[2:3], -600(r30)                # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r2, r[5:6], r[2:3]
	beq r2, zero, .LBB0_1040
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_94 Depth 2
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #     Child Loop BB0_121 Depth 2
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_123 Depth 3
                                        #     Child Loop BB0_148 Depth 2
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #     Child Loop BB0_177 Depth 2
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_180 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_223 Depth 3
                                        #       Child Loop BB0_209 Depth 3
                                        #     Child Loop BB0_235 Depth 2
                                        #       Child Loop BB0_252 Depth 3
                                        #       Child Loop BB0_238 Depth 3
                                        #     Child Loop BB0_269 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_270 Depth 3
                                        #     Child Loop BB0_275 Depth 2
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #     Child Loop BB0_282 Depth 2
                                        #       Child Loop BB0_284 Depth 3
                                        #       Child Loop BB0_283 Depth 3
                                        #     Child Loop BB0_289 Depth 2
                                        #       Child Loop BB0_291 Depth 3
                                        #       Child Loop BB0_290 Depth 3
                                        #     Child Loop BB0_296 Depth 2
                                        #       Child Loop BB0_298 Depth 3
                                        #       Child Loop BB0_297 Depth 3
                                        #     Child Loop BB0_303 Depth 2
                                        #       Child Loop BB0_305 Depth 3
                                        #       Child Loop BB0_304 Depth 3
                                        #     Child Loop BB0_310 Depth 2
                                        #       Child Loop BB0_312 Depth 3
                                        #       Child Loop BB0_311 Depth 3
                                        #     Child Loop BB0_317 Depth 2
                                        #       Child Loop BB0_319 Depth 3
                                        #       Child Loop BB0_318 Depth 3
                                        #     Child Loop BB0_326 Depth 2
                                        #       Child Loop BB0_328 Depth 3
                                        #     Child Loop BB0_348 Depth 2
                                        #       Child Loop BB0_350 Depth 3
                                        #     Child Loop BB0_369 Depth 2
                                        #       Child Loop BB0_371 Depth 3
                                        #     Child Loop BB0_391 Depth 2
                                        #       Child Loop BB0_393 Depth 3
                                        #     Child Loop BB0_413 Depth 2
                                        #       Child Loop BB0_415 Depth 3
                                        #     Child Loop BB0_435 Depth 2
                                        #       Child Loop BB0_437 Depth 3
                                        #     Child Loop BB0_457 Depth 2
                                        #       Child Loop BB0_459 Depth 3
                                        #     Child Loop BB0_480 Depth 2
                                        #       Child Loop BB0_482 Depth 3
                                        #     Child Loop BB0_507 Depth 2
                                        #       Child Loop BB0_517 Depth 3
                                        #       Child Loop BB0_511 Depth 3
                                        #     Child Loop BB0_544 Depth 2
                                        #       Child Loop BB0_554 Depth 3
                                        #       Child Loop BB0_548 Depth 3
                                        #     Child Loop BB0_580 Depth 2
                                        #       Child Loop BB0_590 Depth 3
                                        #       Child Loop BB0_584 Depth 3
                                        #     Child Loop BB0_617 Depth 2
                                        #       Child Loop BB0_627 Depth 3
                                        #       Child Loop BB0_621 Depth 3
                                        #     Child Loop BB0_654 Depth 2
                                        #       Child Loop BB0_664 Depth 3
                                        #       Child Loop BB0_658 Depth 3
                                        #     Child Loop BB0_691 Depth 2
                                        #       Child Loop BB0_701 Depth 3
                                        #       Child Loop BB0_695 Depth 3
                                        #     Child Loop BB0_728 Depth 2
                                        #       Child Loop BB0_738 Depth 3
                                        #       Child Loop BB0_732 Depth 3
                                        #     Child Loop BB0_766 Depth 2
                                        #       Child Loop BB0_776 Depth 3
                                        #       Child Loop BB0_770 Depth 3
                                        #     Child Loop BB0_809 Depth 2
                                        #       Child Loop BB0_826 Depth 3
                                        #       Child Loop BB0_812 Depth 3
                                        #     Child Loop BB0_837 Depth 2
                                        #       Child Loop BB0_854 Depth 3
                                        #       Child Loop BB0_840 Depth 3
                                        #     Child Loop BB0_866 Depth 2
                                        #       Child Loop BB0_883 Depth 3
                                        #       Child Loop BB0_869 Depth 3
                                        #     Child Loop BB0_895 Depth 2
                                        #       Child Loop BB0_912 Depth 3
                                        #       Child Loop BB0_898 Depth 3
                                        #     Child Loop BB0_924 Depth 2
                                        #       Child Loop BB0_941 Depth 3
                                        #       Child Loop BB0_927 Depth 3
                                        #     Child Loop BB0_953 Depth 2
                                        #       Child Loop BB0_970 Depth 3
                                        #       Child Loop BB0_956 Depth 3
                                        #     Child Loop BB0_982 Depth 2
                                        #       Child Loop BB0_999 Depth 3
                                        #       Child Loop BB0_985 Depth 3
                                        #     Child Loop BB0_1011 Depth 2
                                        #       Child Loop BB0_1028 Depth 3
                                        #       Child Loop BB0_1014 Depth 3
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	loadli.w r2,  -440(r30)
	addli r24, zero, 128
	addli r26, zero, 4
	addli r4, r2, 1
	storeli.w r4, -440(r30)
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	bneq r20, r11, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 18
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  48(r30)
	store.d r[5:6], -552(r30)               # 8-byte Folded Spill
	mod.s r2, r2, r28
	loadli.w r8,  -136(r30)
	addli r11, zero, 0
	addli r14, zero, 1
	div.s r4, r5, r3
	loadli.w r3,  44(r30)
	slli r22, r2, 16
	div.s r5, r4, r3
	addli r3, zero, 8
	loadli.w r4,  -428(r30)
	div.s r6, r5, r21
	slli r9, r6, 3
	slli r6, r6, 6
	sub.s r7, r15, r9
	sub.s r6, r5, r6
	addli r15, zero, 0
	min.s r7, r7, r3
	div.s r10, r6, r7
	mod.s r5, r5, r7
	loadli.w r6,  -328(r30)
	loadli.w r7,  -300(r30)
	add.s r2, r9, r5
	slli r3, r10, 7
	zext_int2long r[9:10], r10
	lui r5, 32
	storeli.w r3, -444(r30)                 # 4-byte Folded Spill
	slli r3, r2, 7
	zext_int2long r[12:13], r2
	addli r2, zero, 16
	storeli.w r3, -580(r30)                 # 4-byte Folded Spill
	addli r3, zero, 7
	store.d r[12:13], -576(r30)             # 8-byte Folded Spill
	sll.d r[12:13], r[12:13], r2
	sll.d r[9:10], r[9:10], r3
	.loc	1 90 7 is_stmt 1                # parallel-rne.mlir:90:7
	load.d r[2:3], 8(r30)
	sll.d r[9:10], r[9:10], r28
	store.d r[9:10], -568(r30)              # 8-byte Folded Spill
	add.ul r[9:10], r[2:3], r[9:10]
	load.d r[2:3], 0(r30)
	add.ul r[12:13], r[2:3], r[12:13]
	addli r3, zero, 24
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 114 9                         # parallel-rne.mlir:114:9
	addli r11, zero, 5
	xwait r28, 0
	xwait r11, 0
	lock zero, zero
	ds_cfg r28, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r24, zero, 13
	shuffle_batch r2, r16, r21, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r26, 0
.LBB0_12:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	andi r2, r14, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r4, r4, 1
	addli r6, r6, 1
	.loc	1 124 15 is_stmt 1              # parallel-rne.mlir:124:15
	addli r7, r7, 1
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r8, r8, 1
	.loc	1 134 15                        # parallel-rne.mlir:134:15
	addli r15, r15, 1
	addli r11, zero, 1
	addli r14, zero, 0
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	beq r2, zero, .LBB0_26
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r2, zero, 6
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	mod.s r16, r4, r3
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r2, r6, r2
	slli r17, r2, 15
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	slli r2, r16, 15
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	add.s r16, r17, r5
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	beq r20, r28, .LBB0_11
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[17:18], r11
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r11, zero, 1
	bneq r20, r11, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	addli r2, zero, 8
	addli r19, zero, 256
	addli r11, zero, 512
	addli r26, zero, 4
	sll.d r[17:18], r[17:18], r2
	addli r2, zero, 3
	xwait r2, 0
	addli r2, zero, 4
	add.ul r[17:18], r[12:13], r[17:18]
	lock zero, r2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r18, zero, 2
	dma_cfg r16, r17, r19, 3
	dma_cfg r19, r11, r24, 4
	dma_run zero
	unlock r2
	xsignal r28, 0
	.loc	1 114 9 is_stmt 1               # parallel-rne.mlir:114:9
	j .LBB0_12
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r5, zero, 6
	.loc	1 124 15 is_stmt 1              # parallel-rne.mlir:124:15
	addli r3, zero, 40
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	mod.s r11, r8, r5
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	mod.s r16, r7, r3
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	lui r3, 80
	slli r19, r11, 15
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	slli r11, r16, 15
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	add.s r16, r19, r3
	.loc	1 130 9                         # parallel-rne.mlir:130:9
	addli r3, zero, 7
	beq r20, r3, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r20, r5, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=2
	addli r2, zero, 18
	addli r3, zero, 512
	addli r26, zero, 4
	addli r11, zero, 4096
	sll.d r[17:18], r[17:18], r2
	addli r2, zero, 7
	xwait r2, 0
	addli r2, zero, 4
	add.ul r[17:18], r[9:10], r[17:18]
	lock zero, r2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r18, zero, 2
	dma_cfg r16, r17, r3, 3
	dma_cfg r3, r11, r21, 4
	dma_run zero
	unlock r2
	xsignal r5, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	addli r2, zero, 9
	xwait r5, 0
	addli r24, zero, 128
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r28, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 7
	shuffle_coa r11, r16, r21, 2
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
.LBB0_20:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 24
	lui r5, 32
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 24
	lui r5, 32
	.loc	1 133 9 is_stmt 1               # parallel-rne.mlir:133:9
	bneq r20, r26, .LBB0_12
# %bb.22:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 8
	xwait r26, 0
	addli r16, zero, 1
	addli r17, zero, 1
	addli r18, zero, 0
	addli r24, zero, 128
	xwait r3, 0
	addli r3, zero, 4
	beq r15, zero, .LBB0_24
.LBB0_23:                               # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r18, 14
	slli r18, r18, 8
	lock zero, r16
	mm_cfg r21, r21, r24, 0
	or r19, r19, r11
	or r18, r18, r22
	mm_cfg r3, r3, r16, 2
	mm_acc r18, r2, r19, 8
	andi r19, r17, 1
	addli r18, zero, 1
	addli r17, zero, 0
	unlock r16
	bneq r19, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r18, 14
	slli r18, r18, 8
	lock zero, r16
	mm_cfg r21, r21, r24, 0
	or r19, r19, r11
	or r18, r18, r22
	mm_cfg r3, r3, r16, 2
	mm r18, r2, r19, 8
	andi r19, r17, 1
	addli r18, zero, 1
	addli r17, zero, 0
	unlock r16
	bneq r19, zero, .LBB0_24
.LBB0_25:                               # %.loopexit
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r2, zero, 5
	addli r24, zero, 128
	addli r26, zero, 4
	addli r3, zero, 24
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 4
	.loc	1 107 15 is_stmt 1              # parallel-rne.mlir:107:15
	storeli.w r4, -428(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r6, -328(r30)
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	storeli.w r7, -300(r30)
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	storeli.w r8, -136(r30)
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r20, r11, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r2,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	loadli.w r8,  -108(r30)
	addli r14, zero, 1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	zext_int2long r[4:5], r2
	addli r2, zero, 896
	zext_int2long r[6:7], r2
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	mod.s r2, r8, r28
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	min.ul r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 128
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	max.ul r[6:7], r[6:7], r[4:5]
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r2, r2, 9
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	sub.sl r[9:10], r[6:7], r[4:5]
	addli r4, zero, 128
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	addli r7, r8, 1
	zext_int2long r[5:6], r4
	lui r4, 128
	storeli.w r7, -108(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	min.ul r[12:13], r[9:10], r[5:6]
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	add.s r2, r2, r4
	ori r4, r4, 1024
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	store.d r[12:13], -592(r30)             # 8-byte Folded Spill
	bneq r20, r14, .LBB0_30
# %bb.29:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], 16(r30)
	load.d r[9:10], -568(r30)               # 8-byte Folded Reload
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	add.ul r[7:8], r[7:8], r[9:10]
	addli r9, zero, 20
	xwait r9, 0
	lock zero, r11
	slli r9, r12, 2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r9, 3
	addli r2, zero, 512
	dma_cfg r2, r2, r14, 4
	addli r2, zero, 19
	dma_run zero
	unlock r11
	xsignal r2, 0
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	loadli.w r2,  -96(r30)
	mod.s r7, r2, r28
	addli r2, r2, 1
	storeli.w r2, -96(r30)
	slli r7, r7, 16
	add.s r26, r7, r4
	j .LBB0_35
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r7,  -96(r30)
	mod.s r8, r7, r28
	addli r7, r7, 1
	storeli.w r7, -96(r30)
	slli r8, r8, 16
	add.s r26, r8, r4
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r4, zero, 5
	bneq r20, r4, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r7, zero, 0
	xwait r4, 0
	addli r4, zero, 19
	xwait r4, 0
	addli r4, zero, 23
	xwait r4, 0
	lock zero, r28
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	lui r4, 16
	ew_cfg r14, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r8, r26, r7
	add.s r9, r22, r7
	addli r7, r7, 512
	dsmadd r8, r9, r2, 0
	bneq r7, r4, .LBB0_32
# %bb.33:                               # %.thread196
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	unlock r28
	addli r8, zero, 4095
	lui r4, 260096
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	xsignal r3, 0
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r2,  -84(r30)
	mod.s r7, r2, r28
	addli r2, r2, 1
	storeli.w r2, -84(r30)
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r28
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r3,  -604(r30)                 # 4-byte Folded Reload
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	ew_cfg zero, zero, zero, 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	slli r2, r7, 16
	add.s r3, r2, r3
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r8, zero, 2
	ew_cfg r11, zero, zero, 3
	ew_cfg r11, r11, zero, 19
	storeli.w r3, -444(r30)                 # 4-byte Folded Spill
	hp_ssmul r3, r26, r26, 0
	addli r3, zero, 2
	ew_cfg zero, zero, zero, 19
	unlock r28
	xsignal r2, 0
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	loadli.w r2,  -72(r30)
	mod.s r7, r2, r28
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	loadli.w r2,  -608(r30)                 # 4-byte Folded Reload
	slli r7, r7, 16
	add.s r28, r7, r2
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r11, zero, zero, 3
	ew_cfg r11, r11, r11, 19
	dsmul r28, r26, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r2,  -60(r30)
	mod.s r7, r2, r3
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	loadli.w r2,  -612(r30)                 # 4-byte Folded Reload
	slli r7, r7, 16
	add.s r10, r7, r2
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 30
	xwait r2, 0
	lock zero, r3
	addli r2, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r11, zero, zero, 3
	ew_cfg r11, r11, r11, 19
	dsmul r10, r28, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
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
	j .LBB0_37
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r3
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r2,  -84(r30)
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	loadli.w r7,  -72(r30)
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r10,  -60(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r4,  -604(r30)                 # 4-byte Folded Reload
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	loadli.w r11,  -48(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	mod.s r8, r2, r28
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	mod.s r9, r7, r28
	addli r7, r7, 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	addli r2, r2, 1
	storeli.w r11, -556(r30)                # 4-byte Folded Spill
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	storeli.w r7, -72(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	storeli.w r2, -84(r30)
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	mod.s r2, r10, r28
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	slli r7, r8, 16
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	slli r8, r9, 16
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r4, r7, r4
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	addli r7, r10, 1
	slli r2, r2, 16
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	storeli.w r4, -444(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -608(r30)                 # 4-byte Folded Reload
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	storeli.w r7, -60(r30)
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	addli r7, r11, 1
	storeli.w r7, -48(r30)
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	add.s r28, r8, r4
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r4,  -612(r30)                 # 4-byte Folded Reload
	add.s r10, r2, r4
	.loc	1 170 7                         # parallel-rne.mlir:170:7
	addli r2, zero, 3
	bneq r3, r2, .LBB0_37
# %bb.36:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	addli r2, zero, 21
	xwait r2, 0
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r2, zero, 27
	xwait r2, 0
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	addli r2, zero, 29
	xwait r2, 0
.LBB0_37:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	addli r2, zero, 255
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	xfence
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	mfence { lm, sm, gm }
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	csr_set csr5, r2
	sub.s r2, r22, r28
	storeli.w r2, -532(r30)                 # 4-byte Folded Spill
	sub.s r2, r22, r26
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
	sub.s r2, r22, r10
	storeli.w r2, -540(r30)                 # 4-byte Folded Spill
	addli r2, zero, 15
	zext_int2long r[2:3], r2
	store.d r[2:3], -512(r30)               # 8-byte Folded Spill
	addli r2, zero, 127
	sync_core
	storeli.w r26, -456(r30)                # 4-byte Folded Spill
	zext_int2long r[14:15], r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	bneq r2, zero, .LBB0_64
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_40
.LBB0_39:                               # %middle.block709
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -464(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_63
.LBB0_40:                               # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r2
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_42
	j .LBB0_55
.LBB0_41:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.ul r3, r[18:19], r[14:15]
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	add.s r2, r22, r2
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r7, 0(r2)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r3, zero, .LBB0_39
.LBB0_42:                               # %scalar.ph701
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[2:3], r[18:19], r[16:17]
	lui r7, 523264
	lui r11, 523264
	slli r2, r2, 2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.s r3, r26, r2
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r4, r10, r2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r3, 0(r3)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r20, 0(r4)
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	and r8, r3, r27
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r8, r23, .LBB0_44
# %bb.43:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_44:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r9, r3, r27
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r9, zero, .LBB0_52
# %bb.45:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	lui r20, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r8, zero, .LBB0_53
.LBB0_46:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	beq r9, r23, .LBB0_48
.LBB0_47:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_48:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r3, r23, r8
	lui r8, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r3, zero, .LBB0_50
# %bb.49:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
.LBB0_50:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r3, r23, r9
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r3, zero, .LBB0_41
# %bb.51:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_41
.LBB0_52:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	lui r20, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r8, zero, .LBB0_46
.LBB0_53:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r9, r23, .LBB0_47
	j .LBB0_48
.LBB0_54:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	add.s r2, r22, r2
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r3, r[18:19], r[5:6]
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r9, 12(r2)
	stores.w r8, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r3, zero, .LBB0_39
.LBB0_55:                               # %vector.body703
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[7:8], r[18:19], r[16:17]
	slli r2, r7, 2
	add.s r11, r28, r2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.s r20, r26, r2
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	loads.w r7, 0(r11)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r8, 0(r20)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r7, r7, r27
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	and r8, r8, r27
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	seteq r9, r7, r23
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	seteq r12, r7, zero
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	seteq r21, r8, zero
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r24, r8, r23
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	max.u r7, r7, r8
	setlt.u r7, r23, r7
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r8, r9, r21
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r9, r12, r24
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r21, r10, r2
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	or r8, r8, r9
	lui r9, 523264
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	or r8, r7, r8
	lui r7, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r8, zero, .LBB0_57
# %bb.56:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r21)
.LBB0_57:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r8, 4(r11)
	loads.w r12, 4(r20)
	and r8, r8, r27
	and r12, r12, r27
	seteq r13, r8, r23
	seteq r4, r8, zero
	seteq r26, r12, r23
	seteq r24, r12, zero
	max.u r8, r8, r12
	setlt.u r8, r23, r8
	and r12, r13, r24
	and r4, r4, r26
	lui r24, 523264
	or r4, r12, r4
	or r4, r8, r4
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_59
# %bb.58:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r21)
.LBB0_59:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r4, 8(r11)
	loads.w r8, 8(r20)
	and r4, r4, r27
	and r8, r8, r27
	seteq r12, r4, r23
	seteq r3, r4, zero
	seteq r26, r8, r23
	seteq r13, r8, zero
	max.u r4, r4, r8
	setlt.u r4, r23, r4
	and r8, r12, r13
	and r3, r3, r26
	or r3, r8, r3
	lui r8, 523264
	or r3, r4, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r3, zero, .LBB0_61
# %bb.60:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r21)
.LBB0_61:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r3, 12(r11)
	loads.w r4, 12(r20)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r11, r3, r23
	seteq r20, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r11, r12
	and r11, r20, r13
	or r4, r4, r11
	or r3, r3, r4
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r3, zero, .LBB0_54
# %bb.62:                               # %vector.body703
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r21)
	j .LBB0_54
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { sm }
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	zext_int2long r[3:4], r3
	.loc	1 213 7 is_stmt 1               # parallel-rne.mlir:213:7
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	addli r3, zero, 1
	bneq r2, r3, .LBB0_91
# %bb.65:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	.loc	1 213 7                         # parallel-rne.mlir:213:7
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_67
.LBB0_66:                               # %middle.block694
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 220 9 is_stmt 1               # parallel-rne.mlir:220:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	load.d r[7:8], -472(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_90
.LBB0_67:                               # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	.loc	1 221 11 is_stmt 1              # parallel-rne.mlir:221:11
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r2
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_69
	j .LBB0_82
.LBB0_68:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.ul r3, r[18:19], r[14:15]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r2, r22, r2
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r7, 0(r2)
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	beq r3, zero, .LBB0_66
.LBB0_69:                               # %scalar.ph686
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	add.ul r[2:3], r[18:19], r[16:17]
	lui r7, 523264
	lui r11, 523264
	slli r2, r2, 2
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.s r3, r26, r2
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.s r4, r10, r2
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	loads.w r3, 0(r3)
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loads.w r20, 0(r4)
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	and r8, r3, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r8, r23, .LBB0_71
# %bb.70:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_71:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r9, r3, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r9, zero, .LBB0_79
# %bb.72:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	lui r20, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_80
.LBB0_73:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	beq r9, r23, .LBB0_75
.LBB0_74:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_75:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r3, r23, r8
	lui r8, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_77
# %bb.76:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
.LBB0_77:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r3, r23, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_68
# %bb.78:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_68
.LBB0_79:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	lui r20, 523264
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r8, zero, .LBB0_73
.LBB0_80:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r9, r23, .LBB0_74
	j .LBB0_75
.LBB0_81:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 221 11 is_stmt 1              # parallel-rne.mlir:221:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r2, r22, r2
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	seteq.d r3, r[18:19], r[5:6]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r9, 12(r2)
	stores.w r8, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 221 11                        # parallel-rne.mlir:221:11
	bneq r3, zero, .LBB0_66
.LBB0_82:                               # %vector.body688
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	add.ul r[2:3], r[18:19], r[16:17]
	slli r2, r2, 2
	add.s r11, r28, r2
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.s r20, r26, r2
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	loads.w r3, 0(r11)
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	loads.w r4, 0(r20)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r3, r3, r27
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	and r4, r4, r27
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	seteq r7, r3, r23
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	seteq r21, r3, zero
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	seteq r8, r4, zero
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	seteq r9, r4, r23
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r4, r7, r8
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r7, r21, r9
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.s r21, r10, r2
	lui r9, 523264
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	or r3, r3, r4
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_84
# %bb.83:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r21)
.LBB0_84:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r3, 4(r11)
	loads.w r4, 4(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r12, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r24
	and r8, r12, r26
	lui r24, 523264
	or r4, r4, r8
	or r3, r3, r4
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_86
# %bb.85:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r21)
.LBB0_86:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r3, 8(r11)
	loads.w r4, 8(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r26, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r12
	and r8, r26, r13
	or r4, r4, r8
	lui r8, 523264
	or r3, r3, r4
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_88
# %bb.87:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r21)
.LBB0_88:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r3, 12(r11)
	loads.w r4, 12(r20)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r11, r3, r23
	seteq r20, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r11, r12
	and r11, r20, r13
	or r4, r4, r11
	or r3, r3, r4
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_81
# %bb.89:                               # %vector.body688
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r21)
	j .LBB0_81
.LBB0_90:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 213 7 is_stmt 1               # parallel-rne.mlir:213:7
	mfence { sm }
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[2:3], r2
	.loc	1 248 7 is_stmt 1               # parallel-rne.mlir:248:7
	store.d r[2:3], -472(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_118
# %bb.92:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_94
.LBB0_93:                               # %middle.block679
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[7:8], -480(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_117
.LBB0_94:                               # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	store.d r[3:4], -480(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r2
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_96
	j .LBB0_109
.LBB0_95:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	setlt.ul r3, r[18:19], r[14:15]
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	add.s r2, r22, r2
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r7, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r3, zero, .LBB0_93
.LBB0_96:                               # %scalar.ph671
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[2:3], r[18:19], r[16:17]
	lui r7, 523264
	lui r11, 523264
	slli r2, r2, 2
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.s r3, r26, r2
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.s r4, r10, r2
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	loads.w r3, 0(r3)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	loads.w r20, 0(r4)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r8, r3, r27
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r8, r23, .LBB0_98
# %bb.97:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_98:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r9, r3, r27
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r9, zero, .LBB0_106
# %bb.99:                               # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	lui r20, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_107
.LBB0_100:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	beq r9, r23, .LBB0_102
.LBB0_101:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_102:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	setlt.u r3, r23, r8
	lui r8, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_104
# %bb.103:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
.LBB0_104:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	setlt.u r3, r23, r9
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_95
# %bb.105:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_95
.LBB0_106:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	lui r20, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r8, zero, .LBB0_100
.LBB0_107:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_96 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r9, r23, .LBB0_101
	j .LBB0_102
.LBB0_108:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	add.s r2, r22, r2
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r3, r[18:19], r[5:6]
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r9, 12(r2)
	stores.w r8, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r3, zero, .LBB0_93
.LBB0_109:                              # %vector.body673
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[2:3], r[18:19], r[16:17]
	slli r2, r2, 2
	add.s r11, r28, r2
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.s r20, r26, r2
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	loads.w r3, 0(r11)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	loads.w r4, 0(r20)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r3, r3, r27
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r4, r4, r27
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	seteq r7, r3, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	seteq r21, r3, zero
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	seteq r8, r4, zero
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	seteq r9, r4, r23
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r4, r7, r8
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r7, r21, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.s r21, r10, r2
	lui r9, 523264
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	or r3, r3, r4
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_111
# %bb.110:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r21)
.LBB0_111:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r3, 4(r11)
	loads.w r4, 4(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r12, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r24
	and r8, r12, r26
	lui r24, 523264
	or r4, r4, r8
	or r3, r3, r4
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_113
# %bb.112:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r21)
.LBB0_113:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r3, 8(r11)
	loads.w r4, 8(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r26, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r12
	and r8, r26, r13
	or r4, r4, r8
	lui r8, 523264
	or r3, r3, r4
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_115
# %bb.114:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r21)
.LBB0_115:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	loads.w r3, 12(r11)
	loads.w r4, 12(r20)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r11, r3, r23
	seteq r20, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r11, r12
	and r11, r20, r13
	or r4, r4, r11
	or r3, r3, r4
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r3, zero, .LBB0_108
# %bb.116:                              # %vector.body673
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r21)
	j .LBB0_108
.LBB0_117:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7 is_stmt 1               # parallel-rne.mlir:248:7
	mfence { sm }
.LBB0_118:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[2:3], r2
	.loc	1 283 7 is_stmt 1               # parallel-rne.mlir:283:7
	store.d r[2:3], -480(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_145
# %bb.119:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_121
.LBB0_120:                              # %middle.block664
                                        #   in Loop: Header=BB0_121 Depth=2
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[7:8], -488(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_144
.LBB0_121:                              # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_123 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[18:19], zero
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	store.d r[3:4], -488(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r2
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_123
	j .LBB0_136
.LBB0_122:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	setlt.ul r3, r[18:19], r[14:15]
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	add.s r2, r22, r2
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r7, 0(r2)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r3, zero, .LBB0_120
.LBB0_123:                              # %scalar.ph656
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[2:3], r[18:19], r[16:17]
	lui r7, 523264
	lui r11, 523264
	slli r2, r2, 2
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.s r3, r26, r2
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.s r4, r10, r2
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	loads.w r3, 0(r3)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	loads.w r20, 0(r4)
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	and r8, r3, r27
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r8, r23, .LBB0_125
# %bb.124:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_125:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r9, r3, r27
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r9, zero, .LBB0_133
# %bb.126:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	lui r20, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r8, zero, .LBB0_134
.LBB0_127:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	beq r9, r23, .LBB0_129
.LBB0_128:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_129:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	setlt.u r3, r23, r8
	lui r8, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r3, zero, .LBB0_131
# %bb.130:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
.LBB0_131:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	setlt.u r3, r23, r9
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r3, zero, .LBB0_122
# %bb.132:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_122
.LBB0_133:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	lui r20, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	beq r8, zero, .LBB0_127
.LBB0_134:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r9, r23, .LBB0_128
	j .LBB0_129
.LBB0_135:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	add.s r2, r22, r2
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	seteq.d r3, r[18:19], r[5:6]
	.loc	1 313 13                        # parallel-rne.mlir:313:13
	stores.w r9, 12(r2)
	stores.w r8, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	bneq r3, zero, .LBB0_120
.LBB0_136:                              # %vector.body658
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[2:3], r[18:19], r[16:17]
	slli r2, r2, 2
	add.s r11, r28, r2
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.s r20, r26, r2
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	loads.w r3, 0(r11)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	loads.w r4, 0(r20)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	and r3, r3, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	and r4, r4, r27
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	seteq r7, r3, r23
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	seteq r21, r3, zero
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	seteq r8, r4, zero
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	seteq r9, r4, r23
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r4, r7, r8
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r7, r21, r9
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.s r21, r10, r2
	lui r9, 523264
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	or r3, r3, r4
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r3, zero, .LBB0_138
# %bb.137:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r21)
.LBB0_138:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	loads.w r3, 4(r11)
	loads.w r4, 4(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r12, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r24
	and r8, r12, r26
	lui r24, 523264
	or r4, r4, r8
	or r3, r3, r4
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r3, zero, .LBB0_140
# %bb.139:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r21)
.LBB0_140:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	loads.w r3, 8(r11)
	loads.w r4, 8(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r26, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r12
	and r8, r26, r13
	or r4, r4, r8
	lui r8, 523264
	or r3, r3, r4
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r3, zero, .LBB0_142
# %bb.141:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r21)
.LBB0_142:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	loads.w r3, 12(r11)
	loads.w r4, 12(r20)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r11, r3, r23
	seteq r20, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r11, r12
	and r11, r20, r13
	or r4, r4, r11
	or r3, r3, r4
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	bneq r3, zero, .LBB0_135
# %bb.143:                              # %vector.body658
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r21)
	j .LBB0_135
.LBB0_144:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 283 7 is_stmt 1               # parallel-rne.mlir:283:7
	mfence { sm }
.LBB0_145:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	zext_int2long r[2:3], r2
	.loc	1 318 7 is_stmt 1               # parallel-rne.mlir:318:7
	store.d r[2:3], -488(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_174
# %bb.146:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 318 7                         # parallel-rne.mlir:318:7
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_148
.LBB0_147:                              # %middle.block649
                                        #   in Loop: Header=BB0_148 Depth=2
	.loc	1 325 9 is_stmt 1               # parallel-rne.mlir:325:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[7:8], -496(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_173
.LBB0_148:                              # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_151 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	store.d r[3:4], -496(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r2
	loadli.w r2,  -504(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_163
# %bb.149:                              # %scalar.ph641.preheader
                                        #   in Loop: Header=BB0_148 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_151
.LBB0_150:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 348 13 is_stmt 1              # parallel-rne.mlir:348:13
	add.s r2, r22, r2
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r7, 0(r2)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	beq r3, zero, .LBB0_147
.LBB0_151:                              # %scalar.ph641
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_148 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[2:3], r[11:12], r[18:19]
	lui r7, 523264
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	add.s r3, r26, r2
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.s r4, r10, r2
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	loads.w r3, 0(r3)
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	loads.w r20, 0(r4)
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	and r8, r3, r27
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r8, r23, .LBB0_153
# %bb.152:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r20, 0
.LBB0_153:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r9, r3, r27
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r9, zero, .LBB0_161
# %bb.154:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	lui r20, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_162
.LBB0_155:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	beq r9, r23, .LBB0_157
.LBB0_156:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
.LBB0_157:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r3, r23, r8
	lui r8, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_159
# %bb.158:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
.LBB0_159:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r3, r23, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_150
# %bb.160:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_150
.LBB0_161:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	lui r20, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r8, zero, .LBB0_155
.LBB0_162:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r9, r23, .LBB0_156
	j .LBB0_157
.LBB0_163:                              # %vector.body643.preheader
                                        #   in Loop: Header=BB0_148 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_165
.LBB0_164:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 326 11 is_stmt 1              # parallel-rne.mlir:326:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r2, r22, r2
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	seteq.d r3, r[12:13], r[5:6]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r9, 12(r2)
	stores.w r8, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 326 11                        # parallel-rne.mlir:326:11
	bneq r3, zero, .LBB0_147
.LBB0_165:                              # %vector.body643
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_148 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	add.ul r[2:3], r[12:13], r[18:19]
	slli r2, r2, 2
	add.s r11, r28, r2
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	add.s r20, r26, r2
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	loads.w r3, 0(r11)
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	loads.w r4, 0(r20)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	and r3, r3, r27
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	and r4, r4, r27
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	seteq r7, r3, r23
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	seteq r21, r3, zero
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	seteq r8, r4, zero
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	seteq r9, r4, r23
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	and r4, r7, r8
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r7, r21, r9
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.s r21, r10, r2
	lui r9, 523264
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	or r3, r3, r4
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_167
# %bb.166:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r21)
.LBB0_167:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r3, 4(r11)
	loads.w r4, 4(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r16, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r24
	and r8, r16, r26
	lui r24, 523264
	or r4, r4, r8
	or r3, r3, r4
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_169
# %bb.168:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r21)
.LBB0_169:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r3, 8(r11)
	loads.w r4, 8(r20)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r26, r3, zero
	seteq r16, r4, zero
	seteq r17, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r16
	and r8, r26, r17
	or r4, r4, r8
	lui r8, 523264
	or r3, r3, r4
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_171
# %bb.170:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r21)
.LBB0_171:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	loads.w r3, 12(r11)
	loads.w r4, 12(r20)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r11, r3, r23
	seteq r20, r3, zero
	seteq r16, r4, zero
	seteq r17, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r11, r16
	and r11, r20, r17
	or r4, r4, r11
	or r3, r3, r4
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r3, zero, .LBB0_164
# %bb.172:                              # %vector.body643
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r21)
	j .LBB0_164
.LBB0_173:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 318 7 is_stmt 1               # parallel-rne.mlir:318:7
	mfence { sm }
.LBB0_174:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 95
	zext_int2long r[2:3], r2
	.loc	1 353 7 is_stmt 1               # parallel-rne.mlir:353:7
	store.d r[2:3], -496(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_203
# %bb.175:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_177
.LBB0_176:                              # %middle.block634
                                        #   in Loop: Header=BB0_177 Depth=2
	.loc	1 360 9 is_stmt 1               # parallel-rne.mlir:360:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[7:8], -504(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_202
.LBB0_177:                              # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_180 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 361 11 is_stmt 1              # parallel-rne.mlir:361:11
	store.d r[3:4], -504(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[3:4], r2
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_192
# %bb.178:                              # %scalar.ph626.preheader
                                        #   in Loop: Header=BB0_177 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_180
.LBB0_179:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 383 13 is_stmt 1              # parallel-rne.mlir:383:13
	add.s r2, r22, r2
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	stores.w r9, 0(r2)
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	beq r3, zero, .LBB0_176
.LBB0_180:                              # %scalar.ph626
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_177 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	add.ul r[2:3], r[7:8], r[19:20]
	lui r9, 523264
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	add.s r3, r26, r2
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.s r4, r10, r2
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	loads.w r3, 0(r3)
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	loads.w r16, 0(r4)
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r11, r3, r27
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r11, r23, .LBB0_182
# %bb.181:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r16, 0
.LBB0_182:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r12, zero, .LBB0_190
# %bb.183:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r16, 0
	lui r16, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r11, zero, .LBB0_191
.LBB0_184:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	beq r12, r23, .LBB0_186
.LBB0_185:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r13, 0
.LBB0_186:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r3, r23, r11
	lui r11, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r3, zero, .LBB0_188
# %bb.187:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_188:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r3, r23, r12
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r3, zero, .LBB0_179
# %bb.189:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_179
.LBB0_190:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	lui r16, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r11, zero, .LBB0_184
.LBB0_191:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r13, 0
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r12, r23, .LBB0_185
	j .LBB0_186
.LBB0_192:                              # %vector.body628.preheader
                                        #   in Loop: Header=BB0_177 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_194
.LBB0_193:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 361 11 is_stmt 1              # parallel-rne.mlir:361:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	add.s r2, r22, r2
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	stores.w r11, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 361 11                        # parallel-rne.mlir:361:11
	bneq r3, zero, .LBB0_176
.LBB0_194:                              # %vector.body628
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_177 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	add.ul r[2:3], r[8:9], r[19:20]
	slli r2, r2, 2
	add.s r12, r28, r2
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	add.s r13, r26, r2
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	loads.w r3, 0(r12)
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	loads.w r4, 0(r13)
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	and r3, r3, r27
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r4, r4, r27
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	seteq r7, r3, r23
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	seteq r21, r3, zero
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	seteq r11, r4, zero
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	seteq r16, r4, r23
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	and r4, r7, r11
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	and r7, r21, r16
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	add.s r21, r10, r2
	lui r11, 523264
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	or r3, r3, r4
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r3, zero, .LBB0_196
# %bb.195:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r21)
.LBB0_196:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	loads.w r3, 4(r12)
	loads.w r4, 4(r13)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r17, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r24
	and r16, r17, r26
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r3, zero, .LBB0_198
# %bb.197:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r21)
.LBB0_198:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	loads.w r3, 8(r12)
	loads.w r4, 8(r13)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r17, r4, zero
	seteq r18, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r17
	and r16, r26, r18
	or r4, r4, r16
	lui r16, 523264
	or r3, r3, r4
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r3, zero, .LBB0_200
# %bb.199:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r21)
.LBB0_200:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	loads.w r3, 12(r12)
	loads.w r4, 12(r13)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r12, r3, r23
	seteq r18, r3, zero
	seteq r13, r4, zero
	seteq r17, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r12, r13
	and r12, r18, r17
	or r4, r4, r12
	or r3, r3, r4
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r3, zero, .LBB0_193
# %bb.201:                              # %vector.body628
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r21)
	j .LBB0_193
.LBB0_202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 353 7 is_stmt 1               # parallel-rne.mlir:353:7
	mfence { sm }
.LBB0_203:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	zext_int2long r[2:3], r2
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	store.d r[2:3], -504(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 6
	bneq r2, r3, .LBB0_232
# %bb.204:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_206
.LBB0_205:                              # %middle.block619
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 395 9 is_stmt 1               # parallel-rne.mlir:395:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_231
.LBB0_206:                              # %.preheader124
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_223 Depth 3
                                        #       Child Loop BB0_209 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 396 11 is_stmt 1              # parallel-rne.mlir:396:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_221
# %bb.207:                              # %scalar.ph611.preheader
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_209
.LBB0_208:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 418 13 is_stmt 1              # parallel-rne.mlir:418:13
	add.s r2, r22, r2
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 418 13                        # parallel-rne.mlir:418:13
	stores.w r9, 0(r2)
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	beq r3, zero, .LBB0_205
.LBB0_209:                              # %scalar.ph611
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	add.s r3, r26, r2
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	add.s r4, r10, r2
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	loads.w r3, 0(r3)
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	loads.w r18, 0(r4)
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r11, r3, r27
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	beq r11, r23, .LBB0_211
# %bb.210:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_211:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r16, r3, r27
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	beq r16, zero, .LBB0_219
# %bb.212:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r11, zero, .LBB0_220
.LBB0_213:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	beq r16, r23, .LBB0_215
.LBB0_214:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_215:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r3, r23, r11
	lui r11, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r3, zero, .LBB0_217
# %bb.216:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r18, 0
.LBB0_217:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r3, r23, r16
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r3, zero, .LBB0_208
# %bb.218:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_208
.LBB0_219:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	lui r18, 523264
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	beq r11, zero, .LBB0_213
.LBB0_220:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r16, r23, .LBB0_214
	j .LBB0_215
.LBB0_221:                              # %vector.body613.preheader
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_223
.LBB0_222:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 396 11 is_stmt 1              # parallel-rne.mlir:396:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 418 13                        # parallel-rne.mlir:418:13
	add.s r2, r22, r2
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 418 13                        # parallel-rne.mlir:418:13
	stores.w r11, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 396 11                        # parallel-rne.mlir:396:11
	bneq r3, zero, .LBB0_205
.LBB0_223:                              # %vector.body613
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	add.s r17, r28, r2
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	add.s r18, r26, r2
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	loads.w r3, 0(r17)
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	loads.w r4, 0(r18)
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	and r3, r3, r27
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r4, r4, r27
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	seteq r7, r3, r23
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	seteq r19, r3, zero
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	seteq r11, r4, zero
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	seteq r16, r4, r23
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	and r4, r7, r11
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r7, r19, r16
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	add.s r19, r10, r2
	lui r11, 523264
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	or r3, r3, r4
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r3, zero, .LBB0_225
# %bb.224:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_225:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r20, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r24
	and r16, r20, r26
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r3, zero, .LBB0_227
# %bb.226:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_227:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	lui r16, 523264
	or r3, r3, r4
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r3, zero, .LBB0_229
# %bb.228:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r19)
.LBB0_229:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	loads.w r3, 12(r17)
	loads.w r4, 12(r18)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r4, zero
	seteq r20, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r17, r18
	and r17, r21, r20
	or r4, r4, r17
	or r3, r3, r4
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r3, zero, .LBB0_222
# %bb.230:                              # %vector.body613
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_222
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	mfence { sm }
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 423 7                         # parallel-rne.mlir:423:7
	core_id r2
	addli r3, zero, 7
	bneq r2, r3, .LBB0_261
# %bb.233:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -532(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -536(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -540(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 423 7                         # parallel-rne.mlir:423:7
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_235
.LBB0_234:                              # %middle.block604
                                        #   in Loop: Header=BB0_235 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -520(r30)                # 8-byte Folded Reload
	.loc	1 430 9 is_stmt 1               # parallel-rne.mlir:430:9
	setlt.ul r2, r[3:4], r[14:15]
	addli.d r[3:4], r[3:4], 1
	beq r2, zero, .LBB0_260
.LBB0_235:                              # %.preheader123
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_252 Depth 3
                                        #       Child Loop BB0_238 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	.loc	1 431 11 is_stmt 1              # parallel-rne.mlir:431:11
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_250
# %bb.236:                              # %scalar.ph596.preheader
                                        #   in Loop: Header=BB0_235 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_238
.LBB0_237:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 453 13 is_stmt 1              # parallel-rne.mlir:453:13
	add.s r2, r22, r2
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	stores.w r9, 0(r2)
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	beq r3, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph596
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	add.s r3, r26, r2
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	add.s r4, r10, r2
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	loads.w r3, 0(r3)
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	loads.w r18, 0(r4)
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r11, r3, r27
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r11, r23, .LBB0_240
# %bb.239:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_240:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	add.s r3, r28, r2
	loads.w r3, 0(r3)
	and r16, r3, r27
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r16, zero, .LBB0_248
# %bb.241:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r11, zero, .LBB0_249
.LBB0_242:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	beq r16, r23, .LBB0_244
.LBB0_243:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_244:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	setlt.u r3, r23, r11
	lui r11, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r3, zero, .LBB0_246
# %bb.245:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r18, 0
.LBB0_246:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	setlt.u r3, r23, r16
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r3, zero, .LBB0_237
# %bb.247:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_237
.LBB0_248:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	lui r18, 523264
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	beq r11, zero, .LBB0_242
.LBB0_249:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_238 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r16, r23, .LBB0_243
	j .LBB0_244
.LBB0_250:                              # %vector.body598.preheader
                                        #   in Loop: Header=BB0_235 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_252
.LBB0_251:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 431 11 is_stmt 1              # parallel-rne.mlir:431:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	add.s r2, r22, r2
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 453 13                        # parallel-rne.mlir:453:13
	stores.w r11, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 431 11                        # parallel-rne.mlir:431:11
	bneq r3, zero, .LBB0_234
.LBB0_252:                              # %vector.body598
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	add.s r17, r28, r2
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	add.s r18, r26, r2
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	loads.w r3, 0(r17)
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	loads.w r4, 0(r18)
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	and r3, r3, r27
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r4, r4, r27
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	seteq r7, r3, r23
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	seteq r19, r3, zero
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	seteq r11, r4, zero
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	seteq r16, r4, r23
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	and r4, r7, r11
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r7, r19, r16
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	add.s r19, r10, r2
	lui r11, 523264
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	or r3, r3, r4
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r3, zero, .LBB0_254
# %bb.253:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_254:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r20, r3, zero
	seteq r24, r4, zero
	seteq r26, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r24
	and r16, r20, r26
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r3, zero, .LBB0_256
# %bb.255:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_256:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	lui r16, 523264
	or r3, r3, r4
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r3, zero, .LBB0_258
# %bb.257:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r19)
.LBB0_258:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	loads.w r3, 12(r17)
	loads.w r4, 12(r18)
	loadli.w r26,  -456(r30)                # 4-byte Folded Reload
	and r3, r3, r27
	and r4, r4, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r4, zero
	seteq r20, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r17, r18
	and r17, r21, r20
	or r4, r4, r17
	or r3, r3, r4
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	bneq r3, zero, .LBB0_251
# %bb.259:                              # %vector.body598
                                        #   in Loop: Header=BB0_252 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_251
.LBB0_260:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 423 7 is_stmt 1               # parallel-rne.mlir:423:7
	mfence { sm }
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r2, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r4
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	csr_set csr5, r2
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	addli r2, zero, 3
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	sync_core
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	bneq r4, r2, .LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	addli r7, zero, 2
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
	mod.s r3, r2, r7
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	loadli.w r2,  -620(r30)                 # 4-byte Folded Reload
	slli r3, r3, 16
	add.s r10, r3, r2
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r2, zero, 31
	xwait r2, 0
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r2, zero, 35
	xwait r2, 0
	j .LBB0_265
.LBB0_263:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	loadli.w r2,  -36(r30)
	addli r7, zero, 2
	loadli.w r8,  -620(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r7
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	addli r2, zero, 5
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	slli r3, r3, 16
	add.s r10, r3, r8
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	bneq r4, r2, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	lui r3, 260096
	addli r4, zero, 4095
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	lock zero, r7
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -636(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, r2, zero, 0
	addli r2, zero, 4
	addli r3, zero, 13
	ew_cfg zero, r4, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd r10, r26, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r3, 0
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	lock zero, r7
	ew_cfg zero, zero, zero, 1
	loadli.w r3,  -640(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, zero, zero, 0
	ew_cfg zero, r4, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	addli r2, zero, 31
	hp_ssmul r10, r10, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r2, 0
.LBB0_265:                              # %.critedge12
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	.loc	1 471 7 is_stmt 1               # parallel-rne.mlir:471:7
	xfence
	loadli.w r3,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r7
	slli r2, r2, 16
	add.s r28, r2, r3
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r28, r10
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	sync_core
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	beq r2, zero, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	addli r3, zero, 1
	beq r2, r3, .LBB0_273
	j .LBB0_279
.LBB0_267:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 474 7 is_stmt 1               # parallel-rne.mlir:474:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	j .LBB0_269
.LBB0_268:                              # %middle.block589
                                        #   in Loop: Header=BB0_269 Depth=2
	.loc	1 481 9                         # parallel-rne.mlir:481:9
	load.d r[3:4], -512(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_272
.LBB0_269:                              # %.preheader122
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_270 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 482 11 is_stmt 1              # parallel-rne.mlir:482:11
	beq r2, zero, .LBB0_271
.LBB0_270:                              # %scalar.ph582
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r3, r28, r3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	loads.w r4, 0(r4)
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	stores.w r4, 0(r3)
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	bneq r9, zero, .LBB0_270
	j .LBB0_268
.LBB0_271:                              # %vector.body584
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	slli r3, r3, 2
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.s r9, r10, r3
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r3, r28, r3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r26, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r26, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	beq r4, zero, .LBB0_271
	j .LBB0_268
.LBB0_272:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	mfence { sm }
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_279
.LBB0_273:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 16
	zext_int2long r[7:8], r3
	j .LBB0_275
.LBB0_274:                              # %middle.block579
                                        #   in Loop: Header=BB0_275 Depth=2
	.loc	1 497 9 is_stmt 1               # parallel-rne.mlir:497:9
	load.d r[3:4], -464(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_278
.LBB0_275:                              # %.preheader121
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_276 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 498 11 is_stmt 1              # parallel-rne.mlir:498:11
	beq r2, zero, .LBB0_277
.LBB0_276:                              # %scalar.ph572
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	add.s r3, r28, r3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	loads.w r4, 0(r4)
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	stores.w r4, 0(r3)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	bneq r9, zero, .LBB0_276
	j .LBB0_274
.LBB0_277:                              # %vector.body574
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	slli r3, r3, 2
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.s r9, r10, r3
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	add.s r3, r28, r3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 501 13                        # parallel-rne.mlir:501:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	beq r4, zero, .LBB0_277
	j .LBB0_274
.LBB0_278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	mfence { sm }
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_286
# %bb.280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	setlt.u r2, r2, r3
	j .LBB0_282
.LBB0_281:                              # %middle.block569
                                        #   in Loop: Header=BB0_282 Depth=2
	.loc	1 513 9 is_stmt 1               # parallel-rne.mlir:513:9
	load.d r[3:4], -472(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_285
.LBB0_282:                              # %.preheader120
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_284 Depth 3
                                        #       Child Loop BB0_283 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 514 11 is_stmt 1              # parallel-rne.mlir:514:11
	beq r2, zero, .LBB0_284
.LBB0_283:                              # %scalar.ph562
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	add.s r3, r28, r3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	loads.w r4, 0(r4)
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r4, 0(r3)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	bneq r9, zero, .LBB0_283
	j .LBB0_281
.LBB0_284:                              # %vector.body564
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	slli r3, r3, 2
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.s r9, r10, r3
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	add.s r3, r28, r3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	beq r4, zero, .LBB0_284
	j .LBB0_281
.LBB0_285:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 506 7                         # parallel-rne.mlir:506:7
	mfence { sm }
.LBB0_286:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_293
# %bb.287:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 48
	zext_int2long r[7:8], r3
	j .LBB0_289
.LBB0_288:                              # %middle.block559
                                        #   in Loop: Header=BB0_289 Depth=2
	.loc	1 529 9 is_stmt 1               # parallel-rne.mlir:529:9
	load.d r[3:4], -480(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_292
.LBB0_289:                              # %.preheader119
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_291 Depth 3
                                        #       Child Loop BB0_290 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 530 11 is_stmt 1              # parallel-rne.mlir:530:11
	beq r2, zero, .LBB0_291
.LBB0_290:                              # %scalar.ph552
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	add.s r3, r28, r3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	loads.w r4, 0(r4)
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r4, 0(r3)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	bneq r9, zero, .LBB0_290
	j .LBB0_288
.LBB0_291:                              # %vector.body554
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	slli r3, r3, 2
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.s r9, r10, r3
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	add.s r3, r28, r3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	beq r4, zero, .LBB0_291
	j .LBB0_288
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	mfence { sm }
.LBB0_293:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_300
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 64
	zext_int2long r[7:8], r3
	j .LBB0_296
.LBB0_295:                              # %middle.block549
                                        #   in Loop: Header=BB0_296 Depth=2
	.loc	1 545 9 is_stmt 1               # parallel-rne.mlir:545:9
	load.d r[3:4], -488(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_299
.LBB0_296:                              # %.preheader118
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_298 Depth 3
                                        #       Child Loop BB0_297 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 546 11 is_stmt 1              # parallel-rne.mlir:546:11
	beq r2, zero, .LBB0_298
.LBB0_297:                              # %scalar.ph542
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_296 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r28, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r4, 0(r4)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r4, 0(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	bneq r9, zero, .LBB0_297
	j .LBB0_295
.LBB0_298:                              # %vector.body544
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_296 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r3, r3, 2
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.s r9, r10, r3
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r28, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	beq r4, zero, .LBB0_298
	j .LBB0_295
.LBB0_299:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	mfence { sm }
.LBB0_300:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_307
# %bb.301:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 80
	zext_int2long r[7:8], r3
	j .LBB0_303
.LBB0_302:                              # %middle.block539
                                        #   in Loop: Header=BB0_303 Depth=2
	.loc	1 561 9 is_stmt 1               # parallel-rne.mlir:561:9
	load.d r[3:4], -496(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_306
.LBB0_303:                              # %.preheader117
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
                                        #       Child Loop BB0_304 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 562 11 is_stmt 1              # parallel-rne.mlir:562:11
	beq r2, zero, .LBB0_305
.LBB0_304:                              # %scalar.ph532
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	add.s r3, r28, r3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	loads.w r4, 0(r4)
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	stores.w r4, 0(r3)
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	bneq r9, zero, .LBB0_304
	j .LBB0_302
.LBB0_305:                              # %vector.body534
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	slli r3, r3, 2
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.s r9, r10, r3
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	add.s r3, r28, r3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 565 13                        # parallel-rne.mlir:565:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	beq r4, zero, .LBB0_305
	j .LBB0_302
.LBB0_306:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	mfence { sm }
.LBB0_307:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	core_id r2
	addli r3, zero, 6
	bneq r2, r3, .LBB0_314
# %bb.308:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 96
	zext_int2long r[7:8], r3
	j .LBB0_310
.LBB0_309:                              # %middle.block529
                                        #   in Loop: Header=BB0_310 Depth=2
	.loc	1 577 9 is_stmt 1               # parallel-rne.mlir:577:9
	load.d r[3:4], -504(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_313
.LBB0_310:                              # %.preheader116
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_312 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	beq r2, zero, .LBB0_312
.LBB0_311:                              # %scalar.ph522
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_310 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	add.s r3, r28, r3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	loads.w r4, 0(r4)
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	stores.w r4, 0(r3)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	bneq r9, zero, .LBB0_311
	j .LBB0_309
.LBB0_312:                              # %vector.body524
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_310 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	slli r3, r3, 2
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.s r9, r10, r3
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	add.s r3, r28, r3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	beq r4, zero, .LBB0_312
	j .LBB0_309
.LBB0_313:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 570 7                         # parallel-rne.mlir:570:7
	mfence { sm }
.LBB0_314:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	core_id r2
	addli r3, zero, 7
	bneq r2, r3, .LBB0_321
# %bb.315:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -520(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 112
	zext_int2long r[7:8], r3
	j .LBB0_317
.LBB0_316:                              # %middle.block519
                                        #   in Loop: Header=BB0_317 Depth=2
	.loc	1 593 9 is_stmt 1               # parallel-rne.mlir:593:9
	setlt.ul r3, r[7:8], r[14:15]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_320
.LBB0_317:                              # %.preheader115
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_319 Depth 3
                                        #       Child Loop BB0_318 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r3
	.loc	1 594 11 is_stmt 1              # parallel-rne.mlir:594:11
	beq r2, zero, .LBB0_319
.LBB0_318:                              # %scalar.ph512
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_317 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	setlt.ul r9, r[16:17], r[14:15]
	addli.d r[16:17], r[16:17], 1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r3, r3, 2
	add.s r4, r10, r3
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r3, r28, r3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r4, 0(r4)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r4, 0(r3)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	bneq r9, zero, .LBB0_318
	j .LBB0_316
.LBB0_319:                              # %vector.body514
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_317 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[3:4], r[16:17], r[11:12]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r3, r3, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	seteq.d r4, r[16:17], r[5:6]
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r9, r10, r3
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r3, r28, r3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r13, 12(r9)
	loads.w r18, 8(r9)
	loads.w r19, 4(r9)
	loads.w r20, 0(r9)
	loads.w r21, 28(r9)
	loads.w r24, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r13, 12(r3)
	stores.w r18, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r21, 28(r3)
	stores.w r24, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	beq r4, zero, .LBB0_319
	j .LBB0_316
.LBB0_320:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	mfence { sm }
.LBB0_321:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r2, zero, 255
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	addli r3, zero, 3
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	csr_set csr5, r2
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	core_id r2
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	sync_core
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	bneq r2, r3, .LBB0_323
# %bb.322:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 32
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r3, zero, 13
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	xsignal r2, 0
	addli r2, zero, 33
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	xsignal r2, 0
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	xwait r3, 0
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	xwait r2, 0
.LBB0_323:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	addli r2, zero, 255
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	xfence
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	mfence { lm, sm, gm }
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	sync_core
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	bneq r2, zero, .LBB0_345
# %bb.324:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -528(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_326
.LBB0_325:                              # %middle.block509
                                        #   in Loop: Header=BB0_326 Depth=2
	.loc	1 619 9 is_stmt 1               # parallel-rne.mlir:619:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_344
.LBB0_326:                              # %.preheader114
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_328 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[12:13], -528(r30)              # 8-byte Folded Reload
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	j .LBB0_328
.LBB0_327:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	.loc	1 620 11 is_stmt 1              # parallel-rne.mlir:620:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	add.s r3, r22, r16
	.loc	1 620 11                        # parallel-rne.mlir:620:11
	setneq.d r4, r[12:13], r[5:6]
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	stores.w r9, 12(r3)
	stores.w r8, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r24, 28(r3)
	stores.w r19, 24(r3)
	stores.w r18, 20(r3)
	stores.w r10, 16(r3)
	.loc	1 620 11                        # parallel-rne.mlir:620:11
	beq r4, zero, .LBB0_325
.LBB0_328:                              # %vector.body504
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_326 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 621 19                        # parallel-rne.mlir:621:19
	add.ul r[2:3], r[12:13], r[20:21]
	lui r4, 524288
	slli r16, r2, 2
	add.s r3, r28, r16
	loads.w r2, 0(r3)
	loads.w r9, 12(r3)
	loads.w r8, 8(r3)
	loads.w r11, 4(r3)
	loads.w r24, 28(r3)
	loads.w r19, 24(r3)
	loads.w r18, 20(r3)
	loads.w r10, 16(r3)
	.loc	1 624 19                        # parallel-rne.mlir:624:19
	and r3, r2, r27
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_330
# %bb.329:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_330:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_332
# %bb.331:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_332:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_334:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_336:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_338:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
.LBB0_340:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_342:                              # %vector.body504
                                        #   in Loop: Header=BB0_328 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r3, zero, .LBB0_327
# %bb.343:                              #   in Loop: Header=BB0_328 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
	j .LBB0_327
.LBB0_344:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	mfence { sm }
.LBB0_345:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r26
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_366
# %bb.346:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_348
.LBB0_347:                              # %middle.block499
                                        #   in Loop: Header=BB0_348 Depth=2
	.loc	1 640 9 is_stmt 1               # parallel-rne.mlir:640:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[12:13], r[2:3]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_387
.LBB0_348:                              # %.preheader113
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_350 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_350
.LBB0_349:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	.loc	1 641 11 is_stmt 1              # parallel-rne.mlir:641:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 649 13                        # parallel-rne.mlir:649:13
	add.s r3, r22, r7
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 649 13                        # parallel-rne.mlir:649:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	beq r4, zero, .LBB0_347
.LBB0_350:                              # %vector.body494
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_348 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	and r3, r2, r27
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_352:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_354:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_356:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_358:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_360:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_362:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_364:                              # %vector.body494
                                        #   in Loop: Header=BB0_350 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_349
# %bb.365:                              #   in Loop: Header=BB0_350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_349
.LBB0_366:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	addli r2, zero, 2
	bneq r26, r2, .LBB0_388
.LBB0_367:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_369
.LBB0_368:                              # %middle.block489
                                        #   in Loop: Header=BB0_369 Depth=2
	.loc	1 661 9 is_stmt 1               # parallel-rne.mlir:661:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[12:13], r[2:3]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_409
.LBB0_369:                              # %.preheader112
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_371 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_371
.LBB0_370:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 662 11 is_stmt 1              # parallel-rne.mlir:662:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 670 13                        # parallel-rne.mlir:670:13
	add.s r3, r22, r7
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 670 13                        # parallel-rne.mlir:670:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	beq r4, zero, .LBB0_368
.LBB0_371:                              # %vector.body484
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_369 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	and r3, r2, r27
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_373:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_375:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_377
# %bb.376:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_377:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_379:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_381:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_383:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_385:                              # %vector.body484
                                        #   in Loop: Header=BB0_371 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	beq r3, zero, .LBB0_370
# %bb.386:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_370
.LBB0_387:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 633 7 is_stmt 1               # parallel-rne.mlir:633:7
	mfence { sm }
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	addli r2, zero, 2
	beq r26, r2, .LBB0_367
.LBB0_388:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 675 7                         # parallel-rne.mlir:675:7
	addli r2, zero, 3
	bneq r26, r2, .LBB0_410
.LBB0_389:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 675 7                         # parallel-rne.mlir:675:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_391
.LBB0_390:                              # %middle.block479
                                        #   in Loop: Header=BB0_391 Depth=2
	.loc	1 682 9 is_stmt 1               # parallel-rne.mlir:682:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[12:13], r[2:3]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_431
.LBB0_391:                              # %.preheader111
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_393 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_393
.LBB0_392:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 683 11 is_stmt 1              # parallel-rne.mlir:683:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 691 13                        # parallel-rne.mlir:691:13
	add.s r3, r22, r7
	.loc	1 683 11                        # parallel-rne.mlir:683:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 691 13                        # parallel-rne.mlir:691:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 683 11                        # parallel-rne.mlir:683:11
	beq r4, zero, .LBB0_390
.LBB0_393:                              # %vector.body474
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_391 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	and r3, r2, r27
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_395
# %bb.394:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_395:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_397:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_399:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_401:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_403:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_405:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_407:                              # %vector.body474
                                        #   in Loop: Header=BB0_393 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r3, zero, .LBB0_392
# %bb.408:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_392
.LBB0_409:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	mfence { sm }
	.loc	1 675 7                         # parallel-rne.mlir:675:7
	addli r2, zero, 3
	beq r26, r2, .LBB0_389
.LBB0_410:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	addli r2, zero, 4
	bneq r26, r2, .LBB0_432
.LBB0_411:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_413
.LBB0_412:                              # %middle.block469
                                        #   in Loop: Header=BB0_413 Depth=2
	.loc	1 703 9 is_stmt 1               # parallel-rne.mlir:703:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[12:13], r[2:3]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_453
.LBB0_413:                              # %.preheader110
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_415 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_415
.LBB0_414:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	.loc	1 704 11 is_stmt 1              # parallel-rne.mlir:704:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	add.s r3, r22, r7
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	beq r4, zero, .LBB0_412
.LBB0_415:                              # %vector.body464
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	and r3, r2, r27
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_417
# %bb.416:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_417:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_419:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_421:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_423
# %bb.422:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_423:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_425:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_427:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_429:                              # %vector.body464
                                        #   in Loop: Header=BB0_415 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r3, zero, .LBB0_414
# %bb.430:                              #   in Loop: Header=BB0_415 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_414
.LBB0_431:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 675 7 is_stmt 1               # parallel-rne.mlir:675:7
	mfence { sm }
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	addli r2, zero, 4
	beq r26, r2, .LBB0_411
.LBB0_432:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r2, zero, 5
	bneq r26, r2, .LBB0_454
.LBB0_433:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_435
.LBB0_434:                              # %middle.block459
                                        #   in Loop: Header=BB0_435 Depth=2
	.loc	1 724 9 is_stmt 1               # parallel-rne.mlir:724:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[12:13], r[2:3]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_475
.LBB0_435:                              # %.preheader109
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_437 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_437
.LBB0_436:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 725 11 is_stmt 1              # parallel-rne.mlir:725:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 733 13                        # parallel-rne.mlir:733:13
	add.s r3, r22, r7
	.loc	1 725 11                        # parallel-rne.mlir:725:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 733 13                        # parallel-rne.mlir:733:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 725 11                        # parallel-rne.mlir:725:11
	beq r4, zero, .LBB0_434
.LBB0_437:                              # %vector.body454
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	and r3, r2, r27
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_439:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_441
# %bb.440:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_441:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_443:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_445:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_447:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_449:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_451:                              # %vector.body454
                                        #   in Loop: Header=BB0_437 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r3, zero, .LBB0_436
# %bb.452:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_436
.LBB0_453:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 696 7 is_stmt 1               # parallel-rne.mlir:696:7
	mfence { sm }
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r2, zero, 5
	beq r26, r2, .LBB0_433
.LBB0_454:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	addli r2, zero, 6
	bneq r26, r2, .LBB0_476
.LBB0_455:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_457
.LBB0_456:                              # %middle.block449
                                        #   in Loop: Header=BB0_457 Depth=2
	.loc	1 745 9 is_stmt 1               # parallel-rne.mlir:745:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[12:13], r[2:3]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_477
.LBB0_457:                              # %.preheader108
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_459 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_459
.LBB0_458:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	.loc	1 746 11 is_stmt 1              # parallel-rne.mlir:746:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	add.s r3, r22, r7
	.loc	1 746 11                        # parallel-rne.mlir:746:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 746 11                        # parallel-rne.mlir:746:11
	beq r4, zero, .LBB0_456
.LBB0_459:                              # %vector.body444
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_457 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	and r3, r2, r27
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_461:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_463:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_465
# %bb.464:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_465:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_467
# %bb.466:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_467:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_469
# %bb.468:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_469:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_471:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_473:                              # %vector.body444
                                        #   in Loop: Header=BB0_459 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r3, zero, .LBB0_458
# %bb.474:                              #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_458
.LBB0_475:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 717 7 is_stmt 1               # parallel-rne.mlir:717:7
	mfence { sm }
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	addli r2, zero, 6
	beq r26, r2, .LBB0_455
.LBB0_476:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 7
	beq r26, r2, .LBB0_478
	j .LBB0_499
.LBB0_477:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	mfence { sm }
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 7
	bneq r26, r2, .LBB0_499
.LBB0_478:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[12:13], r2
	j .LBB0_480
.LBB0_479:                              # %middle.block439
                                        #   in Loop: Header=BB0_480 Depth=2
	.loc	1 766 9 is_stmt 1               # parallel-rne.mlir:766:9
	setlt.ul r2, r[12:13], r[14:15]
	addli.d r[12:13], r[12:13], 1
	beq r2, zero, .LBB0_498
.LBB0_480:                              # %.preheader107
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_482 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[16:17], r[12:13], r2
	j .LBB0_482
.LBB0_481:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	.loc	1 767 11 is_stmt 1              # parallel-rne.mlir:767:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 775 13                        # parallel-rne.mlir:775:13
	add.s r3, r22, r7
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	setneq.d r4, r[20:21], r[5:6]
	.loc	1 775 13                        # parallel-rne.mlir:775:13
	stores.w r24, 12(r3)
	stores.w r19, 8(r3)
	stores.w r11, 4(r3)
	stores.w r2, 0(r3)
	stores.w r18, 28(r3)
	stores.w r10, 24(r3)
	stores.w r9, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	beq r4, zero, .LBB0_479
.LBB0_482:                              # %vector.body434
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_480 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.ul r[2:3], r[20:21], r[16:17]
	lui r4, 524288
	slli r7, r2, 2
	add.s r3, r28, r7
	loads.w r2, 0(r3)
	loads.w r24, 12(r3)
	loads.w r19, 8(r3)
	loads.w r11, 4(r3)
	loads.w r18, 28(r3)
	loads.w r10, 24(r3)
	loads.w r9, 20(r3)
	loads.w r8, 16(r3)
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	and r3, r2, r27
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_484
# %bb.483:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r25
.LBB0_484:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r11, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r25
.LBB0_486:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r19, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r4
	or r19, r3, r25
.LBB0_488:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r24, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r25
.LBB0_490:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r8, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r4
	or r8, r3, r25
.LBB0_492:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r9, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r4
	or r9, r3, r25
.LBB0_494:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r10, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r10, r4
	or r10, r3, r25
.LBB0_496:                              # %vector.body434
                                        #   in Loop: Header=BB0_482 Depth=3
	and r3, r18, r27
	setlt.u r3, r25, r3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	beq r3, zero, .LBB0_481
# %bb.497:                              #   in Loop: Header=BB0_482 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r18, r4
	or r18, r3, r25
	j .LBB0_481
.LBB0_498:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 759 7 is_stmt 1               # parallel-rne.mlir:759:7
	mfence { sm }
.LBB0_499:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 780 7                         # parallel-rne.mlir:780:7
	addli r2, zero, 255
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r3, zero, 3
	.loc	1 780 7                         # parallel-rne.mlir:780:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 780 7                         # parallel-rne.mlir:780:7
	sync_core
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	bneq r2, r3, .LBB0_501
# %bb.500:                              # %.critedge20
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	addli r4, zero, 34
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
	j .LBB0_504
.LBB0_501:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	addli r3, zero, 2
	addli r4, zero, 4
	xwait r2, 0
	lock zero, r3
	addli r2, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 3
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	ew_cfg r2, zero, zero, 10
	addli r2, zero, 1
	loadli.w r7,  -632(r30)                 # 4-byte Folded Reload
	ew_cfg r3, r2, r7, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r4, r2, 14
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r22, r22, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
.LBB0_503:                              # %.thread86
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 785 13                        # parallel-rne.mlir:785:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
.LBB0_504:                              # %.critedge21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 2
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	xfence
	.loc	1 792 7                         # parallel-rne.mlir:792:7
	mfence { lm, sm, gm }
	.loc	1 785 13                        # parallel-rne.mlir:785:13
	mod.s r2, r2, r3
	loadli.w r3,  -624(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r10, r2, r3
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	sync_core
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	bneq r2, zero, .LBB0_541
# %bb.505:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_507
.LBB0_506:                              # %middle.block429
                                        #   in Loop: Header=BB0_507 Depth=2
	.loc	1 801 9                         # parallel-rne.mlir:801:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_540
.LBB0_507:                              # %.preheader106
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_517 Depth 3
                                        #       Child Loop BB0_511 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 802 11 is_stmt 1              # parallel-rne.mlir:802:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_514
# %bb.508:                              # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_507 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_511
.LBB0_509:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_511 Depth=3
	addli r9, r11, 0
.LBB0_510:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 814 13 is_stmt 1              # parallel-rne.mlir:814:13
	add.s r2, r10, r2
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 814 13                        # parallel-rne.mlir:814:13
	stores.w r9, 0(r2)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	beq r3, zero, .LBB0_506
.LBB0_511:                              # %scalar.ph420
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_507 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	and r3, r12, r1
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_513
# %bb.512:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	beq r3, r23, .LBB0_510
	j .LBB0_509
.LBB0_513:                              #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	beq r3, r23, .LBB0_510
	j .LBB0_509
.LBB0_514:                              # %vector.body422.preheader
                                        #   in Loop: Header=BB0_507 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_517
.LBB0_515:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r8, 28(r9)
.LBB0_516:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 802 11 is_stmt 1              # parallel-rne.mlir:802:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 814 13                        # parallel-rne.mlir:814:13
	add.s r3, r10, r24
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 814 13                        # parallel-rne.mlir:814:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	bneq r4, zero, .LBB0_506
.LBB0_517:                              # %vector.body422
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_507 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	add.s r9, r22, r24
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	loads.w r2, 0(r8)
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	and r3, r2, r23
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	and r4, r2, r1
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	seteq r3, r3, r23
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	setneq r4, r4, zero
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_519
# %bb.518:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_520
.LBB0_519:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_520:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_522
# %bb.521:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_523
.LBB0_522:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_523:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_525
# %bb.524:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_526:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_528
# %bb.527:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_529:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_531
# %bb.530:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_532:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_534
# %bb.533:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_535:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	bneq r3, zero, .LBB0_537
# %bb.536:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_538
.LBB0_537:                              #   in Loop: Header=BB0_517 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_538:                              # %vector.body422
                                        #   in Loop: Header=BB0_517 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	beq r3, zero, .LBB0_515
# %bb.539:                              #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	j .LBB0_516
.LBB0_540:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	mfence { sm }
.LBB0_541:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r26
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_577
# %bb.542:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_544
.LBB0_543:                              # %middle.block415
                                        #   in Loop: Header=BB0_544 Depth=2
	.loc	1 826 9 is_stmt 1               # parallel-rne.mlir:826:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_613
.LBB0_544:                              # %.preheader105
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_554 Depth 3
                                        #       Child Loop BB0_548 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 827 11 is_stmt 1              # parallel-rne.mlir:827:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_551
# %bb.545:                              # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_544 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_548
.LBB0_546:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_548 Depth=3
	addli r9, r11, 0
.LBB0_547:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 839 13 is_stmt 1              # parallel-rne.mlir:839:13
	add.s r2, r10, r2
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r9, 0(r2)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	beq r3, zero, .LBB0_543
.LBB0_548:                              # %scalar.ph406
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_544 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r3, r12, r1
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_550
# %bb.549:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r3, r23, .LBB0_547
	j .LBB0_546
.LBB0_550:                              #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r3, r23, .LBB0_547
	j .LBB0_546
.LBB0_551:                              # %vector.body408.preheader
                                        #   in Loop: Header=BB0_544 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_554
.LBB0_552:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r8, 28(r9)
.LBB0_553:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 827 11 is_stmt 1              # parallel-rne.mlir:827:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	add.s r3, r10, r24
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	bneq r4, zero, .LBB0_543
.LBB0_554:                              # %vector.body408
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_544 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.s r9, r22, r24
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	loads.w r2, 0(r8)
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r3, r2, r23
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r4, r2, r1
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	seteq r3, r3, r23
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	setneq r4, r4, zero
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_556
# %bb.555:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_557
.LBB0_556:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_557:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_559
# %bb.558:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_560
.LBB0_559:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_560:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_562
# %bb.561:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_563
.LBB0_562:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_563:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_565
# %bb.564:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_566:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_568
# %bb.567:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_569:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_571
# %bb.570:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_572:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r3, zero, .LBB0_574
# %bb.573:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_554 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_575:                              # %vector.body408
                                        #   in Loop: Header=BB0_554 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r3, zero, .LBB0_552
# %bb.576:                              #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	j .LBB0_553
.LBB0_577:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 844 7 is_stmt 1               # parallel-rne.mlir:844:7
	addli r2, zero, 2
	bneq r26, r2, .LBB0_614
.LBB0_578:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_580
.LBB0_579:                              # %middle.block401
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 851 9 is_stmt 1               # parallel-rne.mlir:851:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_650
.LBB0_580:                              # %.preheader104
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_590 Depth 3
                                        #       Child Loop BB0_584 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 852 11 is_stmt 1              # parallel-rne.mlir:852:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_587
# %bb.581:                              # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_584
.LBB0_582:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_584 Depth=3
	addli r9, r11, 0
.LBB0_583:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_584 Depth=3
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 864 13 is_stmt 1              # parallel-rne.mlir:864:13
	add.s r2, r10, r2
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r9, 0(r2)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	beq r3, zero, .LBB0_579
.LBB0_584:                              # %scalar.ph392
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_580 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r3, r12, r1
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_586
# %bb.585:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_584 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r3, r23, .LBB0_583
	j .LBB0_582
.LBB0_586:                              #   in Loop: Header=BB0_584 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r3, r23, .LBB0_583
	j .LBB0_582
.LBB0_587:                              # %vector.body394.preheader
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_590
.LBB0_588:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r8, 28(r9)
.LBB0_589:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 852 11 is_stmt 1              # parallel-rne.mlir:852:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	add.s r3, r10, r24
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	bneq r4, zero, .LBB0_579
.LBB0_590:                              # %vector.body394
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_580 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.s r9, r22, r24
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	loads.w r2, 0(r8)
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	and r3, r2, r23
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r4, r2, r1
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	seteq r3, r3, r23
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	setneq r4, r4, zero
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_592
# %bb.591:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_593
.LBB0_592:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_593:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_595
# %bb.594:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_596
.LBB0_595:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_596:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_598
# %bb.597:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_599
.LBB0_598:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_599:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_601
# %bb.600:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_602:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_604
# %bb.603:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_605:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_607
# %bb.606:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_608:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r3, zero, .LBB0_610
# %bb.609:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_590 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_611:                              # %vector.body394
                                        #   in Loop: Header=BB0_590 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r3, zero, .LBB0_588
# %bb.612:                              #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	j .LBB0_589
.LBB0_613:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 819 7 is_stmt 1               # parallel-rne.mlir:819:7
	mfence { sm }
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	addli r2, zero, 2
	beq r26, r2, .LBB0_578
.LBB0_614:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	addli r2, zero, 3
	bneq r26, r2, .LBB0_651
.LBB0_615:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_617
.LBB0_616:                              # %middle.block387
                                        #   in Loop: Header=BB0_617 Depth=2
	.loc	1 876 9 is_stmt 1               # parallel-rne.mlir:876:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_687
.LBB0_617:                              # %.preheader103
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_627 Depth 3
                                        #       Child Loop BB0_621 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 877 11 is_stmt 1              # parallel-rne.mlir:877:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_624
# %bb.618:                              # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_617 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_621
.LBB0_619:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_621 Depth=3
	addli r9, r11, 0
.LBB0_620:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 889 13 is_stmt 1              # parallel-rne.mlir:889:13
	add.s r2, r10, r2
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 889 13                        # parallel-rne.mlir:889:13
	stores.w r9, 0(r2)
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	beq r3, zero, .LBB0_616
.LBB0_621:                              # %scalar.ph378
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_617 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	and r3, r12, r1
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_623
# %bb.622:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	beq r3, r23, .LBB0_620
	j .LBB0_619
.LBB0_623:                              #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	beq r3, r23, .LBB0_620
	j .LBB0_619
.LBB0_624:                              # %vector.body380.preheader
                                        #   in Loop: Header=BB0_617 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_627
.LBB0_625:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r8, 28(r9)
.LBB0_626:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 877 11 is_stmt 1              # parallel-rne.mlir:877:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 889 13                        # parallel-rne.mlir:889:13
	add.s r3, r10, r24
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 889 13                        # parallel-rne.mlir:889:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 877 11                        # parallel-rne.mlir:877:11
	bneq r4, zero, .LBB0_616
.LBB0_627:                              # %vector.body380
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_617 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	add.s r9, r22, r24
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	loads.w r2, 0(r8)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	and r3, r2, r23
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	and r4, r2, r1
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	seteq r3, r3, r23
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	setneq r4, r4, zero
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_629
# %bb.628:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_630
.LBB0_629:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_630:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_632
# %bb.631:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_633
.LBB0_632:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_633:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_635
# %bb.634:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_636
.LBB0_635:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_636:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_638
# %bb.637:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_639:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_641
# %bb.640:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_642:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_644
# %bb.643:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_645:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	bneq r3, zero, .LBB0_647
# %bb.646:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_627 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_648:                              # %vector.body380
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	beq r3, zero, .LBB0_625
# %bb.649:                              #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	j .LBB0_626
.LBB0_650:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 844 7 is_stmt 1               # parallel-rne.mlir:844:7
	mfence { sm }
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	addli r2, zero, 3
	beq r26, r2, .LBB0_615
.LBB0_651:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 894 7                         # parallel-rne.mlir:894:7
	addli r2, zero, 4
	bneq r26, r2, .LBB0_688
.LBB0_652:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 894 7                         # parallel-rne.mlir:894:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_654
.LBB0_653:                              # %middle.block373
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 901 9 is_stmt 1               # parallel-rne.mlir:901:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_724
.LBB0_654:                              # %.preheader102
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_664 Depth 3
                                        #       Child Loop BB0_658 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 902 11 is_stmt 1              # parallel-rne.mlir:902:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_661
# %bb.655:                              # %scalar.ph364.preheader
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_658
.LBB0_656:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_658 Depth=3
	addli r9, r11, 0
.LBB0_657:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 914 13 is_stmt 1              # parallel-rne.mlir:914:13
	add.s r2, r10, r2
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r9, 0(r2)
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	beq r3, zero, .LBB0_653
.LBB0_658:                              # %scalar.ph364
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_654 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	and r3, r12, r1
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_660
# %bb.659:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	beq r3, r23, .LBB0_657
	j .LBB0_656
.LBB0_660:                              #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	beq r3, r23, .LBB0_657
	j .LBB0_656
.LBB0_661:                              # %vector.body366.preheader
                                        #   in Loop: Header=BB0_654 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_664
.LBB0_662:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r8, 28(r9)
.LBB0_663:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 902 11 is_stmt 1              # parallel-rne.mlir:902:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	add.s r3, r10, r24
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 902 11                        # parallel-rne.mlir:902:11
	bneq r4, zero, .LBB0_653
.LBB0_664:                              # %vector.body366
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_654 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	add.s r9, r22, r24
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	loads.w r2, 0(r8)
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	and r3, r2, r23
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	and r4, r2, r1
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	seteq r3, r3, r23
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	setneq r4, r4, zero
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_666
# %bb.665:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_667
.LBB0_666:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_667:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_669
# %bb.668:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_670
.LBB0_669:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_670:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_672
# %bb.671:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_673
.LBB0_672:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_673:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_675
# %bb.674:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_676
.LBB0_675:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_676:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_678
# %bb.677:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_679
.LBB0_678:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_679:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_681
# %bb.680:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_682
.LBB0_681:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_682:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	bneq r3, zero, .LBB0_684
# %bb.683:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_685
.LBB0_684:                              #   in Loop: Header=BB0_664 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_685:                              # %vector.body366
                                        #   in Loop: Header=BB0_664 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	beq r3, zero, .LBB0_662
# %bb.686:                              #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	j .LBB0_663
.LBB0_687:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 869 7 is_stmt 1               # parallel-rne.mlir:869:7
	mfence { sm }
	.loc	1 894 7                         # parallel-rne.mlir:894:7
	addli r2, zero, 4
	beq r26, r2, .LBB0_652
.LBB0_688:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	addli r2, zero, 5
	bneq r26, r2, .LBB0_725
.LBB0_689:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_691
.LBB0_690:                              # %middle.block359
                                        #   in Loop: Header=BB0_691 Depth=2
	.loc	1 926 9 is_stmt 1               # parallel-rne.mlir:926:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_761
.LBB0_691:                              # %.preheader101
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_701 Depth 3
                                        #       Child Loop BB0_695 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 927 11 is_stmt 1              # parallel-rne.mlir:927:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_698
# %bb.692:                              # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_691 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_695
.LBB0_693:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_695 Depth=3
	addli r9, r11, 0
.LBB0_694:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 939 13 is_stmt 1              # parallel-rne.mlir:939:13
	add.s r2, r10, r2
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 939 13                        # parallel-rne.mlir:939:13
	stores.w r9, 0(r2)
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	beq r3, zero, .LBB0_690
.LBB0_695:                              # %scalar.ph350
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_691 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r3, r12, r1
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_697
# %bb.696:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	beq r3, r23, .LBB0_694
	j .LBB0_693
.LBB0_697:                              #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	beq r3, r23, .LBB0_694
	j .LBB0_693
.LBB0_698:                              # %vector.body352.preheader
                                        #   in Loop: Header=BB0_691 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_701
.LBB0_699:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r8, 28(r9)
.LBB0_700:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 927 11 is_stmt 1              # parallel-rne.mlir:927:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 939 13                        # parallel-rne.mlir:939:13
	add.s r3, r10, r24
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 939 13                        # parallel-rne.mlir:939:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 927 11                        # parallel-rne.mlir:927:11
	bneq r4, zero, .LBB0_690
.LBB0_701:                              # %vector.body352
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_691 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	add.s r9, r22, r24
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	loads.w r2, 0(r8)
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	and r3, r2, r23
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	and r4, r2, r1
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	seteq r3, r3, r23
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	setneq r4, r4, zero
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_703
# %bb.702:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_704
.LBB0_703:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_704:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_706
# %bb.705:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_707
.LBB0_706:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_707:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_709
# %bb.708:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_710
.LBB0_709:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_710:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_712
# %bb.711:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_713
.LBB0_712:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_713:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_715
# %bb.714:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_716:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_718
# %bb.717:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_719:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	bneq r3, zero, .LBB0_721
# %bb.720:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_701 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_722:                              # %vector.body352
                                        #   in Loop: Header=BB0_701 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	beq r3, zero, .LBB0_699
# %bb.723:                              #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	j .LBB0_700
.LBB0_724:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 894 7 is_stmt 1               # parallel-rne.mlir:894:7
	mfence { sm }
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	addli r2, zero, 5
	beq r26, r2, .LBB0_689
.LBB0_725:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	addli r2, zero, 6
	bneq r26, r2, .LBB0_762
.LBB0_726:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_728
.LBB0_727:                              # %middle.block345
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 951 9 is_stmt 1               # parallel-rne.mlir:951:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[7:8], -520(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_763
.LBB0_728:                              # %.preheader100
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_738 Depth 3
                                        #       Child Loop BB0_732 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 952 11 is_stmt 1              # parallel-rne.mlir:952:11
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	bneq r10, r28, .LBB0_735
# %bb.729:                              # %scalar.ph336.preheader
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_732
.LBB0_730:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_732 Depth=3
	addli r9, r11, 0
.LBB0_731:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_732 Depth=3
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 964 13 is_stmt 1              # parallel-rne.mlir:964:13
	add.s r2, r10, r2
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	stores.w r9, 0(r2)
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	beq r3, zero, .LBB0_727
.LBB0_732:                              # %scalar.ph336
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	and r3, r12, r1
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_734
# %bb.733:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_732 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r3, r23, .LBB0_731
	j .LBB0_730
.LBB0_734:                              #   in Loop: Header=BB0_732 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r3, r23, .LBB0_731
	j .LBB0_730
.LBB0_735:                              # %vector.body338.preheader
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_738
.LBB0_736:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r8, 28(r9)
.LBB0_737:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 952 11 is_stmt 1              # parallel-rne.mlir:952:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	add.s r3, r10, r24
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 952 11                        # parallel-rne.mlir:952:11
	bneq r4, zero, .LBB0_727
.LBB0_738:                              # %vector.body338
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	add.s r9, r22, r24
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	loads.w r2, 0(r8)
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	and r3, r2, r23
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	and r4, r2, r1
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	seteq r3, r3, r23
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	setneq r4, r4, zero
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_740
# %bb.739:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_741
.LBB0_740:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_741:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_743
# %bb.742:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_744
.LBB0_743:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_744:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_746
# %bb.745:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_747
.LBB0_746:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_747:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_749
# %bb.748:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_750
.LBB0_749:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_750:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_752
# %bb.751:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_753:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_755
# %bb.754:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_756:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r3, zero, .LBB0_758
# %bb.757:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_738 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_759:                              # %vector.body338
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r3, zero, .LBB0_736
# %bb.760:                              #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	j .LBB0_737
.LBB0_761:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 919 7 is_stmt 1               # parallel-rne.mlir:919:7
	mfence { sm }
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	addli r2, zero, 6
	beq r26, r2, .LBB0_726
.LBB0_762:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	addli r2, zero, 7
	beq r26, r2, .LBB0_764
	j .LBB0_800
.LBB0_763:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	mfence { sm }
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	addli r2, zero, 7
	bneq r26, r2, .LBB0_800
.LBB0_764:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_766
.LBB0_765:                              # %middle.block331
                                        #   in Loop: Header=BB0_766 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -520(r30)                # 8-byte Folded Reload
	.loc	1 976 9 is_stmt 1               # parallel-rne.mlir:976:9
	setlt.ul r2, r[3:4], r[14:15]
	addli.d r[3:4], r[3:4], 1
	beq r2, zero, .LBB0_799
.LBB0_766:                              # %.preheader99
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_776 Depth 3
                                        #       Child Loop BB0_770 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	.loc	1 977 11 is_stmt 1              # parallel-rne.mlir:977:11
	bneq r10, r28, .LBB0_773
# %bb.767:                              # %scalar.ph322.preheader
                                        #   in Loop: Header=BB0_766 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_770
.LBB0_768:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_770 Depth=3
	addli r9, r11, 0
.LBB0_769:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_770 Depth=3
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 989 13 is_stmt 1              # parallel-rne.mlir:989:13
	add.s r2, r10, r2
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	stores.w r9, 0(r2)
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	beq r3, zero, .LBB0_765
.LBB0_770:                              # %scalar.ph322
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_766 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	add.ul r[2:3], r[7:8], r[20:21]
	slli r2, r2, 2
	add.s r3, r28, r2
	loads.w r12, 0(r3)
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	add.s r3, r22, r2
	loads.w r11, 0(r3)
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	and r3, r12, r1
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_772
# %bb.771:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_770 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	and r3, r12, r23
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r3, r23, .LBB0_769
	j .LBB0_768
.LBB0_772:                              #   in Loop: Header=BB0_770 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r9, r12, r3
	and r3, r12, r23
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r3, r23, .LBB0_769
	j .LBB0_768
.LBB0_773:                              # %vector.body324.preheader
                                        #   in Loop: Header=BB0_766 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_776
.LBB0_774:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r8, 28(r9)
.LBB0_775:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 977 11 is_stmt 1              # parallel-rne.mlir:977:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	add.s r3, r10, r24
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	seteq.d r4, r[12:13], r[5:6]
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	stores.w r11, 12(r3)
	stores.w r7, 8(r3)
	stores.w r18, 4(r3)
	stores.w r2, 0(r3)
	stores.w r8, 28(r3)
	stores.w r17, 24(r3)
	stores.w r16, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 977 11                        # parallel-rne.mlir:977:11
	bneq r4, zero, .LBB0_765
.LBB0_776:                              # %vector.body324
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_766 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	add.ul r[2:3], r[12:13], r[20:21]
	slli r24, r2, 2
	add.s r8, r28, r24
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	add.s r9, r22, r24
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	loads.w r2, 0(r8)
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	and r3, r2, r23
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	and r4, r2, r1
	.loc	1 983 19                        # parallel-rne.mlir:983:19
	seteq r3, r3, r23
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	setneq r4, r4, zero
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_778
# %bb.777:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r9)
	j .LBB0_779
.LBB0_778:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_779:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r7, 4(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_781
# %bb.780:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r9)
	j .LBB0_782
.LBB0_781:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r18, r7, r3
.LBB0_782:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r7, 8(r8)
	and r3, r7, r23
	and r4, r7, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_784
# %bb.783:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r9)
	j .LBB0_785
.LBB0_784:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r7, r7, r3
.LBB0_785:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r11, 12(r8)
	and r3, r11, r23
	and r4, r11, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_787
# %bb.786:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_788
.LBB0_787:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_788:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r16, 16(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_790
# %bb.789:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r9)
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r19, r16, r3
.LBB0_791:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r16, 20(r8)
	and r3, r16, r23
	and r4, r16, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_793
# %bb.792:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r9)
	j .LBB0_794
.LBB0_793:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r16, r16, r3
.LBB0_794:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r17, 24(r8)
	and r3, r17, r23
	and r4, r17, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r3, zero, .LBB0_796
# %bb.795:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r9)
	j .LBB0_797
.LBB0_796:                              #   in Loop: Header=BB0_776 Depth=3
	lui r3, 1024
	or r17, r17, r3
.LBB0_797:                              # %vector.body324
                                        #   in Loop: Header=BB0_776 Depth=3
	loads.w r8, 28(r8)
	and r3, r8, r23
	and r4, r8, r1
	seteq r3, r3, r23
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r3, zero, .LBB0_774
# %bb.798:                              #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r8, r8, r3
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	j .LBB0_775
.LBB0_799:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 969 7 is_stmt 1               # parallel-rne.mlir:969:7
	mfence { sm }
.LBB0_800:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	addli r2, zero, 255
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	addli r3, zero, 3
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	sync_core
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	bneq r2, r3, .LBB0_802
# %bb.801:                              # %.critedge26
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
	loadli.w r3,  -628(r30)                 # 4-byte Folded Reload
	add.s r28, r2, r3
	.loc	1 1005 7                        # parallel-rne.mlir:1005:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	addli r2, zero, 39
	xwait r2, 0
	j .LBB0_805
.LBB0_802:                              # %.critedge24
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 2
	.loc	1 998 7 is_stmt 1               # parallel-rne.mlir:998:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_804
# %bb.803:                              # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 36
	addli r8, zero, 4095
	addli r7, zero, 4
	xwait r2, 0
	lock zero, r4
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, zero, 19
	dsmadd r10, r10, r10, 0
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
	addli r3, zero, 2
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	ew_cfg zero, r8, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, r7, 19
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	add.s r28, r2, r4
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	dsmul r28, r2, r10, 0
	addli r2, zero, 23
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
	addli r2, zero, 37
	xsignal r2, 0
	addli r2, zero, 39
	xsignal r2, 0
	.loc	1 1003 7                        # parallel-rne.mlir:1003:7
	j .LBB0_805
.LBB0_804:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1000 13                       # parallel-rne.mlir:1000:13
	loadli.w r2,  -12(r30)
	mod.s r3, r2, r4
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	slli r3, r3, 16
	add.s r28, r3, r4
.LBB0_805:                              # %.critedge28
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	addli r2, zero, 255
	.loc	1 1008 7                        # parallel-rne.mlir:1008:7
	xfence
	.loc	1 1009 7                        # parallel-rne.mlir:1009:7
	mfence { lm, sm, gm }
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	csr_set csr5, r2
	loadli.w r2,  -444(r30)                 # 4-byte Folded Reload
	sub.s r2, r22, r2
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	sub.s r2, r22, r28
	storeli.w r2, -532(r30)                 # 4-byte Folded Spill
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	sync_core
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	beq r2, zero, .LBB0_807
# %bb.806:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	addli r3, zero, 1
	beq r2, r3, .LBB0_835
	j .LBB0_863
.LBB0_807:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 1011 7 is_stmt 1              # parallel-rne.mlir:1011:7
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_809
.LBB0_808:                              # %middle.block317
                                        #   in Loop: Header=BB0_809 Depth=2
	.loc	1 1018 9                        # parallel-rne.mlir:1018:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_834
.LBB0_809:                              # %.preheader98
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_826 Depth 3
                                        #       Child Loop BB0_812 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1019 11 is_stmt 1             # parallel-rne.mlir:1019:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_824
# %bb.810:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_809 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_812
.LBB0_811:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1041 13 is_stmt 1             # parallel-rne.mlir:1041:13
	add.s r2, r22, r2
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	stores.w r9, 0(r2)
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	beq r3, zero, .LBB0_808
.LBB0_812:                              # %scalar.ph309
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_809 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	add.s r3, r10, r2
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.s r4, r28, r2
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	loads.w r3, 0(r3)
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	loads.w r18, 0(r4)
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	and r4, r3, r27
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	beq r4, r23, .LBB0_814
# %bb.813:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_814:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r11, r3, r27
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	beq r11, zero, .LBB0_822
# %bb.815:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r4, zero, .LBB0_823
.LBB0_816:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	beq r11, r23, .LBB0_818
.LBB0_817:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_818:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r3, zero, .LBB0_820
# %bb.819:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
.LBB0_820:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	setlt.u r3, r23, r11
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r3, zero, .LBB0_811
# %bb.821:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_811
.LBB0_822:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	lui r18, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	beq r4, zero, .LBB0_816
.LBB0_823:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r11, r23, .LBB0_817
	j .LBB0_818
.LBB0_824:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_809 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_826
.LBB0_825:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	.loc	1 1019 11 is_stmt 1             # parallel-rne.mlir:1019:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	add.s r2, r22, r2
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	bneq r3, zero, .LBB0_808
.LBB0_826:                              # %vector.body311
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_809 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	add.s r18, r10, r2
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.s r17, r3, r2
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	loads.w r4, 0(r18)
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	loads.w r3, 0(r17)
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	and r4, r4, r27
	.loc	1 1027 19                       # parallel-rne.mlir:1027:19
	and r3, r3, r27
	.loc	1 1029 19                       # parallel-rne.mlir:1029:19
	seteq r11, r4, zero
	.loc	1 1031 19                       # parallel-rne.mlir:1031:19
	seteq r19, r4, r23
	.loc	1 1028 19                       # parallel-rne.mlir:1028:19
	seteq r7, r3, r23
	.loc	1 1032 19                       # parallel-rne.mlir:1032:19
	seteq r24, r3, zero
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1030 19                       # parallel-rne.mlir:1030:19
	and r4, r7, r11
	.loc	1 1033 19                       # parallel-rne.mlir:1033:19
	and r7, r24, r19
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	add.s r19, r28, r2
	lui r11, 523264
	.loc	1 1034 19                       # parallel-rne.mlir:1034:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1038 19                       # parallel-rne.mlir:1038:19
	or r3, r3, r4
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r3, zero, .LBB0_828
# %bb.827:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_828:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r20, r3, zero
	seteq r16, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r16, r20, r16
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r3, zero, .LBB0_830
# %bb.829:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_830:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r3, zero, .LBB0_832
# %bb.831:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_832:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	loads.w r3, 12(r17)
	loads.w r16, 12(r18)
	and r3, r3, r27
	and r16, r16, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r16, zero
	seteq r20, r16, r23
	max.u r3, r3, r16
	setlt.u r3, r23, r3
	and r16, r17, r18
	and r17, r21, r20
	or r16, r16, r17
	or r3, r3, r16
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	bneq r3, zero, .LBB0_825
# %bb.833:                              # %vector.body311
                                        #   in Loop: Header=BB0_826 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_825
.LBB0_834:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	mfence { sm }
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_863
.LBB0_835:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_837
.LBB0_836:                              # %middle.block302
                                        #   in Loop: Header=BB0_837 Depth=2
	.loc	1 1053 9 is_stmt 1              # parallel-rne.mlir:1053:9
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_862
.LBB0_837:                              # %.preheader97
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_854 Depth 3
                                        #       Child Loop BB0_840 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_852
# %bb.838:                              # %scalar.ph294.preheader
                                        #   in Loop: Header=BB0_837 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_840
.LBB0_839:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1076 13 is_stmt 1             # parallel-rne.mlir:1076:13
	add.s r2, r22, r2
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	stores.w r9, 0(r2)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	beq r3, zero, .LBB0_836
.LBB0_840:                              # %scalar.ph294
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_837 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r3, r10, r2
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r4, r28, r2
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r3, 0(r3)
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r18, 0(r4)
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r4, r3, r27
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r4, r23, .LBB0_842
# %bb.841:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_842:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r11, r3, r27
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r11, zero, .LBB0_850
# %bb.843:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r4, zero, .LBB0_851
.LBB0_844:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	beq r11, r23, .LBB0_846
.LBB0_845:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_846:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r3, zero, .LBB0_848
# %bb.847:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
.LBB0_848:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	setlt.u r3, r23, r11
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r3, zero, .LBB0_839
# %bb.849:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_839
.LBB0_850:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	lui r18, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r4, zero, .LBB0_844
.LBB0_851:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_840 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r11, r23, .LBB0_845
	j .LBB0_846
.LBB0_852:                              # %vector.body296.preheader
                                        #   in Loop: Header=BB0_837 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_854
.LBB0_853:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	add.s r2, r22, r2
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	bneq r3, zero, .LBB0_836
.LBB0_854:                              # %vector.body296
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_837 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r18, r10, r2
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r17, r3, r2
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r4, 0(r18)
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r3, 0(r17)
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r4, r4, r27
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r3, r3, r27
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	seteq r11, r4, zero
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r19, r4, r23
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	seteq r7, r3, r23
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	seteq r24, r3, zero
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	and r4, r7, r11
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	and r7, r24, r19
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r19, r28, r2
	lui r11, 523264
	.loc	1 1069 19                       # parallel-rne.mlir:1069:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	or r3, r3, r4
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r3, zero, .LBB0_856
# %bb.855:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_856:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r20, r3, zero
	seteq r16, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r16, r20, r16
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r3, zero, .LBB0_858
# %bb.857:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_858:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r3, zero, .LBB0_860
# %bb.859:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_860:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	loads.w r3, 12(r17)
	loads.w r16, 12(r18)
	and r3, r3, r27
	and r16, r16, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r16, zero
	seteq r20, r16, r23
	max.u r3, r3, r16
	setlt.u r3, r23, r3
	and r16, r17, r18
	and r17, r21, r20
	or r16, r16, r17
	or r3, r3, r16
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r3, zero, .LBB0_853
# %bb.861:                              # %vector.body296
                                        #   in Loop: Header=BB0_854 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_853
.LBB0_862:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1046 7 is_stmt 1              # parallel-rne.mlir:1046:7
	mfence { sm }
.LBB0_863:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_892
# %bb.864:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_866
.LBB0_865:                              # %middle.block287
                                        #   in Loop: Header=BB0_866 Depth=2
	.loc	1 1088 9 is_stmt 1              # parallel-rne.mlir:1088:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_891
.LBB0_866:                              # %.preheader96
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_883 Depth 3
                                        #       Child Loop BB0_869 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_881
# %bb.867:                              # %scalar.ph279.preheader
                                        #   in Loop: Header=BB0_866 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_869
.LBB0_868:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1111 13 is_stmt 1             # parallel-rne.mlir:1111:13
	add.s r2, r22, r2
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r9, 0(r2)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	beq r3, zero, .LBB0_865
.LBB0_869:                              # %scalar.ph279
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_866 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r3, r10, r2
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r4, r28, r2
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r3, 0(r3)
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r18, 0(r4)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r4, r3, r27
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r4, r23, .LBB0_871
# %bb.870:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_871:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r11, r3, r27
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r11, zero, .LBB0_879
# %bb.872:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r4, zero, .LBB0_880
.LBB0_873:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	beq r11, r23, .LBB0_875
.LBB0_874:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_875:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r3, zero, .LBB0_877
# %bb.876:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
.LBB0_877:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	setlt.u r3, r23, r11
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r3, zero, .LBB0_868
# %bb.878:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_868
.LBB0_879:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	lui r18, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r4, zero, .LBB0_873
.LBB0_880:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r11, r23, .LBB0_874
	j .LBB0_875
.LBB0_881:                              # %vector.body281.preheader
                                        #   in Loop: Header=BB0_866 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_883
.LBB0_882:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	add.s r2, r22, r2
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	bneq r3, zero, .LBB0_865
.LBB0_883:                              # %vector.body281
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_866 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r18, r10, r2
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.s r17, r3, r2
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r4, 0(r18)
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r3, 0(r17)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r4, r4, r27
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	and r3, r3, r27
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	seteq r11, r4, zero
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r19, r4, r23
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	seteq r7, r3, r23
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	seteq r24, r3, zero
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	and r4, r7, r11
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	and r7, r24, r19
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r19, r28, r2
	lui r11, 523264
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	or r3, r3, r4
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r3, zero, .LBB0_885
# %bb.884:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_885:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r20, r3, zero
	seteq r16, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r16, r20, r16
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r3, zero, .LBB0_887
# %bb.886:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_887:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r3, zero, .LBB0_889
# %bb.888:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_889:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	loads.w r3, 12(r17)
	loads.w r16, 12(r18)
	and r3, r3, r27
	and r16, r16, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r16, zero
	seteq r20, r16, r23
	max.u r3, r3, r16
	setlt.u r3, r23, r3
	and r16, r17, r18
	and r17, r21, r20
	or r16, r16, r17
	or r3, r3, r16
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r3, zero, .LBB0_882
# %bb.890:                              # %vector.body281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_882
.LBB0_891:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1081 7 is_stmt 1              # parallel-rne.mlir:1081:7
	mfence { sm }
.LBB0_892:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_921
# %bb.893:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_895
.LBB0_894:                              # %middle.block272
                                        #   in Loop: Header=BB0_895 Depth=2
	.loc	1 1123 9 is_stmt 1              # parallel-rne.mlir:1123:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_920
.LBB0_895:                              # %.preheader95
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_912 Depth 3
                                        #       Child Loop BB0_898 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1124 11 is_stmt 1             # parallel-rne.mlir:1124:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_910
# %bb.896:                              # %scalar.ph264.preheader
                                        #   in Loop: Header=BB0_895 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_898
.LBB0_897:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1146 13 is_stmt 1             # parallel-rne.mlir:1146:13
	add.s r2, r22, r2
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r9, 0(r2)
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	beq r3, zero, .LBB0_894
.LBB0_898:                              # %scalar.ph264
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_895 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r3, r10, r2
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r4, r28, r2
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r3, 0(r3)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r18, 0(r4)
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	and r4, r3, r27
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r4, r23, .LBB0_900
# %bb.899:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_900:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r11, r3, r27
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r11, zero, .LBB0_908
# %bb.901:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_909
.LBB0_902:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	beq r11, r23, .LBB0_904
.LBB0_903:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_904:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r3, zero, .LBB0_906
# %bb.905:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
.LBB0_906:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	setlt.u r3, r23, r11
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r3, zero, .LBB0_897
# %bb.907:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_897
.LBB0_908:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	lui r18, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r4, zero, .LBB0_902
.LBB0_909:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_898 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r11, r23, .LBB0_903
	j .LBB0_904
.LBB0_910:                              # %vector.body266.preheader
                                        #   in Loop: Header=BB0_895 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_912
.LBB0_911:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	.loc	1 1124 11 is_stmt 1             # parallel-rne.mlir:1124:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	add.s r2, r22, r2
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	bneq r3, zero, .LBB0_894
.LBB0_912:                              # %vector.body266
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_895 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r18, r10, r2
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.s r17, r3, r2
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r4, 0(r18)
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	loads.w r3, 0(r17)
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	and r4, r4, r27
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r3, r3, r27
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	seteq r11, r4, zero
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	seteq r19, r4, r23
	.loc	1 1133 19                       # parallel-rne.mlir:1133:19
	seteq r7, r3, r23
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	seteq r24, r3, zero
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	and r4, r7, r11
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	and r7, r24, r19
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r19, r28, r2
	lui r11, 523264
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	or r3, r3, r4
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r3, zero, .LBB0_914
# %bb.913:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_914:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r20, r3, zero
	seteq r16, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r16, r20, r16
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r3, zero, .LBB0_916
# %bb.915:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_916:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r3, zero, .LBB0_918
# %bb.917:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_918:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	loads.w r3, 12(r17)
	loads.w r16, 12(r18)
	and r3, r3, r27
	and r16, r16, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r16, zero
	seteq r20, r16, r23
	max.u r3, r3, r16
	setlt.u r3, r23, r3
	and r16, r17, r18
	and r17, r21, r20
	or r16, r16, r17
	or r3, r3, r16
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r3, zero, .LBB0_911
# %bb.919:                              # %vector.body266
                                        #   in Loop: Header=BB0_912 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_911
.LBB0_920:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1116 7 is_stmt 1              # parallel-rne.mlir:1116:7
	mfence { sm }
.LBB0_921:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_950
# %bb.922:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_924
.LBB0_923:                              # %middle.block257
                                        #   in Loop: Header=BB0_924 Depth=2
	.loc	1 1158 9 is_stmt 1              # parallel-rne.mlir:1158:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_949
.LBB0_924:                              # %.preheader94
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_941 Depth 3
                                        #       Child Loop BB0_927 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1159 11 is_stmt 1             # parallel-rne.mlir:1159:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_939
# %bb.925:                              # %scalar.ph249.preheader
                                        #   in Loop: Header=BB0_924 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_927
.LBB0_926:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1181 13 is_stmt 1             # parallel-rne.mlir:1181:13
	add.s r2, r22, r2
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	stores.w r9, 0(r2)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	beq r3, zero, .LBB0_923
.LBB0_927:                              # %scalar.ph249
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_924 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[2:3], r[7:8], r[12:13]
	lui r9, 523264
	lui r17, 523264
	slli r2, r2, 2
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.s r3, r10, r2
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r4, r28, r2
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r3, 0(r3)
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r18, 0(r4)
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r4, r3, r27
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r4, r23, .LBB0_929
# %bb.928:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_929:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r11, r3, r27
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r11, zero, .LBB0_937
# %bb.930:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r4, zero, .LBB0_938
.LBB0_931:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	beq r11, r23, .LBB0_933
.LBB0_932:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_933:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r3, zero, .LBB0_935
# %bb.934:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
.LBB0_935:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	setlt.u r3, r23, r11
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r3, zero, .LBB0_926
# %bb.936:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_926
.LBB0_937:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	lui r18, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r4, zero, .LBB0_931
.LBB0_938:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_927 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r11, r23, .LBB0_932
	j .LBB0_933
.LBB0_939:                              # %vector.body251.preheader
                                        #   in Loop: Header=BB0_924 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_941
.LBB0_940:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 1159 11 is_stmt 1             # parallel-rne.mlir:1159:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	add.s r2, r22, r2
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	bneq r3, zero, .LBB0_923
.LBB0_941:                              # %vector.body251
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_924 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[2:3], r[8:9], r[12:13]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.s r18, r10, r2
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.s r17, r3, r2
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r4, 0(r18)
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	loads.w r3, 0(r17)
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r4, r4, r27
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r3, r3, r27
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	seteq r11, r4, zero
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r19, r4, r23
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	seteq r7, r3, r23
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	seteq r24, r3, zero
	.loc	1 1177 19                       # parallel-rne.mlir:1177:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	and r4, r7, r11
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	and r7, r24, r19
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r19, r28, r2
	lui r11, 523264
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1178 19                       # parallel-rne.mlir:1178:19
	or r3, r3, r4
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r3, zero, .LBB0_943
# %bb.942:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_943:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	loads.w r3, 4(r17)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r20, r3, zero
	seteq r16, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r16, r20, r16
	lui r24, 523264
	or r4, r4, r16
	or r3, r3, r4
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r3, zero, .LBB0_945
# %bb.944:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_945:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	loads.w r3, 8(r17)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r16, r3, r23
	seteq r26, r3, zero
	seteq r20, r4, zero
	seteq r21, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r16, r20
	and r16, r26, r21
	or r4, r4, r16
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r3, zero, .LBB0_947
# %bb.946:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_947:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	loads.w r3, 12(r17)
	loads.w r16, 12(r18)
	and r3, r3, r27
	and r16, r16, r27
	seteq r17, r3, r23
	seteq r21, r3, zero
	seteq r18, r16, zero
	seteq r20, r16, r23
	max.u r3, r3, r16
	setlt.u r3, r23, r3
	and r16, r17, r18
	and r17, r21, r20
	or r16, r16, r17
	or r3, r3, r16
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r3, zero, .LBB0_940
# %bb.948:                              # %vector.body251
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_940
.LBB0_949:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1151 7 is_stmt 1              # parallel-rne.mlir:1151:7
	mfence { sm }
.LBB0_950:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_979
# %bb.951:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_953
.LBB0_952:                              # %middle.block242
                                        #   in Loop: Header=BB0_953 Depth=2
	.loc	1 1193 9 is_stmt 1              # parallel-rne.mlir:1193:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_978
.LBB0_953:                              # %.preheader93
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_970 Depth 3
                                        #       Child Loop BB0_956 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1194 11 is_stmt 1             # parallel-rne.mlir:1194:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_968
# %bb.954:                              # %scalar.ph234.preheader
                                        #   in Loop: Header=BB0_953 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_956
.LBB0_955:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1216 13 is_stmt 1             # parallel-rne.mlir:1216:13
	add.s r2, r22, r2
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1216 13                       # parallel-rne.mlir:1216:13
	stores.w r9, 0(r2)
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	beq r3, zero, .LBB0_952
.LBB0_956:                              # %scalar.ph234
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_953 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	add.ul r[2:3], r[7:8], r[20:21]
	lui r9, 523264
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	add.s r3, r10, r2
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r4, r28, r2
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	loads.w r3, 0(r3)
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	loads.w r18, 0(r4)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	and r4, r3, r27
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	beq r4, r23, .LBB0_958
# %bb.957:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r18, 0
.LBB0_958:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r11, r3, r27
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	beq r11, zero, .LBB0_966
# %bb.959:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r18, 0
	lui r18, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r4, zero, .LBB0_967
.LBB0_960:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	beq r11, r23, .LBB0_962
.LBB0_961:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r13, 0
.LBB0_962:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r3, zero, .LBB0_964
# %bb.963:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
.LBB0_964:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	setlt.u r3, r23, r11
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r3, zero, .LBB0_955
# %bb.965:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_955
.LBB0_966:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	lui r18, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	beq r4, zero, .LBB0_960
.LBB0_967:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_956 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r13, 0
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r11, r23, .LBB0_961
	j .LBB0_962
.LBB0_968:                              # %vector.body236.preheader
                                        #   in Loop: Header=BB0_953 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_970
.LBB0_969:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 1194 11 is_stmt 1             # parallel-rne.mlir:1194:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1216 13                       # parallel-rne.mlir:1216:13
	add.s r2, r22, r2
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	seteq.d r3, r[8:9], r[5:6]
	.loc	1 1216 13                       # parallel-rne.mlir:1216:13
	stores.w r11, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1194 11                       # parallel-rne.mlir:1194:11
	bneq r3, zero, .LBB0_952
.LBB0_970:                              # %vector.body236
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_953 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	add.ul r[2:3], r[8:9], r[20:21]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	add.s r18, r10, r2
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	add.s r13, r3, r2
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	loads.w r4, 0(r18)
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	loads.w r3, 0(r13)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	and r4, r4, r27
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	and r3, r3, r27
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	seteq r11, r4, zero
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	seteq r19, r4, r23
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	seteq r7, r3, r23
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	seteq r24, r3, zero
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	and r4, r7, r11
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	and r7, r24, r19
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r19, r28, r2
	lui r11, 523264
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	or r3, r3, r4
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r3, zero, .LBB0_972
# %bb.971:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_972:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	loads.w r3, 4(r13)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r16, r3, zero
	seteq r12, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r12, r16, r12
	lui r24, 523264
	or r4, r4, r12
	or r3, r3, r4
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r3, zero, .LBB0_974
# %bb.973:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_974:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	loads.w r3, 8(r13)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r12, r3, r23
	seteq r26, r3, zero
	seteq r16, r4, zero
	seteq r17, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r12, r16
	and r12, r26, r17
	or r4, r4, r12
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r3, zero, .LBB0_976
# %bb.975:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_976:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	loads.w r3, 12(r13)
	loads.w r12, 12(r18)
	and r3, r3, r27
	and r12, r12, r27
	seteq r13, r3, r23
	seteq r18, r3, zero
	seteq r16, r12, zero
	seteq r17, r12, r23
	max.u r3, r3, r12
	setlt.u r3, r23, r3
	and r12, r13, r16
	and r13, r18, r17
	or r12, r12, r13
	or r3, r3, r12
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	bneq r3, zero, .LBB0_969
# %bb.977:                              # %vector.body236
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_969
.LBB0_978:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1186 7 is_stmt 1              # parallel-rne.mlir:1186:7
	mfence { sm }
.LBB0_979:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1221 7                        # parallel-rne.mlir:1221:7
	core_id r2
	addli r3, zero, 6
	bneq r2, r3, .LBB0_1008
# %bb.980:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	.loc	1 1221 7                        # parallel-rne.mlir:1221:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_982
.LBB0_981:                              # %middle.block227
                                        #   in Loop: Header=BB0_982 Depth=2
	.loc	1 1228 9 is_stmt 1              # parallel-rne.mlir:1228:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_1007
.LBB0_982:                              # %.preheader92
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_999 Depth 3
                                        #       Child Loop BB0_985 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1229 11 is_stmt 1             # parallel-rne.mlir:1229:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_997
# %bb.983:                              # %scalar.ph219.preheader
                                        #   in Loop: Header=BB0_982 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[18:19], zero
	j .LBB0_985
.LBB0_984:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	setlt.ul r3, r[18:19], r[14:15]
	.loc	1 1251 13 is_stmt 1             # parallel-rne.mlir:1251:13
	add.s r2, r22, r2
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	stores.w r7, 0(r2)
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	beq r3, zero, .LBB0_981
.LBB0_985:                              # %scalar.ph219
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_982 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	add.ul r[2:3], r[18:19], r[16:17]
	lui r7, 523264
	lui r11, 523264
	slli r2, r2, 2
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	add.s r3, r10, r2
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.s r4, r28, r2
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	loads.w r3, 0(r3)
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	loads.w r20, 0(r4)
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	and r4, r3, r27
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r4, r23, .LBB0_987
# %bb.986:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_987:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r9, r3, r27
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r9, zero, .LBB0_995
# %bb.988:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	lui r20, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r4, zero, .LBB0_996
.LBB0_989:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	beq r9, r23, .LBB0_991
.LBB0_990:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_991:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	setlt.u r3, r23, r4
	lui r4, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r3, zero, .LBB0_993
# %bb.992:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r20, 0
.LBB0_993:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	setlt.u r3, r23, r9
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r3, zero, .LBB0_984
# %bb.994:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r4, 0
	j .LBB0_984
.LBB0_995:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	lui r20, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r4, zero, .LBB0_989
.LBB0_996:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r9, r23, .LBB0_990
	j .LBB0_991
.LBB0_997:                              # %vector.body221.preheader
                                        #   in Loop: Header=BB0_982 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_999
.LBB0_998:                              # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 1229 11 is_stmt 1             # parallel-rne.mlir:1229:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	add.s r2, r22, r2
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	seteq.d r3, r[20:21], r[5:6]
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	stores.w r9, 12(r2)
	stores.w r4, 8(r2)
	stores.w r24, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1229 11                       # parallel-rne.mlir:1229:11
	bneq r3, zero, .LBB0_981
.LBB0_999:                              # %vector.body221
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_982 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	add.ul r[2:3], r[20:21], r[16:17]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	add.s r18, r10, r2
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	add.s r11, r3, r2
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	loads.w r4, 0(r18)
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	loads.w r3, 0(r11)
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	and r4, r4, r27
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	and r3, r3, r27
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	seteq r9, r4, zero
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	seteq r19, r4, r23
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	seteq r7, r3, r23
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	seteq r24, r3, zero
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	and r4, r7, r9
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	and r7, r24, r19
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.s r19, r28, r2
	lui r9, 523264
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	or r4, r4, r7
	lui r7, 523264
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	or r3, r3, r4
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r3, zero, .LBB0_1001
# %bb.1000:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_1001:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	loads.w r3, 4(r11)
	loads.w r4, 4(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r24, r3, r23
	seteq r12, r3, zero
	seteq r8, r4, r23
	seteq r26, r4, zero
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r24, r26
	and r8, r12, r8
	lui r24, 523264
	or r4, r4, r8
	or r3, r3, r4
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r3, zero, .LBB0_1003
# %bb.1002:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 4(r19)
.LBB0_1003:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	loads.w r3, 8(r11)
	loads.w r4, 8(r18)
	and r3, r3, r27
	and r4, r4, r27
	seteq r8, r3, r23
	seteq r26, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r8, r12
	and r8, r26, r13
	or r4, r4, r8
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r3, zero, .LBB0_1005
# %bb.1004:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r19)
.LBB0_1005:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	loads.w r3, 12(r11)
	loads.w r8, 12(r18)
	and r3, r3, r27
	and r8, r8, r27
	seteq r11, r3, r23
	seteq r18, r3, zero
	seteq r12, r8, zero
	seteq r13, r8, r23
	max.u r3, r3, r8
	setlt.u r3, r23, r3
	and r8, r11, r12
	and r11, r18, r13
	or r8, r8, r11
	or r3, r3, r8
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	bneq r3, zero, .LBB0_998
# %bb.1006:                             # %vector.body221
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_998
.LBB0_1007:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1221 7 is_stmt 1              # parallel-rne.mlir:1221:7
	mfence { sm }
.LBB0_1008:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 1256 7 is_stmt 1              # parallel-rne.mlir:1256:7
	store.d r[2:3], -472(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 7
	bneq r2, r3, .LBB0_1037
# %bb.1009:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -532(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1011
.LBB0_1010:                             # %middle.block
                                        #   in Loop: Header=BB0_1011 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[3:4], -456(r30)                # 8-byte Folded Reload
	.loc	1 1263 9 is_stmt 1              # parallel-rne.mlir:1263:9
	setlt.ul r2, r[3:4], r[14:15]
	addli.d r[3:4], r[3:4], 1
	beq r2, zero, .LBB0_1036
.LBB0_1011:                             # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1028 Depth 3
                                        #       Child Loop BB0_1014 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r2
	.loc	1 1264 11 is_stmt 1             # parallel-rne.mlir:1264:11
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1026
# %bb.1012:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1011 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1014
.LBB0_1013:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	setlt.ul r3, r[7:8], r[14:15]
	.loc	1 1286 13 is_stmt 1             # parallel-rne.mlir:1286:13
	add.s r2, r22, r2
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	stores.w r9, 0(r2)
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	beq r3, zero, .LBB0_1010
.LBB0_1014:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1011 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.ul r[2:3], r[7:8], r[16:17]
	lui r9, 523264
	lui r19, 523264
	slli r2, r2, 2
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	add.s r3, r10, r2
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	add.s r4, r28, r2
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	loads.w r3, 0(r3)
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	loads.w r20, 0(r4)
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	and r11, r3, r27
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	beq r11, r23, .LBB0_1016
# %bb.1015:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_1016:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r2
	loads.w r3, 0(r3)
	and r18, r3, r27
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	beq r18, zero, .LBB0_1024
# %bb.1017:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r11, zero, .LBB0_1025
.LBB0_1018:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	beq r18, r23, .LBB0_1020
.LBB0_1019:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1020:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	setlt.u r3, r23, r11
	lui r11, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r3, zero, .LBB0_1022
# %bb.1021:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_1022:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	setlt.u r3, r23, r18
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r3, zero, .LBB0_1013
# %bb.1023:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_1013
.LBB0_1024:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	lui r20, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	beq r11, zero, .LBB0_1018
.LBB0_1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1014 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r18, r23, .LBB0_1019
	j .LBB0_1020
.LBB0_1026:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1011 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[18:19], -472(r30)              # 8-byte Folded Reload
	j .LBB0_1028
.LBB0_1027:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	.loc	1 1264 11 is_stmt 1             # parallel-rne.mlir:1264:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	add.s r2, r22, r2
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	seteq.d r3, r[18:19], r[5:6]
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	stores.w r11, 12(r2)
	stores.w r9, 8(r2)
	stores.w r8, 4(r2)
	stores.w r7, 0(r2)
	.loc	1 1264 11                       # parallel-rne.mlir:1264:11
	bneq r3, zero, .LBB0_1010
.LBB0_1028:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1011 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.ul r[2:3], r[18:19], r[16:17]
	slli r2, r2, 2
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	add.s r21, r10, r2
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.s r20, r3, r2
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	loads.w r7, 0(r21)
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	loads.w r3, 0(r20)
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	and r7, r7, r27
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	and r3, r3, r27
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	seteq r9, r7, zero
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	seteq r11, r7, r23
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	seteq r8, r3, r23
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	seteq r24, r3, zero
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	max.u r3, r3, r7
	setlt.u r3, r23, r3
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r7, r8, r9
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	and r8, r24, r11
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	add.s r24, r28, r2
	lui r11, 523264
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	or r7, r7, r8
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	or r3, r3, r7
	lui r7, 523264
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r3, zero, .LBB0_1030
# %bb.1029:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r24)
.LBB0_1030:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	loads.w r3, 4(r20)
	loads.w r8, 4(r21)
	and r3, r3, r27
	and r8, r8, r27
	seteq r9, r3, r23
	seteq r12, r3, zero
	seteq r4, r8, r23
	seteq r26, r8, zero
	max.u r3, r3, r8
	setlt.u r3, r23, r3
	and r8, r9, r26
	and r4, r12, r4
	or r4, r8, r4
	lui r8, 523264
	or r3, r3, r4
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r3, zero, .LBB0_1032
# %bb.1031:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 4(r24)
.LBB0_1032:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	loads.w r3, 8(r20)
	loads.w r4, 8(r21)
	and r3, r3, r27
	and r4, r4, r27
	seteq r9, r3, r23
	seteq r26, r3, zero
	seteq r12, r4, zero
	seteq r13, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r9, r12
	and r9, r26, r13
	or r4, r4, r9
	lui r9, 523264
	or r3, r3, r4
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r3, zero, .LBB0_1034
# %bb.1033:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r24)
.LBB0_1034:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	loads.w r3, 12(r20)
	loads.w r4, 12(r21)
	and r3, r3, r27
	and r4, r4, r27
	seteq r12, r3, r23
	seteq r21, r3, zero
	seteq r13, r4, zero
	seteq r20, r4, r23
	max.u r3, r3, r4
	setlt.u r3, r23, r3
	and r4, r12, r13
	and r12, r21, r20
	or r4, r4, r12
	or r3, r3, r4
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	bneq r3, zero, .LBB0_1027
# %bb.1035:                             # %vector.body
                                        #   in Loop: Header=BB0_1028 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r24)
	j .LBB0_1027
.LBB0_1036:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1256 7 is_stmt 1              # parallel-rne.mlir:1256:7
	mfence { sm }
.LBB0_1037:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1291 7                        # parallel-rne.mlir:1291:7
	addli r2, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r20
	.loc	1 1291 7                        # parallel-rne.mlir:1291:7
	csr_set csr5, r2
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	addli r2, zero, 3
	.loc	1 1291 7                        # parallel-rne.mlir:1291:7
	sync_core
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	beq r20, r2, .LBB0_5
# %bb.1038:                             # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r21, zero, 64
	addli r15, zero, 1
	addli r28, zero, 2
	addli r11, zero, 4
	.loc	1 1303 7 is_stmt 1              # parallel-rne.mlir:1303:7
	bneq r20, zero, .LBB0_7
# %bb.1039:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -580(r30)                 # 4-byte Folded Reload
	load.d r[9:10], -472(r30)               # 8-byte Folded Reload
	.loc	1 1303 7                        # parallel-rne.mlir:1303:7
	load.d r[7:8], -576(r30)                # 8-byte Folded Reload
	addli r4, zero, 19
	addli r12, zero, 5
	load.d r[13:14], 24(r30)
	sext_int2long r[2:3], r2
	sll.d r[7:8], r[7:8], r4
	addli r4, zero, 17
	min.sl r[9:10], r[2:3], r[9:10]
	xwait r4, 0
	lock zero, r12
	add.ul r[7:8], r[13:14], r[7:8]
	addli.d r[9:10], r[9:10], 128
	max.sl r[9:10], r[9:10], r[2:3]
	sub.sl r[2:3], r[9:10], r[2:3]
	load.d r[9:10], -568(r30)               # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	.loc	1 1299 13 is_stmt 1             # parallel-rne.mlir:1299:13
	min.sl r[2:3], r[2:3], r[5:6]
	.loc	1 1303 7                        # parallel-rne.mlir:1303:7
	load.d r[4:5], -592(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[7:8], r[9:10]
	slli r4, r4, 2
	dma_cfg r8, zero, zero, 2
	addli r5, zero, 4096
	dma_cfg r7, r22, r4, 3
	addli r4, zero, 512
	dma_cfg r5, r4, r2, 4
	addli r2, zero, 18
	dma_run zero
	unlock r12
	j .LBB0_6
.LBB0_1040:                             # %._crit_edge
	.loc	1 1305 5                        # parallel-rne.mlir:1305:5
	xsignal zero, 0
	bneq r20, zero, .LBB0_1042
# %bb.1041:
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
.LBB0_1042:
	.loc	1 1306 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1306:5
	addli sp, sp, 640
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
	.long	704                             # 0x2c0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-fbcdpuet" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
